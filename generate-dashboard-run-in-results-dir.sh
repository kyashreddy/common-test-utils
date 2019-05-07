#!/usr/bin/env bash
set -e
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

#Delete existing dashboards if any
find . -mindepth 1 -maxdepth 1 -type d -exec rm -rf {}/result \;


#Make result folder in all directories
find . -mindepth 1 -maxdepth 1 -type d -exec mkdir {}/result \;

for j in $(find . -mindepth 1 -maxdepth 1 -type d)
do
	jmeter -g $j/*.jtl -o $j/result
done
