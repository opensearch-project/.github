


## Overview of OpenSearch Release process:
OpenSearch currently release major, minor and patch versions on a regular cadence as listed in this [release page](https://opensearch.org/releases.html). The infrastructure to build, test and release artifacts are available at https://build.ci.opensearch.org/. A public release GitHub issue using this [release template](https://github.com/opensearch-project/opensearch-build/blob/main/.github/ISSUE_TEMPLATE/release_template.md) is created in the opensearch-build repo along with individual component GitHub issues created using this [template](https://github.com/opensearch-project/opensearch-build/blob/main/.github/ISSUE_TEMPLATE/component_release_template.md) for all plugins participating in the release. 

A primary release manager along with secondary release managers corresponding to participating repos are assigned for a release. Primary release manager goes over the individual release issues periodically across the repos and engage the secondary release managers to take appropriate action as needed throughout the release process. A release call is scheduled with required stakeholders to complete the release process.

## Roles and responsibilities
| Roles                               | Responsibilities                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
|-------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Release manager                     | 1.) Responsible for planning, testing, tracking, release, deployment, communication, and risk management <br> 2.) Collaborate with project management committee to finalize a release schedule and plan for OpenSearch Responsible for managing the release lifecycle process that involve 1.) Scheduling the release 2.) coordinating between teams 3.)Broadcasting release candidate information to gather votes 4.) Execute automated tests 5.) Signing the artifacts 5.) deploying release artifacts as per the schedule 6.) Completing post release activitiesMaintain proper coordination between multiple participating teams to update the project related information in publicly accessible platforms |
| Repository manager                  | 1.) Responsible for assigning a repo level release manager / POC for a specific release <br> 2.) Work closely with release manager to identify, remediate possible gaps for a release corresponding to a specific feature on this repo <br> 3.) Ensure sanity tests are executed and documented by assigned release manager <br> 4.) Surface any gaps, issues to release manager in timely manner <br> 5.) Provide votes for finalizing release candidate                                                                                                                                                                                                     |
| Maintainers                         | 1.) Sanity test the release candidate <br> 2.) Surface any gaps to release manager in timely manner<br> 3.) Provide votes for finalizing release candidate                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| Project management committee (PMC): | The Project Management Committee is responsible for, <br> 1.) High-level technical direction of the product <br> 2.) The roadmap of the OpenSearch project <br> 3.) Create appropriate Working Groups ( User Feedback, Documentation etc..) to gather the necessary community feedback before making decisions <br> 4.) Own and maintain technical resources (e.g., code repositories, servers) <br> 5.) Maintaining committers list <br> 6.) Release planning including Go / No-go decisions |

## Release process:

* Step 1:  Finalize the release plan and date for a release [ **PMC committee** ]
* Step 2: Assign Primary and secondary release managers to OpenSearch release through volunteer model  - ( 14 days from release date ) - [ **Release manager** ]
* Step 3: Validate if every team participating in a release has their release branch created for the corresponding release.  - (10 days from release date) -  [ **Release manager** ]
* Step 4: Modify distribution build job to use the release branch for generating release candidate instead of .x branches  - (10 days from release date)  [ **Release manager** ]
* Step 5: Validate and kick off the preparation phase for a release - (7 days from release date)  [ **Release manager** ]
* Step 6: Generate the release candidate ( 6 days from release date)  [ **Release manager** ]
* Step 7: Broadcast the release candidate to the community  (5 days from release date)  [ **Release manager** ]
* Step 8: Execute integration, BWC tests and performance test against the release candidate  ( 5 days from release date)  [ **Release manager** ]
* Step 9: Sanity test the release candidate and provide votes  [ **Repository manager, Maintainer** ] 
* Step 10: Document the results from Step 4 and Step 5 along with the votes from community in release GitHub issue.  (Between 4  - 2 days from release date)  [ **Release manager**]
* Step 11: Finalize the release candidate and sign, stage the approved release candidate  (1 day from release date) [ **Release manager, PMC committee**]
* Step 12: Schedule a Go / No-GO call and get the sign off from required stakeholders [**Release manager, PMC committee**]
* Step 13: Schedule release meeting [**Release manager**]
* Step 14: Publish the approved artifacts to corresponding distribution channels after automated validation   (Release day) [ **Release manager** ]
* Step 15: Execute all post release activities (Release day!) [ **Release manager** ]
* Step 16: Broadcast the completion of release activities  [ **Release manager** ]


**Note**: We have published a [proposal](https://github.com/opensearch-project/.github/issues/150) to move away from release train model with defined release date to release window model with a defined release candidate (RC) creation date. We will use the 1st RC creation date as release day in the above steps if we end up moving to the new release model.

## Documentation (How To Guides, Announcement Templates): 
* Communication template for requesting release manager and repository volunteers
* [Code complete / Feature freeze process](https://github.com/opensearch-project/opensearch-build/blob/main/.github/ISSUE_TEMPLATE/release_template.md#code-complete---ends-replace_release-minus-10-days)
* [Release candidate creation and testing template](https://github.com/opensearch-project/opensearch-build/blob/main/.github/ISSUE_TEMPLATE/release_template.md#code-complete---ends-replace_release-minus-10-days)
* Release candidate broadcasting template
* [Preparation activities](https://github.com/opensearch-project/opensearch-build/blob/main/.github/ISSUE_TEMPLATE/release_template.md#preparation)
* [Release activities]()
* [Post Release Activities](https://github.com/opensearch-project/opensearch-build/blob/main/.github/ISSUE_TEMPLATE/release_template.md#post-release)