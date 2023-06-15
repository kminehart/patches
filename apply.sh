#!/usr/bin/env bash

dir="./patches/${1}"

find $dir -name "*.patch" | xargs git am -q

