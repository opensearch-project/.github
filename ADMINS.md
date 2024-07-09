- [Overview](#overview)
- [Current Admins](#current-admins)
- [Admin Permissions](#admin-permissions)
  - [Prioritize Security](#prioritize-security)
  - [Enforce Code of Conduct](#enforce-code-of-conduct)
  - [Add/Remove Maintainers](#addremove-maintainers)
  - [Adopt Organizational Practices](#adopt-organizational-practices)
- [New Repos](#new-repos)

## Overview

This document explains who the admins are (see below), what they do in opensearch-project, and how they should be doing it. These individuals are members of an "admin" GitHub team that is given Admin-level permissions to every repository in opensearch-project organization. These are individuals that worked on creating the OpenSearch fork, and those that currently support the organization-wide infrastructure, such as the public [CI/CD](https://build.ci.opensearch.org/).

If you're interested in becoming a maintainer, see [MAINTAINERS](MAINTAINERS.md). If you're interested in contributing, see [CONTRIBUTING](CONTRIBUTING.md).

## Current Admins

| Admin              | GitHub ID                                           | Affiliation |
|--------------------| --------------------------------------------------- | ----------- |
| Daniel Doubrovkine | [dblock](https://github.com/dblock)                 | Amazon      |
| Rishabh Singh      | [rishabh6788](https://github.com/rishabh6788)       | Amazon      |
| Prudhvi Godithi    | [prudhvigodithi](https://github.com/prudhvigodithi) | Amazon      |
| Sayali Gaikawad    | [gaiksaya](https://github.com/gaiksaya)             | Amazon      |
| Peter Zhu          | [peterzhuamazon](https://github.com/peterzhuamazon) | Amazon      |
| Zelin Hao          | [zelinh](https://github.com/CEHENKLE)               | Amazon      |

## Admin Permissions

Admins have [admin-level permissions on a repository](https://docs.github.com/en/organizations/managing-access-to-your-organizations-repositories/repository-permission-levels-for-an-organization). Use those privileges to serve the community and protect the repository as follows.

### Prioritize Security

Security is your number one priority. Manage security keys and safeguard access to the repository.

Note that this repository is monitored and supported 24/7 by Amazon Security, see [Reporting a Vulnerability](SECURITY.md) for details.

### Enforce Code of Conduct

Act on [CODE_OF_CONDUCT](CODE_OF_CONDUCT.md) violations by revoking access, and blocking malicious actors.

### Add/Remove Maintainers

Perform administrative tasks, such as [adding](RESPONSIBILITIES.md#adding-a-new-maintainer) and [removing maintainers](RESPONSIBILITIES.md#removing-a-maintainer).

Please note that maintainers typically do not have admin-level permissions in their repos in this organization. Admin-level permissions allow for sensitive and destructive actions, such as managing security, or deleting a repository. Therefore, admin access in opensearch-project was designed to be deliberately centralized in ways that requires that two people to make any one sensitive change. If you need to perform an admin function, such as adding or removing a maintainer, please [follow the maintainer nomination process](RESPONSIBILITIES.md#becoming-a-maintainer), then ask to effect permissions by tagging `@admin` in your pull request, or the [#maintainers channel on the public Slack](https://opensearch.slack.com/archives/C05L60S4UBT). One of the above-mentioned admins will make this change for you.

### Adopt Organizational Practices

Adopt organizational practices documented in this repo, work in the open, and collaborate with other admins by opening issues before making process changes. Prefer consistency, and avoid diverging from practices in the opensearch-project rganization.

## New Repos

There are currently two ways new repositories may appear in the opensearch-project organization: creating a new repo and adopting, or moving a repo from outside of the organization into it. The process is the same.

The AWS Open Source Program Office (OSPO) currently owns and manages the opensearch-project organization, and has permissions to create a new repo. While the admins above have admin-level permissions, they do not have permissions to create new repositories or move repositories into the organization.

All new repositories inside opensearch-project follow the [security response process](SECURITY.md), and therefore require an Amazon team to be engaged when necessary. If you wish to create a repository in this organization, or move a repository into opensearch-project, please contact one of the above-mentioned admins via the [#maintainers channel on the public Slack](https://opensearch.slack.com/archives/C05L60S4UBT).

While the opensearch-project organization has adopted [opensearch-plugin-template-java](https://github.com/opensearch-project/opensearch-plugin-template-java), or [opensearch-project/opensearch-learning-to-rank-base](https://github.com/opensearch-project/opensearch-learning-to-rank-base) in the past, we generally encourage you to start and run with your open-source project outside of the organization, and only consider making it part of it when you wish to include your already very popular component or tool in the "official" distribution.
