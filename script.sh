#!/bin/bash

f = ps.txt
( ps -e | head -3; ps -e | tail -2 ) > $f

tar -czvf $f 
