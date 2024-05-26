#! /bin/bash
. sh/.env &&
sh/build.sh &&
if [ -n "${completionDir}" ]; then
    cp dist/_mob dist/_mobLib $completionDir/
fi
