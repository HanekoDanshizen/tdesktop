@echo off

call:checkCommitMessage
GOTO:EOF

:checkCommitMessage
    call:logInfo "Commit message: %APPVEYOR_REPO_COMMIT_MESSAGE%"
    call:logInfo "Extended commit message: %APPVEYOR_REPO_COMMIT_MESSAGE_EXTENDED%"
    call:logInfo "Is pull request: %APPVEYOR_PULL_REQUEST_NUMBER%"
GOTO:EOF

:logInfo
    echo [INFO] %~1
GOTO:EOF

:logError
    echo [ERROR] %~1
GOTO:EOF
