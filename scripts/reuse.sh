#!/bin/sh
# SPDX-FileCopyrightText: 2023 SAP SE
#
# SPDX-License-Identifier: Apache-2.0
#
# This file is part of FEDEM - https://openfedem.org

# Runs the reuse linter on current working directory through a docker container.
# It will automatically install the docker image fsfe/reuse:latest
# when run for the first time.
cwd=`pwd | sed 's/\/[Cc]/C:/'`
docker run --rm --volume $cwd:/data fsfe/reuse --suppress-deprecation lint
