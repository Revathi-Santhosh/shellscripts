#!/bin/bash
var1=`find . -type f -name "*.*" -exec mv {} {}.new \;`
echo " All files in the  current directory are extended with .new extension"