#!/bin/sh
. sh/.env &&

find lib/mob -type f -exec cat {} + \
| grep -v "\#\!\/bin\/sh" \
| grep -v '^source' \
> dist/_mobLib &&

cat lib/_mob \
| sed "s@_mobLib@$completionDir/_mobLib@g" \
> dist/_mob
