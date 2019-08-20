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
readonly repos=(cpp tony cerberus dft bigo handt)

tmp=$(mktemp --directory)
echo Create working directory $tmp

# Clone, build and extract the artefacts from each repo
for repo in ${repos[@]}; do

	subdir=$tmp/$repo

	# Clone
	echo Cloning $repo into $subdir
	git clone --quiet --depth=1  https://github.com/deanturpin/$repo $subdir

	# Get artefacts
	echo Get artefacts from $subdir
	pushd $subdir >& /dev/null
	git status --porcelain
	popd >& /dev/null

	# Line count and cost
 	echo '```'
 	sloccount $subdir | grep -E \
		'Total Estimated Cost to Develop|Total Physical Source Lines of Code|:'
 	echo '```'

done

echo Remove working directory $tmp
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
