- [Overview](#overview)
- [Current Admins](#current-admins)
- [Admin Permissions](#admin-permissions)
  - [Prioritize Security](#prioritize-security)
  - [Enforce Code of Conduct](#enforce-code-of-conduct)
  - [Add/Remove Maintainers](#addremove-maintainers)
  - [Adopt Organizational Practices](#adopt-organizational-practices)
- [New Repos](#new-repos)

## Overview

This document outlines the role and responsibilities of the administrators for the [opensearch-project](https://github.com/opensearch-project/) GitHub organization.

The administrators are members of the [GitHub admin team](https://github.com/orgs/opensearch-project/teams/admin), which grants them administrative permissions across all repositories within the [opensearch-project](https://github.com/opensearch-project/) organization. This team includes individuals who were instrumental in the creation of the OpenSearch fork and those who currently manage the organization-wide infrastructure, such as the public [CI/CD](https://build.ci.opensearch.org/).

If you're interested in becoming a maintainer, see [MAINTAINERS](MAINTAINERS.md). If you're interested in contributing, see [CONTRIBUTING](CONTRIBUTING.md).

## Current Admins

For the current list of admins, please directly refer to the [admin team page](https://github.com/orgs/opensearch-project/teams/admin).

## Admin Permissions

Admins are granted [admin-level permissions](https://docs.github.com/en/organizations/managing-access-to-your-organizations-repositories/repository-permission-levels-for-an-organization) across all repositories in the `opensearch-project` organization. These privileges should be utilized to serve the project community and protect the repositories as follows:

### Prioritize Security

Security is your number one priority. Manage security keys and safeguard access to the repository.

Note that this repository is monitored and supported 24/7 by OpenSearch Security Team, see [Security Issue Response Process](SECURITY.md) for details.

### Enforce Code of Conduct

Act on [CODE_OF_CONDUCT](CODE_OF_CONDUCT.md) violations by revoking access, and blocking malicious actors.

### Add/Remove Maintainers

Perform administrative tasks, such as [adding](RESPONSIBILITIES.md#adding-a-new-maintainer) and [removing maintainers](RESPONSIBILITIES.md#removing-a-maintainer).

Please note that maintainers typically do not have admin-level permissions in their repos in this organization. Admin-level permissions allow for sensitive and destructive actions, such as managing security, or deleting a repository. Therefore, admin access in `opensearch-project` was designed to be deliberately centralized in ways that requires that two people to make any one sensitive change.If you need to perform an admin function, such as adding or removing a maintainer, please [follow the maintainer nomination process](RESPONSIBILITIES.md#becoming-a-maintainer), then ask to effect permissions by opening a issue in [.github](https://github.com/opensearch-project/.github) repo. One of the admins will review and help facilitate this change for you. One of the admins will review and help facilitate this change for you.

### Adopt Organizational Practices

Adopt organizational practices documented in this repo, work in the open, and collaborate with other admins by opening issues before making process changes. Prefer consistency, and avoid diverging from practices in the `opensearch-project` organization.

## New Repos

There are currently two ways new repositories may appear in the `opensearch-project` organization: creating a new repository and adopting it, or moving a repository from outside of the organization into it. The process is same.

The [OpenSearch Software Foundation](https://foundation.opensearch.org/), a project of The Linux Foundation owns and manages the `opensearch-project` organization, and has permissions to create a new repository. While the admins have admin-level permissions, they do not have permissions to create new repositories or move repositories into the organization. If you wish to create a repository in this organization, or move a repository into `opensearch-project`, please contact one of the admins via the [#admin-requests](https://opensearch.slack.com/archives/C051CKVFB2A) channel on the public Slack.

All new repositories inside `opensearch-project` must follow the [Security Issue Response Process](SECURITY.md), and therefore require [OpenSearch Security Response Team](SECURITY.md#security-response-team-srt) to be engaged when necessary. 

While the `opensearch-project` organization has adopted [opensearch-plugin-template-java](https://github.com/opensearch-project/opensearch-plugin-template-java), or [opensearch-project/opensearch-learning-to-rank-base](https://github.com/opensearch-project/opensearch-learning-to-rank-base) in the past, we generally encourage you to start and run with your open-source project outside of the organization, and only consider making it part of it when you wish to include your already very popular component or tool in the "official" distribution. To request moving a repo into this organization, please open a proposal in your repo, have repo maintainers confirm they wish to move, and engage admins via the [#admin-requests channel on the public Slack](https://opensearch.slack.com/archives/C051CKVFB2A).
