all:
	# Get any updates
	git pull

	# Run Magnum CI
	./ci.sh > readme.md 2| tee build.txt

	# Add any new artefacts and push
	git add .
	git commit -m "cron" && git push >&2

deps:
	sudo apt update
	sudo apt install -y git vim make g++-9 sloccount iputils-tracepath graphviz
