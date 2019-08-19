# Repos we're managing
repos := handt cerberus

# Create a list of installation dirs
repo-dirs := $(foreach repo, $(repos), repos/$(repo))

# Clone and build all projects in parallel
all:
	$(MAKE) -j $(shell nproc) $(repo-dirs)

# Create a repo by cloning it
repos/%:
	@echo cloning $@
	git clone --depth=1  https://github.com/deanturpin/$(notdir $@) $@
	make --directory $@

clean:
	rm -rf repos
