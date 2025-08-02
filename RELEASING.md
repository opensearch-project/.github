- [Overview](#overview)
- [Branching](#branching)
  - [OpenSearch Distribution Branching](#opensearch-distribution-branching)
  - [Single Repo Artifacts Branching](#single-repo-artifacts-branching)
  - [Feature Branches](#feature-branches)
  - [Backporting](#backporting)
  - [Breaking Changes](#breaking-changes)
- [Versioning](#versioning)
  - [Version Numbers](#version-numbers)
    - [OpenSearch and OpenSearch Dashboards Version Numbers](#opensearch-and-opensearch-dashboards-version-numbers)
    - [Single Repo Version Numbers](#single-repo-version-numbers)
  - [Incrementing Versions](#incrementing-versions)
- [Releases](#releases)
  - [Major Releases](#major-releases)
  - [Minor Releases](#minor-releases)
  - [Patch Releases](#patch-releases)
- [Releasing](#releasing)
  - [OpenSearch Releases](#opensearch-releases)
    - [Release Process](#release-process)
    - [Release Schedule](#release-schedule)
    - [Release Window](#release-window)
      - [Entrance Criteria to Start Release Window](#entrance-criteria-to-start-release-window)
      - [Exit Criteria to Close Release Window](#exit-criteria-to-close-release-window)
  - [Other Projects](#other-projects)
  - [Tagging](#tagging)
  - [Release Labels](#release-labels)
  - [Changing Release Dates](#changing-release-dates)
  - [Requesting a Release](#requesting-a-release)
  - [Security Reviews](#security-reviews)

## Overview

This document explains the release strategy for artifacts in this organization, including large distributions, such as OpenSearch with OpenSearch Dashboards, and smaller distributions, such as clients.

## Branching

Projects create a new branch when they need to start working on 2 separate versions of the product, with the `main` branch being the furthermost release. 

### OpenSearch Distribution Branching

The OpenSearch distribution, including [OpenSearch](https://github.com/opensearch-project/OpenSearch), [OpenSearch Dashboards](https://github.com/opensearch-project/OpenSearch-Dashboards), and their plugins, track 2 releases in parallel. For example, given the last major release of 3.0, the repositories that make up the distribution maintain the following active branches.

* **main**: The _next minor_ release, currently 3.1. This is the branch where all merges take place.
* **2.19**: The _last minor_ release and the _next patch_ release. Any fix deemed appropriate for the next patch release of 2.19.x should be merged to this branch.

### Single Repo Artifacts Branching

Frequently released artifacts, such as most [clients](https://github.com/opensearch-project/opensearch-clients), follow a simpler branching model with the next release always living on `main` and no patch branches.

### Feature Branches

Do not creating branches in the upstream repo, use your fork, for the exception of long lasting feature branches that require active collaboration from multiple developers. Name feature branches `feature/<thing>`. Once the work is merged to `main`, please make sure to delete the feature branch.

### Backporting

High severity security or critical bug fixes will be backported to a new patch version (e.g. `2.19.1`). Repos in this organization typically use a backport workflow where you can label a PR, e.g. `backport 2.19`, and the workflow will attempt an automatic backport and open a new PR. If the backport fails, it is the contributor's responsibility to do a manual backport following the instructions in the failed backport error message.

### Breaking Changes

Because the `main` branch tracks the next minor version, we have no standardized place for merging breaking changes intended for the next major version. If an individual repository wishes to incubate breaking changes, then the feature branch strategy can be used to for these changes. Please see [this issue](https://github.com/opensearch-project/.github/issues/251) for the historical context of why we no longer use the `main` branch to track the next major version.

## Versioning

All distributions in this organization [follow SemVer](https://opensearch.org/blog/what-is-semver/). A user-facing breaking change can only be made in a major release. Any regression that breaks SemVer is considered a high severity bug.

### Version Numbers

#### OpenSearch and OpenSearch Dashboards Version Numbers

The build number of the engine is 3-digit `major.minor.patch` (e.g. `2.9.0`), while plugins use 4 digits (`2.9.0.45`). See [OpenSearch#1093](https://github.com/opensearch-project/OpenSearch/issues/1093) for a proposal to remove this difference. 

#### Single Repo Version Numbers

The version number of all releasable artifacts is 3-digit `major.minor.patch` (e.g. `2.9.0`).

### Incrementing Versions

Versions are incremented as soon as development starts on a given version to avoid confusion. In the examples above versions are as follows.

* OpenSearch: `main` = 3.0.0, `2.19` = 2.19.1
* job-scheduler: `main` = 3.0.0.0, `2.19` = 2.19.1.0

## Releases

### Major Releases

Major releases contain breaking changes, new features, and bug fixes. All artifacts released in this organization only do major releases when there are significant breaking changes ready for release that warrant a major upgrade. To avoid major upgrades we strive to build features in a backwards compatible way as much as possible, therefore it's common for a distribution to go multiple years without a major release.

For example, the OpenSearch bundle that contains OpenSearch and OpenSearch Dashboards releases new major versions after Lucene major version releases. This is announced in the forums at least 4 weeks prior to the release date. Once we become aware of the need for a major version, we start a major version release window which is similar to a minor release, except for two things: 1) participation is mandatory for all components, and 2) the release window is at least 4 weeks long to accommodate the testing required.

### Minor Releases

Minor releases for large distributions such as OpenSearch are scheduled on regular intervals, contain new features and bug fixes, and must not contain any breaking changes.

### Patch Releases

Patch releases are reserved for addressing high-severity CVEs, critical bug fixes (e.g., issues causing users to roll back after an upgrade), or significant regressions in non-experimental features (e.g., feature rendered unusable). These releases must not introduce any new features.

We follow [OpenSSF's best practices](https://bestpractices.coreinfrastructure.org/en/criteria/0?details=true&rationale=true#0.vulnerabilities_fixed_60_days) for patching publicly known vulnerabilities and we make sure that there are no unpatched vulnerabilities of medium or higher severity that have been publicly known for more than 60 days in our actively maintained versions.

Whether a fix qualifies as a critical bug should be proposed by the PR contributor or issue creator, and triaged by the maintainers of the repo with input from the community. The severity and impact of a bug in defining criticality of an issue can vary. For example, back-end APIs are fairly straightforward to triage, while a UX bug may prevent users from using a feature and may require some domain expertise to assess.

## Releasing

### OpenSearch Releases

See [Releasing OpenSearch](https://github.com/opensearch-project/opensearch-build/blob/main/README.md#releasing-opensearch) for the standard operating procedures of making an OpenSearch release.

#### Release Process

OpenSearch uses a "release-train" model. For minor version, that train leaves approximately every six weeks we release a new minor version which includes all the new features and fixes that are ready to go. Having a set release schedule makes sure OpenSearch is releasing in a predictable way and prevents a backlog of unreleased changes.

#### Release Schedule

At the beginning of every year, the project will publish on [opensearch.org](https://opensearch.org/releases.html) the "release windows start" dates for the year for all the large distributions, including OpenSearch. These dates will be spaced out ~6 weeks.

#### Release Window

On release window start date:

1. We generate the first release candidate with all plug-ins/components that have met the entrance criteria. If a plug-in/component hasn't met all of the criteria, we'll version bump the last released version and release that. Once the release window opens and the first candidate is generated, no additional features can be added, and we will not delay the start of a release window for any plug-in/component.
2. During the release window we will conduct final quality testing, documentation updates and performance testing. Bug fixes can be added in during this time, but no new features will be included.
3. We will generate a new release candidate every day and post on the release issue about the status of the exit criteria. When all the exit criteria have been met, we'll announce that the candidate is ready and release it 2 days later (unless that falls on Friday, in which case we'll release on Monday).
4. If we cannot clear the exit criteria within 2 weeks from the start of the window (1 week for patch releases), we will cancel that release window and try again in the next window.

Please note: this process is for regularly scheduled minor and patch releases. For "hot" patches (patches required for security or other urgent issues) we will build, test and release as quickly as possible.

##### Entrance Criteria to Start Release Window

* Each component release issue has an assigned owner.
* Documentation draft PRs are up and in tech review for all component changes.
* Sanity testing is done for all components.
* Code coverage has not decreased (all new code has tests).
* Release notes are ready and available for all components.
* Roadmap is up-to-date (information is available to create release highlights).
* Release ticket is cut, and there's a forum post announcing the start of the window.
* [Any necessary security reviews](#Security-Reviews) are complete. 

##### Exit Criteria to Close Release Window

* Performance tests are run, results are posted to the release ticket and there no unexpected regressions
* Documentation has been fully reviewed and signed off by the documentation community.
* All integration tests are passing
* Release blog is ready

### Other Projects

Look for a RELEASING.md file in each repo, e.g. [opensearch-java/RELEASING.md](https://github.com/opensearch-project/opensearch-java/blob/main/RELEASING.md). This is typically a [1-click release process](https://github.com/opensearch-project/opensearch-build/blob/main/ONBOARDING.md#onboarding-to-universal--1-click-release-process) in which a maintainer pushes a tag to the repo, followed by automation performing the actual release.

### Tagging

Create tags after a release that match the version number, `major.minor.patch`, without a `v` prefix.

* [OpenSearch tags](https://github.com/opensearch-project/OpenSearch/tags): [1.0.0](https://github.com/opensearch-project/OpenSearch/releases/tag/1.0.0)
* [job-scheduler tags](https://github.com/opensearch-project/job-scheduler/tags): [1.0.0.0](https://github.com/opensearch-project/job-scheduler/releases/tag/1.0.0.0)

For a discussion on whether to add a prefixing `v` to release tags, see [#35](https://github.com/opensearch-project/.github/issues/35).

### Release Labels

Repositories create consistent release labels, such as `v2.9.0`, `v1.0.0`, `v1.1.0` and `v2.0.0`, as well as `patch` and `backport`. Use release labels to target an issue or a PR for a given release. See [MAINTAINERS](MAINTAINERS.md#triage-open-issues) for more information on triaging issues.

### Changing Release Dates

For large distributions such as OpenSearch, we strive for consistent and predictable release schedule as multiple organizations and users depend on the software for their own projects and businesses. However, sometimes a release date needs to move to accommodate engineering delays in critical components that affect the key properties of the software such as performance, reliability, availability, or security. In order to move a release date, we will ensure:

* There is a publicly documented justification for moving the release date.
* The justification is circulated 2 weeks or more prior to the original release date.
* The organization coordinating the release is in favor of moving the release date.
* The leadership committee has voted to move the release date with a simple majority.

### Requesting a Release

Smaller distributions, such as clients, release as often as possible. If you see changes that have not been released and you need a release, please open an issue titled "Release v. Next" in the corresponding repo, e.g. [opensearch-java#1093](https://github.com/opensearch-project/opensearch-java/issues/1093).

### Security Reviews 

If you discover a potential security issue in this project we ask that you notify the OpenSearch Security Team by email at security@opensearch.org. Please do not create a public GitHub issue. See [SECURITY.md](SECURITY.md) for more information on the security response process.

The OpenSearch Project currently performs security reviews before releasing signed artifacts. These are typically conducted for any of the following:

* Releases from a new GitHub repository, such as a new plugin or extension, client, or tool. 
* Major new features added to an existing application, including significant UX or API changes. 
* Changes to authentication, authorization, cryptography, or other security-impacting functions. 
* New software or infrastructure deployed to support the project, such as CI/CD. 
* New 3rd-party providers or vendors being used by the project. 

The review process consists of building a threat model for the proposed change and optionally engaging a specialist to perform additional testing, such as a penetration testing. This process is done in parallel and in private within the project, during development, and usually takes 4-10 weeks. A repository maintainer will assess the scope of the new changes, initiate and manage a security review, provide public updates, and, if needed, communicate privately by email with the contributors. Please add a note in your pull request if you believe a security review is warranted. 

Please see [opensearch-project/.github#81](https://github.com/opensearch-project/.github/issues/81) for a discussion on improving this and other security-related processes.​
