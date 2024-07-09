
- [Feature proposals](#feature-proposals)
  - [Creating meta-issue(s)](#creating-meta-issues)
  - [Writing the code](#writing-the-code)
  - [High level flow](#high-level-flow)

# Feature proposals

A feature proposal is an issue filed on a repo in OpenSearch which outlines the statement of the problem, technical design is not needed. The issue doesn’t have to contain implementation or design details but it's recommended to include ideas of possible fixes. The primary goal is to brainstorm the solutions along with the community beginning from this feature proposal phase. The issue is tagged “[feature-proposal]” and each repo should have their own template or a fallback on a standard feature proposal template. The maintainers will triage the feature proposal and ask follow-up questions as needed. The maintainer’s job is to determine if the proposal meets the end-result criteria:
- is a feature,
- fits in the scope of the repo and project,
- is sufficiently distinct from existing features,
- doesn’t overlap or conflict with ongoing work,
- is sufficiently atomic as a feature.

The feature proposal should be filed in the idea stage according to [this template](https://github.com/opensearch-project/.github/blob/main/.github/ISSUE_TEMPLATE/FEATURE_REQUEST_TEMPLATE.md). Before appreciable work begins and should be the initial review, allowing for community to voice opinions. This provides maximum transparency and involvement across organizational boundaries.

The process starts with an issue on the repo that you think fits the feature best. In short, the feature proposal issue should describe the end-state of the feature. Each repo now has a template for feature proposals that ask a number of questions relevant to establishing if pursuing the feature is in the best interest of the project. Make sure you fill out the proposal issue template completely, as all questions are required.

From this point, the maintainers and community members will engage you on the feature proposal in the issue comments. The goal of this conversation is to clarify if the feature proposal meets the criteria of a new feature in the project. An additional goal is to determine if this is something that you, as the submitter, can contribute yourself or if you’ll need assistance from additional contributors.

The criteria to continue with a feature proposal are as follows:

- __Is the proposal describing a feature?__
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

## Creating meta-issue(s)

Once the feature proposal is approved, the next step is to create a parent meta-issue detailing the plan to implement this feature. The parent meta-issue should contain an overview section along with associated tasks, link to design document, original proposal and acceptance criteria. Sometimes it's very difficult to represent all the above details in a parent meta-issue especially when dealing with features that span multiple release versions (i.e. not atomic). In those cases, it's recommended to create a child meta-issue and link it to the parent meta-issue for tracking. The child meta-issue will follow the same format as the parent meta-issue but will track only the tasks targeted for specific OpenSearch version. The Maintainer of the repo will add the meta-issue associated with a specific release version to the release [roadmap](https://github.com/orgs/opensearch-project/projects/1).

## Writing the code

Then the fun part of implementing the feature happens and that happens the way it typically does in an open-source project. Once everything is done and assuming that the code is merged into the repo, the original feature proposal issue is closed out.

The goal for this process is to have a single point of entry for all comers wanting to add a feature to the project. I hope this churns up a long pondered OpenSearch feature and that you write up your first feature proposal today!


## High level flow
| Step | Action | Who | Details |
|------|--------|-----|---------|
|1     | New proposal issue | Contributor / Feature Proposal Owner | Add label: [Enhancement] |
|2     | Conversation on issue |Maintainer, Contributor, Community| ✅ Feature? ✅ Scope? ✅ Distinct? ✅ Conflict? ✅ Atomic? |
|3     | Create new meta-issue(s) and link the sub-tasks involved in delivering this feature | Maintainer, Contributor, Feature Proposal Owner | ✅ The proposal issue and design PR are linked to the parent meta / child meta-issue., ✅ Child meta-issue that tracks all corresponding to targeted OpenSearch release version is created, ✅ The child meta-issue and the corresponding tasks are labelled with targeted OpenSearch version |
|4     | Add meta-issue(s) card specific to a release version to public roadmap | Maintainer | ✅ Add child meta-issue card to estimated release version |
|5    | Pull request of feature code | Maintainer, Contributor, Feature Proposal Owner | ✅ Update the GitHub issues associated with a meta-issue on regular basis ✅ Move the issues to respective release as needed when working through the issues |
|6    | Code review of feature code | Maintainer, Contributor, Feature Proposal Owner, Community
|7    | Approval of code, Maintainer | ✅ Work with the maintainer to get the approval to merge the code |
|8    | Merging of feature code | Maintainer | ✅ Maintainer will merge the code and add appropriate backport labels |
|9    | Repeat step 4 to 7 |  Maintainer, Contributor, Feature Proposal Owner, Community | ✅ Repeat the steps until all meta-issues / Child meta-issues are closed |
|10    | Close the proposal issue | Maintainer | ✅ Close the proposal once all the meta-issues are closed |