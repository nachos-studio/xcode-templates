#!/bin/bash

MYDIR="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
XCODE_TEMPLATES=~/Library/Developer/Xcode/Templates

mkdir -p $XCODE_TEMPLATES

cp -r "Nachos Templates" $XCODE_TEMPLATES

