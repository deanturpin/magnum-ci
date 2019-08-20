#!/bin/bash

echo "# Tech stack"
for app in gcc-9 firefox make bash; do

	echo "**$app**"
	echo '```'
	$app --version
	echo '```'

done
echo "**Linux kernel**"
echo '```'
uname -a
echo '```'

echo "# Lines of code and cost"
for dir in repos/*; do

	# Project title
	repo=$(basename $dir)
	echo "**$repo**"

	# Project info
	echo '```'
	sloccount $dir | grep -E \
		'Total Estimated Cost to Develop|Total Physical Source Lines of Code|:'
	echo '```'

done
