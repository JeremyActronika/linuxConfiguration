#!/bin/bash
# Title: version.sh
# Author: Jérémy Cheynet <jeremy.cheynet@actronika.com>
# Copyright: Copyright (C) 2020 Actronika SAS
# ============================================================================ #

function vercomp () {
    if [[ $1 == $2 ]]
    then
        return 0
    fi
    local IFS=.
    local i ver1=($1) ver2=($2)
    # fill empty fields in ver1 with zeros
    for ((i=${#ver1[@]}; i<${#ver2[@]}; i++))
    do
        ver1[i]=0
    done
    for ((i=0; i<${#ver1[@]}; i++))
    do
        if [[ -z ${ver2[i]} ]]
        then
            # fill empty fields in ver2 with zeros
            ver2[i]=0
        fi
        if ((10#${ver1[i]} > 10#${ver2[i]}))
        then
            return 1
        fi
        if ((10#${ver1[i]} < 10#${ver2[i]}))
        then
            return 2
        fi
    done
    return 0
}

if [ $# -ge 2 ]
then
    echo "Too many argument"
    exit 1
fi

list=`ls -d */ | cut -f1 -d '/'`
last_version=0
expected_version=0
binary=""

if [ $# -eq 1 ]
then
    expected_version="${1}"
fi

for line in $(echo ${list})
do
    version=$(echo "${line}" | cut -d '-' -f 2)
    binary=$(echo "${line}" | cut -d '-' -f 1)
    if [ "${expected_version}" == "${version}" ]
    then
        launch="${binary}-${version}"
        ${launch}/${binary}
    else
        vercomp ${last_version} ${version}
        if [ $? -eq 2 ]
        then
            last_version="${version}"
        fi
    fi
done

launch="${binary}-${version}"
${launch}/${binary}