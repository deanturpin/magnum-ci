#!/bin/bash

export CXX=g++-9
export CXXFLAGS="--std=c++2a --all-warnings --extra-warnings --pedantic-errors \
	-Werror -Wshadow -Wfloat-equal -Weffc++ -Wdelete-non-virtual-dtor \
	-Warray-bounds -Wattribute-alias -Wformat-overflow -Wformat-truncation \
	-Wmissing-attributes -Wstringop-truncation \
	-Wdeprecated-copy -Wclass-conversion \
	-O1"

# The repos we're interested in
# readonly repos=(agraph funktional float-format spectrum-analyser tony bigo cpp)
readonly repos=(curly yogr handt) # cerberus dft hosts2dot

# Remove any cruft
tmp=tmp
[[ -e $tmp ]] && rm -rf $tmp
[[ -e artefacts ]] && rm -rf artefacts

echo Create working directory $tmp >&2
echo Generated $(date)

# Clone, build and extract the artefacts from each repo
for repo in ${repos[@]}; do

	subdir=$tmp/$repo

	# Clone
	echo Cloning $repo into $subdir >&2
	git clone --depth=1 https://github.com/deanturpin/$repo $subdir || continue

	# Make directory for build artefacts
	artefacts=../../artefacts/$repo

	# Prepare to build the project
	pushd $subdir > /dev/null
	mkdir -p $artefacts
	echo Build $repo >&2

	# Create project heading and report success
	echo -n "# $repo - "
	make >&2 && echo "PASS" || echo "FAIL"

	# Lint
	cppcheck --enable=all . 1>/dev/null 2>cppcheck.txt

	# Get build artefacts
	echo Get artefacts from $subdir >&2
	git status --porcelain | while read line; do
		file=$(echo $line | cut -d' ' -f2)
		cp $file $artefacts
	done
	
	echo "See build [artefacts](artefacts/$repo)"
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
for app in gcc-9 make bash; do

	echo "**$app**"
	echo '```'
	$app --version
	echo '```'

done

# Compilation
echo "**Compiler flags**"

echo $CXXFLAGS

# Linux
echo "**Linux kernel**"
echo '```'
uname -a
echo '```'

# Build slave info
echo '```'
lscpu
echo '```'
