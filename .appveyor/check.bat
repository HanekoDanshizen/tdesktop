@echo off

call ".\common.bat"

:checkCommitMessage
    call:logInfo "Commit message: ${%APPVEYOR_REPO_COMMIT_MESSAGE%}"
    call:logInfo "Extended commit message: ${%APPVEYOR_REPO_COMMIT_MESSAGE_EXTENDED%}"
    call:logInfo "Is pull request: ${TRAVIS_PULL_REQUEST}"
GOTO:EOF
