#!/bin/bash
#####################################################################
#
# Copyright (c) 2022-present, Birchi (https://github.com/Birchi)
# All rights reserved.
#
# This source code is licensed under the MIT license.
#
#####################################################################

##
# Main
##
# Variables
runner_group=${RUNNER_GROUP:-Default}
runner_working_directory=${RUNNER_WORKING_DIRECTORY:-_work}

# Validation
if [ "${RUNNER_URL}" == "" ] ; then
    echo "Please, define an url via export RUNNER_URL=RUNNER_URL"
    exit 1
fi

if [ "${RUNNER_TOKEN}" == "" ] ; then
    echo "Please, define an url via export RUNNER_TOKEN=RUNNER_TOKEN"
    exit 1
fi

if [ "${RUNNER_NAME}" == "" ] ; then
    echo "Please, define an url via export RUNNER_NAME=RUNNER_NAME"
    exit 1
fi

cd /home/runner
curl -fsSL https://raw.githubusercontent.com/Birchi/azure.pipelines.agent.installer/refs/heads/development/install.sh | /bin/bash -s -- --directory /home/runner --repository ${RUNNER_URL} --token ${RUNNER_TOKEN} --name ${RUNNER_NAME} --group ${runner_group} --working-directory ${runner_working_directory}
/home/runner/${RUNNER_NAME}/run.sh