#!/bin/bash
# Authors : Holden Kjerland-Nicoletti
# Date: 1/31/2019

#Problem 1 Code:
#Make sure to document how you are solving each problem!

echo "Enter a RegEx: "
read regex
echo "Enter a FileName: "
read fileName
grep $regex $fileName
grep -c "[0-9][0-9][0-9]-[0-9][0-9][0-9]-[0-9][0-9][0-9][0-9]$" $fileName
grep -c "@" $fileName
grep "^303-[0-9][0-9][0-9]-[0-9][0-9][0-9][0-9]$" $fileName > phone_results.txt
grep "@geocities.com" $fileName > email_results.txt
echo "Enter a RegEx to be stored in File: "
read regex2
grep $regex2 $fileName > command_results.txt
