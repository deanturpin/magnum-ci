# Repos we're managing
# repos := cerberus cpp dft tony bigo handt
repos := cpp tony

# Create a list of installation dirs
repo-dirs := $(foreach repo, $(repos), repos/$(repo))

# Clone and build all projects in parallel
all: clone stats

stats:
	./magnum.sh | tee readme.md

clone:
	$(MAKE) -j $(shell nproc) $(repo-dirs)

# Create a repo by cloning it
repos/%:
	@echo cloning $@
	git clone --depth=1  https://github.com/deanturpin/$(notdir $@) $@

clean:
	rm -rf repos
