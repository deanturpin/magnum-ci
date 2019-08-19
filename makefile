repos := handt cerberus
repo-dirs := $(foreach repo, $(repos), repos/$(repo))
all: $(repo-dirs)

# Create a repo by cloning it
repos/%:
	@echo cloning $@
	git clone --depth=1  https://github.com/deanturpin/$(notdir $@) $@
