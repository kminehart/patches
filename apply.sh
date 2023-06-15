#!/usr/bin/env bash
set -e

dir="./patches/${1}"

find $dir -name "*.patch" | xargs git am -q --committer-date-is-author-date > /dev/null 2>&1

echo "applied $(find $dir -name "*.patch" | wc -l) patches"
