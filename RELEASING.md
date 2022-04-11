- [Overview](#overview)
- [Branching](#branching)
  - [OpenSearch Branching](#opensearch-branching)
  - [Plugin Branching](#plugin-branching)
  - [Feature Branches](#feature-branches)
- [Versioning](#versioning)
  - [Version Numbers](#version-numbers)
  - [Incrementing Versions](#incrementing-versions)
- [Tagging](#tagging)
- [Releasing](#releasing)
  - [Release Labels](#release-labels)
  - [Release Schedule](#release-scheduling)
  - [Release Schedule Date Definitions](#release-schedule-date-definitions)
  
- [Backporting](#backporting)

## Overview

This document explains the release strategy for artifacts in this organization.

## Branching

Projects create a new branch when they need to start working on 2 separate versions of the product, with the `main` branch being the furthermost release. 

### OpenSearch Branching

[OpenSearch](https://github.com/opensearch-project/OpenSearch) typically tracks 3 releases in parallel. For example, given the last major release of 1.0, OpenSearch in this organization maintains the following active branches.

* **main**: The _next major_ release, currently 2.0. This is the branch where all merges take place, and code moves fast.
* **1.x**: The _next minor_ release, currently 1.1. Once a change is merged into `main`, decide whether to backport it to `1.x`.
* **1.0**: The _current_ release, currently 1.0. In between minor releases, only hotfixes (e.g. security) are backported to `1.0`. The next release out of this branch will be 1.0.1.

Label PRs with the next major version label (e.g. `2.0.0`) and merge changes into `main`. Label PRs that you believe need to be backported as `1.x` and `1.0`. Backport PRs by checking out the versioned branch, cherry-pick changes and open a PR against each target backport branch.

### Plugin Branching

Plugins, such as [job-scheduler](https://github.com/opensearch-project/job-scheduler) aren't as active as OpenSearch, and typically track 2 releases in parallel instead of 3. This still translates into 3 branches. For example, given the last major release of 1.0, job-scheduler maintains the following.

* **main**: The _next_ release, currently 1.1. This is the branch where all merges take place, and code moves fast.
* **1.x**: A common parent branch for the series of 1.x releases. This is where 1.x patches will be made when `main` becomes 2.0.
* **1.0**: The _current_ release, currently 1.0. This branch's parent is `1.x` to make future merges easier. 'In between minor releases, only hotfixes (e.g. security) are backported to `1.0`. The next release out of this branch will be 1.0.1.

### Feature Branches

Do not creating branches in the upstream repo, use your fork, for the exception of long lasting feature branches that require active collaboration from multiple developers. Name feature branches `feature/<thing>`. Once the work is merged to `main`, please make sure to delete the feature branch.

## Versioning

OpenSearch versioning [follows semver](https://opensearch.org/blog/technical-post/2021/08/what-is-semver/). 

### Version Numbers

The build number of the engine is 3-digit `major.minor.patch` (e.g. `1.1.0`), while plugins use 4 digits (`1.1.0.45`). See [OpenSearch#1093](https://github.com/opensearch-project/OpenSearch/issues/1093) for a proposal to remove this difference. 

### Incrementing Versions

Versions are incremented as soon as development starts on a given version to avoid confusion. In the examples above versions are as follows.

* OpenSearch: `main` = 2.0.0, `1.x` = 1.1.0, and `1.0` = 1.0.0
* job-scheduler: `main` = 1.1.0.0, `1.0` = 1.0.0.0

## Tagging

Create tags after a release that match the version number, `major.minor.patch`, without a `v` prefix.

* [OpenSearch tags](https://github.com/opensearch-project/OpenSearch/tags): [1.0.0](https://github.com/opensearch-project/OpenSearch/releases/tag/1.0.0)
* [job-scheduler tags](https://github.com/opensearch-project/job-scheduler/tags): [1.0.0.0](https://github.com/opensearch-project/job-scheduler/releases/tag/1.0.0.0)

For a discussion on whether to add a prefixing `v` to release tags, see [#35](https://github.com/opensearch-project/.github/issues/35).  

## Releasing

### Release Labels

Repositories create consistent release labels, such as `v1.0.0`, `v1.1.0` and `v2.0.0`, as well as `patch` and `backport`. Use release labels to target an issue or a PR for a given release. See [MAINTAINERS](MAINTAINERS.md#triage-open-issues) for more information on triaging issues.

## Release Scheduling

Because OpenSearch currently releases as a bundle, the OpenSearch release process is centralized and has several steps along the way.  As the first step in this release process, the Engineering Effectiveness team creates a release ticket in the [opensearch-build repo](https://github.com/opensearch-project/opensearch-build) and assigns it to an overall release manager (example: [2.0 release ticket](https://github.com/opensearch-project/opensearch-build/issues/1650)).  The team also creates individual release issues per repo with what's expected to go in that release. If you have a question about a release, you can always comment on a release issue using @opensearch-project/engineering-effectiveness.  

### Release Schedule Date Definitions

#### Feature Freeze
All code changes that add new capabilities to OpenSearch need to be merged to "main" and backported to the planned release. Additional merges/backports can happen for bugs fixes and CVEs.

#### Code Freeze
This is date where we expect everything is working and there are no known issues.  Freezing the code before the release date gives us a chance to perform long-running performance tests and do other final verifications.  No more changes can be merged to the release branch after this point except for fixes to blocking bugs.  This generally happens 1 week before the release date for minor versions.

#### Release Date
Artifacts are made available on opensearch.org or other sources like NPM.

For 2022 we're tracking the overall release dates for OpenSearch [in the forums](https://opensearch.org/blog/partners/2022/02/roadmap-proposal/). 


## Day of Release Activities
Once we reach the Release Date, the following things happen:
1. Two candidate bundle builds for OpenSearch and OpenSearch Dashboards, produced by [bundle-workflow](https://github.com/opensearch-project/opensearch-build/blob/main/bundle-workflow/README.md), are chosen as release candidates. Those artifacts have successful end-to-end integration, backwards-compatibility and performance tests, and are signed.
2. Staged maven artifacts are promoted to Maven Central.
3. Bundles and -min artifacts are published to [opensearch.org](https://opensearch.org/downloads.html).

## Backporting

This project follows [semantic versioning](https://semver.org/spec/v2.0.0.html). Backwards-incompatible changes always result in a new major version and will __never__ be backported. Small improvements and features will be backported to a new minor version (e.g. `1.1`). Security fixes will be backported to a new patch version (e.g. `1.0.1`).

Here are the commands we typically run to backport changes to release branches:

1. Checkout the target release branch and pull the latest changes from `upstream`. In the examples below, our target release branch is `1.x`.

```
git checkout 1.x
git pull upstream 1.x
```

2. Create a local branch for the backport. A convenient naming convention is _backport-\[PR-id\]-\[target-release-branch\]_.

```
git checkout -b backport-pr-xyz-1.x
```

3. Cherry-pick the commit to backport. Remember to include [DCO signoff](CONTRIBUTING.md#developer-certificate-of-origin).

```
git cherry-pick <commit-id> -s
```

4. Push the local branch to your fork.

```
git push origin backport-pr-xyz-1.x
```

5. Create a pull request for the change.