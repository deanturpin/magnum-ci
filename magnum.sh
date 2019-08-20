#!/bin/bash

# sloccount
for repo in repos/*; do
	echo "# $(basename $repo)"
	echo '```'
	sloccount $repo | grep -E \
		'Total Estimated Cost to Develop|Total Physical Source Lines of Code'
	echo '```'
done
