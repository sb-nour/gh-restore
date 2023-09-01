#!/bin/bash

# This script is used to test the backup script
# The username is sb-nour
# The token is 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

# User Variables
username=noursofanati
token="124474e0440ea9bce9589025675cc1f2b2a36ee5"
host="18.156.121.229"
# username=alain
# token="27199a9d07196878d4595aca6d03d32cfdf806e9"
# host="gitea.blocksonline.co.uk"
function build_exec_attributes_string() {
    str=""
    str+=" -P"
    str+=" -O"
    str+=" --starred"
    str+=" --watched"
    str+=" --fork"
    str+=" --issues"
    str+=" --pulls"
    str+=" --repositories"
    str+=" --wikis"
    str+=" --gists"
    str+=" --releases"
    str+=" --assets"
    str+=" --all"
    echo "$str"
}

#github-backup $username --token $token --output-directory ./backup -P --starred --watched --fork --issues --pulls --wikis --gists --releases --all
python3 github-backup.py $username --token $token -H $host --output-directory ./backup -P --repositories --all --issues

# git clone https://9c410cdda977def09c120e8649d7ec7c7ae73e87:x-oauth-basic@try.gitea.io/noursofanati/test.git
# git clone https://9c410cdda977def09c120e8649d7ec7c7ae73e87:x-oauth-basic@try.gitea.io/noursofanati/test.git