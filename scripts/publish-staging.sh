#!/usr/bin/env bash

# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: Apache-2.0

##############################################################################
##
##  Script to stage artifacts for release.
##
##############################################################################

OPENSEARCH_VERSION=$(grep opensearch.version gradle.properties | cut -d'=' -f2 | xargs)
if [ -z "$OPENSEARCH_VERSION" ] ; then
    echo "Missing opensearch.version in gradle.properties."
    exit 1
fi

echo "OpenSearch Version = $OPENSEARCH_VERSION"

echo "Assemble artifacts..."

## Custom logic to stage artifacts for release

echo "Done!"
