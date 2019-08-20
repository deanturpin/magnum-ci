#!/bin/bash

# echo "# Tech stack"
# for app in gcc-9 firefox make bash; do
# 
# 	echo "**$app**"
# 	echo '```'
# 	$app --version
# 	echo '```'
# 
# done
# echo "**Linux kernel**"
# echo '```'
# uname -a
# echo '```'

# The repos we're interested in
readonly repos=(tony bigo)

tmp=$(mktemp --directory)
echo Create working directory $tmp >&2

# Clone, build and extract the artefacts from each repo
for repo in ${repos[@]}; do

	subdir=$tmp/$repo

	# Clone
	echo Cloning $repo into $subdir >&2
	git clone --depth=1  https://github.com/deanturpin/$repo $subdir

	# Build
	echo Get artefacts from $subdir >&2
	pushd $subdir >&2

	echo "# $repo"
	make --silent && echo PASS || echo FAIL

	# Get artefacts
	git status --porcelain
	popd >&2

	# Line count and cost
 	echo '```'
 	sloccount $subdir | grep -E \
		'Total Estimated Cost to Develop|Total Physical Source Lines of Code|:'
 	echo '```'

done

# echo Remove working directory $tmp
rm -rf $tmp

# echo "# Lines of code and cost"
# for dir in repos/*; do
# 
# 	# Project title
# 	repo=$(basename $dir)
# 	echo "## $repo"
# 	make --silent --directory=$dir && echo "* Build success" || echo "* Build fail"
# 
# 	# Project info
# 	echo '```'
# 	sloccount $dir | grep -E \
# 		'Total Estimated Cost to Develop|Total Physical Source Lines of Code|:'
# 	echo '```'
# 
# done
