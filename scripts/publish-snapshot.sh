#!/usr/bin/env bash

# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: Apache-2.0

##############################################################################
##
## Script to publish snapshot artifacts to a repository
##
##############################################################################

OPENSEARCH_VERSION=$(grep opensearch.version gradle.properties | cut -d'=' -f2 | xargs)
if [ -z "$OPENSEARCH_VERSION" ] ; then
    echo "Missing opensearch.version in gradle.properties."
    exit 1
fi

echo "OpenSearch Version = $OPENSEARCH_VERSION"


echo "Publishing Artifacts..."

## Custom logic to publish snapshots

echo "Done!"
