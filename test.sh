#!/usr/bin/env sh

set -xe

TOTAL=2

L=""
R=""

for i in `seq $TOTAL`; do
    echo "seq=$i"
    L="$L+"`docker-compose run --rm php if-l-constant.php`
    R="$R+"`docker-compose run --rm php if-r-constant.php`
done;

L=`echo "$L" | sed 's/^+//'`
R=`echo "$R" | sed 's/^+//'`

echo "scale=10;($L)/$TOTAL" | bc
echo "scale=10;($R)/$TOTAL" | bc
