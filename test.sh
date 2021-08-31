#!/usr/bin/env sh

set -xe

L=""
R=""

for i in `seq 1`; do
    echo "seq=$i"
    L="$L+"`docker-compose run --rm php if-l-constant.php`
    R="$R+"`docker-compose run --rm php if-r-constant.php`"+"
done;

echo "$L"
echo "$R"
