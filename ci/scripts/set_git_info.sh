#!/bin/bash -e
#
# Set GIT info
#
#
# GITHUB Actions
export client_git_url=https://github.com/${GITHUB_REPOSITORY}.git
export client_git_branch=origin/$(basename ${GITHUB_REF})
export client_git_commit=${GITHUB_SHA}

#
# set GIT parameters used in the following scripts
#
export GIT_URL=$client_git_url
export GIT_BRANCH=$client_git_branch
export GIT_COMMIT=$client_git_commit
echo "GIT_URL: $GIT_URL, GIT_BRANCH: $GIT_BRANCH, GIT_COMMIT: $GIT_COMMIT"
