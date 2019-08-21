CXX := g++-9bsdf

CXXFLAGS := --std=c++2a --all-warnings --extra-warnings --pedantic-errors \
	-Werror -Wshadow -Wfloat-equal -Weffc++ -Wdelete-non-virtual-dtor \
	-Warray-bounds -Wattribute-alias -Wformat-overflow -Wformat-truncation \
	-Wmissing-attributes -Wstringop-truncation \
	-Wdeprecated-copy -Wclass-conversion \
	-O1

all:
	$(shell export CXX=$(CXX))
	./ci.sh > readme.md
