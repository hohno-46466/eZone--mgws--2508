#!/bin/sh -u

# Last update: 2025-08-28(Thu) 12:03 JST / 2025-08-28(Thu) 03:03 UTC

PNAME=$(basename $0)
# echo "$PNAME"

TARGET=$HOME/Github/hohno-46466.github.io/p5.js/mqtt_receiver_p5/

opts="$opts"
opts="$opts --exclude=${PNAME}"
opts="$opts --exclude=.Spotlight-V100"
opts="$opts --exclude=.TemporaryItems"
opts="$opts --exclude=.fseventsd"
opts="$opts --exclude=.git*"
opts="$opts --exclude='*.swp'"
opts="$opts --exclude='*~'"
opts="$opts --exclude='*.bak'"
opts="$opts --exclude='*.prev'"
opts="$opts --exclude='old/'"

# opts="$opts --exclude='*.md'"
# opts="$opts --exclude='*.txt'"

echo $(echo rsync -avE $@ $opts $(pwd)/ $TARGET)
eval $(echo rsync -avE $@ $opts $(pwd)/ $TARGET)

