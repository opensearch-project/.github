# Streamlining the feature proposal process for OpenSearch

## Introduction:

OpenSearch is a fast-growing community-contributed project and currently has around 600+ contributors contributing to 110+ public GitHub repositories on a day to day basis. Open source contributions can take various forms, such as: Code contributions: writing, modifying, or optimizing source code to add new features, fix bugs, or improve performance.

This document will focus on streamlining the feature proposal process for OpenSearch. Currently the contributors who are interested in developing a feature create a GitHub proposal on the respective repository and submit it for community review. The maintainers of the repo reviews the proposal along with the community in a public forum and provide their inputs as needed.

Even though OpenSearch has a standardized GitHub proposal [template](https://github.com/opensearch-project/.github/blob/main/.github/ISSUE_TEMPLATE/PROPOSAL_TEMPLATE.md), it doesn’t always suit the needs of the requester hence the feature requester tends to create a proposal that adheres to their needs. The proposal is also used as a placeholder for capturing discussions, reviewing design, tracking the tasks spanning across multiple versions, discussing open questions thereby creating ambiguity on the finalized scope of the tasks associated with a feature pertaining to specific release.

## Goal:

The goal of this document is to establish a seamless process for submitting a feature proposal that underlies the OpenSearch project’s commitment to the following principles of development:
- Open source like we mean it
- A level playing field
- Made with your input
- Open to contribution

When successful, this new process will provide:
- Simplicity in suggesting and adding features
- Assurances to contributors that their contributions will be evaluated
- A trackable format that can be centralized for at-a-glance, project-wide proposals
- Clear ability to track a feature at release version granularity
- Open communication and discussion on upcoming features
- Clear workflows for maintainers

## Feature proposal process:

The feature proposal is an issue filed on a repo in OpenSearch which outlines the statement of the problem (technical design is not needed).The issue doesn’t have to contain implementation or design details but it's recommended to include ideas of possible fixes. The primary goal is to brainstorm the solutions along with the community beginning from this feature proposal phase. The issue is tagged “[feature-proposal]” and each repo should have their own template or a fallback on a standard feature proposal template. The maintainers will triage the feature proposal and ask follow-up questions as needed. The maintainer’s job is to determine if the proposal meets the end-result criteria:
- is a feature,
- fits in the scope of the repo and project,
- is sufficiently distinct from existing features,
- doesn’t overlap or conflict with ongoing work,
- is sufficiently atomic as a feature.

The feature proposal should be filed in the idea stage before appreciable work begins and should be the initial review, allowing for community to voice opinions. This provides maximum transparency and involvement across organizational boundaries.

The process starts with an issue on the repo that you think fits the feature best. In short, the feature proposal issue should describe the end-state of the feature. Each repo now has a template for feature proposals that ask a number of questions relevant to establishing if pursuing the feature is in the best interest of the project. Make sure you fill out the proposal issue template completely as all questions are required.

From this point, the maintainers will engage you on the feature proposal in the issue comments. The goal of this conversation is to clarify if the feature proposal meets the criteria of a new feature in the project. An additional goal is to determine if this is something that you, as the submitter, can contribute yourself or if you’ll need assistance from additional contributors.

The criteria to continue with a feature proposal are as follows:

- ___Is the proposal describing a feature?__
 The feature proposal isn’t meant for bug fixes, refactoring, or refinement to existing features. Sometimes this line can be fuzzy so the maintainers will help clarify.
- __Does this feature fit in the scope of the repo and project?__
Some things might be good ideas but they might not fit either with the project as a whole in the specific repo in which the issue was posted. In the latter case, the maintainers will help you determine the right home and transfer the issue.
- __Is the proposed feature sufficiently distinct from existing features?__
With a project like OpenSearch it’s totally normal to not know every capability, so this criteria is designed to suss out if the feature provides unique capabilities when compared to existing functionality.
- __Does the proposed feature overlap or conflict with ongoing work?__
The best use of everyone’s time is to ensure that there are no competing implementations of features, so this criteria establishes that there is not more than one effort going on for any given area.
- __Is the feature proposal sufficiently atomic as a feature?__
Sometimes big ideas should be broken up into smaller ideas. Complete atomicity is probably unobtainable given interdependencies between different facets of the product however the goal here is to make sure that the proposed features are accomplishable in a reasonable amount of time or if it would make more sense to break up the feature into smaller chunks.

The maintainers of the repo decide when and if the proposal meets the criteria. If the feature proposal doesn’t meet the criteria, then the issue will be closed with an explanation and tagged clearly. If the feature does meet the criteria and someone is volunteering to work on the feature, it moves to the next stage. If the feature still needs someone to write the feature, it is tagged as “help wanted” until someone volunteers.

In this process your issue might be closed for a variety of reasons and it doesn't necessarily mean that it’s a bad idea or that the feature isn’t wanted. It might mean that the way it is presented, supported, or the context of the other development in the project doesn’t align with the feature proposal process. If this is the case, the maintainer can help with next steps to move forward.

__Design Document__

The next stage is writing a design document. This is a markdown document that is included in a pull request by the person working on the feature. The goal of the design document is to provide a way for the maintainers and other interested parties to provide feedback on how you plan to implement the feature. The design document could be as long or as short as required. The design document should precede writing code and can evolve as feedback comes in. Having an informal, private chat with a trusted colleague about an implementation is great, but, in order to get the widest possible feedback, design reviews should happen on this document in public.

Once the maintainer is satisfied that the pathway is fully outlined in the design document, then the design document is merged into the repo and the issue is noted as in-progress with a tag. At this point, the understanding is that the maintainers will continue to support and review the code. There are always chances that, in the end, the maintainers won’t merge the code based on the design document (for a variety of reasons such as performance, security, etc.) but this has given you the best chance to be on the same page with the maintainers. Additionally, maintainers are invested in the project and community and want you to succeed, so everyone is in this together.

__Creating META issue(s):__

Once the design document is approved and merged, the next step is to create a parent META issue detailing the plan to implement this feature. The parent META issue should contain an overview section along with associated tasks, link to design document, original proposal and acceptance criteria. Sometimes it's very difficult to represent all the above details in a parent META issue especially when dealing with features that span multiple release versions (i.e. not atomic). In those cases, it's recommended to create a child META issue and link it to the parent META issue for tracking. The child META issue will follow the same format as the parent META issue but will track only the tasks targeted for specific OpenSearch version. The Maintainer of the repo will add the META issue associated with a specific release version to the release [roadmap](https://github.com/orgs/opensearch-project/projects/1).

<u>__Writing the code__</u>

Then the fun part of implementing the feature happens and that happens the way it typically does in an open source project. Once everything is done and assuming that the code is merged into the repo, the original feature proposal issue is closed out.

The goal for this process is to have a single point of entry for all comers wanting to add a feature to the project. I hope this churns up a long pondered OpenSearch feature and that you write up your first feature proposal today!


<u>__High level flow:__</u>
| Step | Action | Who | Details |
|------|--------|-----|---------|
|1     | New proposal issue | Contributor / Feature proposal owner | Add label: [feature-proposal] |
|2     | Conversation on issue |Maintainer, Contributor, Community| ✅ Feature? ✅ Scope? ✅ Distinct? ✅ Conflict? ✅ Atomic? |
|3     | Approval of feature proposal | Maintainer |
|4     | Pull request of design document | Contributor / Feature proposal owner |
|5     | Conversation of design document | Maintainer, Contributor, Community | Feature proposal owner |
|6     | Merge design document | Maintainer | |
|7     | Update label of the proposal to reflect status | Maintainer | Add label: [Design-approved] |
|8     | Create new META issue(s) and link the sub-tasks involved in delivering this feature | Maintainer, Contributor, Feature proposal owner | ✅ The proposal issue and design PR are linked to the parent META / child Meta issue., ✅ Child Meta issue that tracks all corresponding to targeted OpenSearch release version is created, ✅ The child META issue and the corresponding tasks are labelled with targeted OpenSearch version |
|9     | Add meta issue(s) card specific to a release version to public roadmap | Maintainer | ✅ Add child Meta issue card to estimated release version |
|10    | Pull request of feature code | Maintainer, Contributor, Feature proposal owner | ✅ Update the GitHub issues associated with a Meta issue on regular basis ✅ Move the issues to respective release as needed when working through the issues |
|11    | Code review of feature code | Maintainer, Contributor, Feature proposal owner, Community
|12    | Approval of code, Maintainer | ✅ Work with the maintainer to get the approval to merge the code |
|13    | Merging of feature code | Maintainer | ✅ Maintainer will merge the code and add appropriate backport labels |
|14    | Repeat step 10 to 13 |  Maintainer, Contributor, Feature proposal owner, Community | ✅ Repeat the steps until all Meta issues / Child META issues are closed |
|15    | Close the proposal issue | Maintainer | ✅ Close the proposal once all the Meta issues are closed |

# Appendix:

## Meta issue format:
### High level overview:
- Building OpenSearch and OpenSearch dashboards takes a significant amount of time. An end to end distribution roughly takes 45 min - 1 hour to build. The current process builds all the components along with the core from source every time a build is triggered.

### Scope of the issue (Objective):
This issue scope is limited to,
- Allow building only failed components on top of (given) previously built successful components.
- Allow rebuilding and re-installing one single component
- Allow rebuilding all dependent components if main dependent component changes. (Example: Job-scheduler needed a rebuild. All components dependent on JS needs and can be rebuilt)

### Targeted version:
- OpenSearch 2.14.0

### Associated tasks:
- [Implementation of xxx in check for build process]()
- [Implementation of diff functionality in distribution build process]()
- [Execution of the workflow steps via Jenkins]()
- [Implementation of automated validation]()

### Link to original proposal:
https://github.com/opensearch-project/opensearch-build/issues/3922

### Acceptance criteria:
- The Jenkins build job will run with _incremental_ argument.
- The Jenkins build job will keep the rest of its functionalities except for building these specific _incremental_ components.
- The Jenkins build job will set _incremental_ parameter as true by default so it could significantly reduce build time.