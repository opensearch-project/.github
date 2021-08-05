#!/usr/bin/env bash

# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: Apache-2.0

##############################################################################
##
## Script to check for signoff presents on commits.
##
##############################################################################

if [ -z $GITHUB_BASE_REF ]
then
    echo "Checking DCO signoff on push"
    commits=("$GITHUB_SHA")
else
    echo "Checking DCO signoff on pull_request"
    # Get the list of commit ids to check from git
    commits=$(git rev-list $GITHUB_BASE_REF..$GITHUB_HEAD_REF)   
fi


# Scan each commit for the sign off message
missingSignoff=0
for commitId in $commits; do
    commitMessage=$(git rev-list --format=%B --max-count=1 $commitId)
    signoffStringCount=$(echo $commitMessage | grep -c Signed-off-by)
    if [ $signoffStringCount -eq 0 ]; then
      echo !!! Commit "$commitId" is missing signoff, amend this commit with the --signoff flag
      let "missingSignoff++"
    fi
done

# Return non-zero error code if any commits were missing signoff
exit $missingSignoff
