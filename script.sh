#!/bin/bash

f=ps.txt
z=ps.tar.gz

( ps -e | head -3; ps -e | tail -2 ) > $f

tar -czvf $z $f

echo "tar created"

   ls $z
