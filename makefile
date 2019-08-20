# Repos we're managing
repos := cerberus cpp dft tony bigo

# Create a list of installation dirs
repo-dirs := $(foreach repo, $(repos), repos/$(repo))
build-dirs := $(foreach repo, $(repos), build/$(repo))

# Clone and build all projects in parallel
all: clone build techstack sloccount

techstack:
	@g++-9 --version

sloccount:
	./magnum.sh

clone:
	$(MAKE) -j $(shell nproc) $(repo-dirs)

build:
	$(MAKE) $(CXX)=$(gcc) $(build-dirs)

# Create a repo by cloning it
repos/%:
	@echo cloning $@
	git clone --depth=1  https://github.com/deanturpin/$(notdir $@) $@

build/%:
	$(MAKE) --directory=repos/$(notdir $@)

clean:
	rm -rf repos
