#!/bin/bash

# Tech stack
echo "# Tech stack"
for app in gcc-9 firefox make bash; do

	echo "## $app"
	echo '```'
	$app --version
	echo '```'

done
echo "## Linux kernel"
echo '```'
uname -a
echo '```'

# sloccount
for dir in repos/*; do

	# Title and links to repo
	repo=$(basename $dir)
	echo "# $repo"

	# Project info
	echo '```'
	sloccount $dir | grep -E \
		'Total Estimated Cost to Develop|Total Physical Source Lines of Code|:'
	echo '```'

done
