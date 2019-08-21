all:
	./ci.sh > readme.md 2| tee build.txt

deps:
	sudo apt update
	sudo apt install -y git vim make g++-9 sloccount iputils-tracepath graphviz
