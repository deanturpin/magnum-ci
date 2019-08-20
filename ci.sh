#!/bin/bash

# The repos we're interested in
readonly repos=(tony bigo cpp cerberus)

# Remove any cruft
tmp=tmp
[[ -e $tmp ]] && rm -rf $tmp

echo Create working directory $tmp >&2

# Clone, build and extract the artefacts from each repo
for repo in ${repos[@]}; do

	subdir=$tmp/$repo

	# Clone
	echo Cloning $repo into $subdir >&2
	git clone --depth=1 https://github.com/deanturpin/$repo $subdir

	# Make directory for build artefacts
	artefacts=../../artefacts/$repo

	# Move to the repo dir, Build the project and report success
	echo "# $repo"
	pushd $subdir > /dev/null
	mkdir -p $artefacts
	make >& $artefacts/build.txt && echo "* PASS" || echo "* FAIL"

	# Build artefacts
	echo Get artefacts from $subdir >&2
	git status --porcelain > $artefacts/files.txt
	echo "* See build [artefacts](artefacts/$repo)"
	popd > /dev/null

	# Line count and cost
 	echo '```'
 	sloccount $subdir | grep -E \
		'Total Estimated Cost to Develop|Total Physical Source Lines of Code|^[^\ ]+:'
 	echo '```'
	echo

done

# Remove working directory $tmp
rm -rf $tmp

echo "---"
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
