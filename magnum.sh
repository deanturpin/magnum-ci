#!/bin/bash

# sloccount
for dir in repos/*; do

	# Title and links to repo
	repo=$(basename $dir)
	echo "# $repo"
	echo "[$repo]($dir)"

	# Project info
	echo '```'
	sloccount $dir | grep -E \
		'Total Estimated Cost to Develop|Total Physical Source Lines of Code|:'
	echo '```'
done
