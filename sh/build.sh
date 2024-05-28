#!/bin/sh
. sh/.env &&

mkdir -p build &&

find lib/mob -type f ! -name "*.example" -exec cat {} + \
| grep -v "\#\!\/bin\/sh" \
| grep -v '^source' \
> build/_mobLib &&

cat lib/_mob \
| grep -v "\#compdef mob" \
| grep -v '^$mobLib' \
> build/_mob &&

mkdir -p dist &&
echo "#compdef mob" | cat - build/_mobLib build/_mob > dist/_mob

