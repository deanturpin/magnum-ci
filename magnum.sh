#!/bin/bash

# Tech stack
echo "# Tech stack"
for app in gcc-9 firefox; do

	echo "## $app"
	echo '```'
	$app --version
	echo '```'

done

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
