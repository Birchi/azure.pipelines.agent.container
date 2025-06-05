#!/bin/bash
#####################################################################
#
# Copyright (c) 2022-present, Birchi (https://github.com/Birchi)
# All rights reserved.
#
# This source code is licensed under the MIT license.
#
#####################################################################
# General
LOG_LEVEL=INFO
# Container
container_name=azure-pipelines-agent
container_workdir=/home/runner
container_shell=/bin/bash
container_start_parameters="-e RUNNER_URL=${RUNNER_URL} -e RUNNER_TOKEN=${RUNNER_TOKEN} -e RUNNER_NAME=${RUNNER_DISPLAY_NAME} -e RUNNER_GROUP='Default' -e RUNNER_WORKING_DIRECTORY=_work"
# Image
image_name=azure-pipelines-agent
image_version=latest
# Build
build_file_path=./Dockerfile
build_cleanup_old_images=true
# Start
start_cleanup_old_containers=true
start_cleanup_container_same_name=true

