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

# Clone, build and extract the artefacts from each repo
for repo in ${repos[@]}; do

	# Remove any cruft
	[[ -e tmp ]] && rm -rf tmp

	# Clone
	echo $repo
	git clone --depth=1  https://github.com/deanturpin/$repo tmp

	# Get artefacts
	pushd tmp
	git status --porcelain
	popd

	# Line count and cost
 	echo '```'
 	sloccount tmp | grep -E \
 		'Total Estimated Cost to Develop|Total Physical Source Lines of Code|:'
 	echo '```'

	# Tidy up
	rm -rf tmp
done

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
