# tony
make[1]: Entering directory '/home/dean/magnum-ci/tmp/tony'
g++-9 -std=c++2a -Wall -pedantic -pedantic-errors -O1 -o tony.o tony.cpp
make[1]: Leaving directory '/home/dean/magnum-ci/tmp/tony'
* PASS
* See build [artefacts](artefacts/tony)
```
sh:             277 (69.25%)
perl:            64 (16.00%)
cpp:             59 (14.75%)
Total Physical Source Lines of Code (SLOC)                = 400
Total Estimated Cost to Develop                           = $ 10,323
```
# bigo
make[1]: Entering directory '/home/dean/magnum-ci/tmp/bigo'
make[1]: Nothing to be done for 'all'.
make[1]: Leaving directory '/home/dean/magnum-ci/tmp/bigo'
* PASS
* See build [artefacts](artefacts/bigo)
```
sh:             277 (63.82%)
cpp:             93 (21.43%)
perl:            64 (14.75%)
Total Physical Source Lines of Code (SLOC)                = 434
Total Estimated Cost to Develop                           = $ 11,246
```
# cpp
make[1]: Entering directory '/home/dean/magnum-ci/tmp/cpp'
mkdir -p tmp
make --silent -j 4  tmp/exchange.o  tmp/cryptography.o  tmp/exceptions-in-destructors.o  tmp/exceptions-small-ram.o  tmp/default_constructor_only.o  tmp/multiple_inheritance_diamond.o  tmp/templated-lambdas.o  tmp/mutable_keyword.o  tmp/exceptions2.o  tmp/nonmember_begin_and_end.o  tmp/list-erase.o  tmp/function_pointers.o  tmp/friends.o  tmp/classes11.o  tmp/pimpl.o  tmp/notes.o  tmp/containers.o  tmp/for_loops.o  tmp/boolalpha_read.o  tmp/method_chaining.o  tmp/init_lists.o  tmp/istream_iterator.o  tmp/parallel_algorithms.o  tmp/classes.o  tmp/string_manipulation.o  tmp/auto_refs.o  tmp/map_index.o  tmp/pointers.o  tmp/modulus.o  tmp/tokenise.o  tmp/factorial.o  tmp/template-nesting.o  tmp/parallel-exec.o  tmp/spaceship.o  tmp/sales.o  tmp/unicode.o  tmp/fallthrough.o  tmp/for_loop_index.o  tmp/dirty_cache.o  tmp/virtual3.o  tmp/wide_iterators.o  tmp/regular_expressions.o  tmp/const_pointers.o  tmp/file_read_write.o  tmp/implicit-constructors.o  tmp/align.o  tmp/pop_front_hack.o  tmp/templates.o  tmp/async.o  tmp/vector_initialisation.o  tmp/algorithm.o  tmp/ifs.o  tmp/vector_resize.o  tmp/ratios.o  tmp/vector_capacity.o  tmp/class_war.o  tmp/templates_and_auto.o  tmp/map_filter_reduce.o  tmp/koenig.o  tmp/generate.o  tmp/return_value_optimisation.o  tmp/user_literals.o  tmp/worker_pool.o  tmp/sets.o  tmp/rvalue-references.o  tmp/optional.o  tmp/relationalOperators.o  tmp/cycles.o  tmp/only_shallow.o  tmp/fib.o  tmp/virtual_base_class.o  tmp/move-range.o  tmp/multimap.o  tmp/rule_of_five.o  tmp/numeric.o  tmp/static.o  tmp/functor.o  tmp/shared_pointer.o  tmp/const_vector.o  tmp/array.o  tmp/floating_point.o  tmp/recursive.o  tmp/uncaught_exceptions.o  tmp/auto_main.o  tmp/ternary_operator.o  tmp/multiple_inheritance.o  tmp/maybe_unused.o  tmp/filesystem.o  tmp/bitwise_operators.o  tmp/negative.o  tmp/partition.o  tmp/structures_and_unions.o  tmp/any.o  tmp/perms.o  tmp/list_init.o  tmp/virtual1.o  tmp/lambda_functions.o  tmp/segments.o  tmp/precision.o  tmp/casting.o  tmp/widechars.o  tmp/vector_storage.o  tmp/mutex.o  tmp/size_of_classes.o  tmp/classes14.o  tmp/exceptions.o  tmp/lambda_identity.o  tmp/narrowing.o  tmp/getline.o  tmp/non_virtual.o  tmp/complex.o  tmp/classes_default_methods.o  tmp/classes_construction_order.o  tmp/unique_pointer.o  tmp/tutorials.o  tmp/quoted.o  tmp/strongly_typed_enums.o  tmp/virtual2.o
make[2]: Entering directory '/home/dean/magnum-ci/tmp/cpp'
4 threads
100013 size
25004 elements per thread
start
done
start
done
start
done
start
done
make[2]: Leaving directory '/home/dean/magnum-ci/tmp/cpp'
make[1]: Leaving directory '/home/dean/magnum-ci/tmp/cpp'
* PASS
* See build [artefacts](artefacts/cpp)
```
cpp:           2396 (87.54%)
sh:             277 (10.12%)
perl:            64 (2.34%)
Total Physical Source Lines of Code (SLOC)                = 2,737
Total Estimated Cost to Develop                           = $ 77,764
```
# cerberus
make[1]: Entering directory '/home/dean/magnum-ci/tmp/cerberus'
mkdir -p tmp
./cerberus.py | tee tmp/readme.md
* 142 currency pairs listed across all exchanges
* 4 whitelisted exchanges
* Prices fetched using the [CryptoCompare API](https://min-api.cryptocompare.com/)

# GBP
* Entry points 20
* Permutations 56

3.047552510883839|GBP|Coinroom|BTC|DSX|GBP|
2.8660786482692595|GBP|Coinroom|BTC|Coinbase|GBP|
2.55045871559633|GBP|Coinroom|ETH|DSX|GBP|
2.081089304731477|GBP|Coinroom|BCH|DSX|GBP|
1.9831888026776203|GBP|Coinroom|BCH|Coinbase|GBP|
1.8760433258999683|GBP|CoinsBank|BTC|DSX|GBP|
1.764329802484868|GBP|CoinsBank|BTC|Coinbase|GBP|
1.6779713431604988|GBP|Coinroom|ETH|Coinbase|GBP|
1.624457425268619|GBP|Coinroom|BTC|CoinsBank|GBP|
1.5408818050093147|GBP|Coinroom|LTC|DSX|GBP|
1.5199655977392799|GBP|Coinbase|ETH|DSX|GBP|
1.3167046160215277|GBP|Coinroom|LTC|CoinsBank|GBP|
1.2889670875595114|GBP|Coinroom|LTC|Coinbase|GBP|
1.195439216316043|GBP|Coinbase|LTC|DSX|GBP|
1.17025624901745|GBP|CoinsBank|LTC|DSX|GBP|


# EUR
* Entry points 28
* Permutations 66

2.3400648899968055|EUR|Coinroom|BTC|DSX|EUR|
2.331669056213181|EUR|Coinroom|BTC|Coinbase|EUR|
1.835572411133252|EUR|Coinroom|BCH|DSX|EUR|
1.8336440187696856|EUR|Coinroom|BCH|Coinbase|EUR|
1.7321640940677043|EUR|CoinsBank|BTC|DSX|EUR|
1.7259493254593967|EUR|CoinsBank|BTC|Coinbase|EUR|
1.508189464364763|EUR|CoinsBank|LTC|Coinbase|EUR|
1.4986719787516598|EUR|CoinsBank|LTC|DSX|EUR|
1.3903285043868598|EUR|Coinroom|LTC|Coinbase|EUR|
1.3815547847378085|EUR|Coinroom|LTC|DSX|EUR|
1.3509487340206583|EUR|Coinroom|BTC|CoinsBank|EUR|
1.32|EUR|Coinroom|ETH|DSX|EUR|
1.3121178637200737|EUR|Coinroom|ETH|Coinbase|EUR|
1.084772023019035|EUR|CoinsBank|LTC|Coinroom|EUR|
1.0537974683544304|EUR|DSX|EOS|Coinbase|EUR|


# USD
* Entry points 34
* Permutations 78

2.2964546857538184|USD|Coinroom|BTC|DSX|USD|
2.2959225160981322|USD|Coinroom|BTC|Coinbase|USD|
2.1481983202384183|USD|Coinroom|BCH|DSX|USD|
2.1481983202384183|USD|Coinroom|BCH|DSX|USD|
2.1423056082362506|USD|Coinroom|BCH|Coinbase|USD|
2.1423056082362506|USD|Coinroom|BCH|Coinbase|USD|
1.755894192064405|USD|Coinroom|LTC|CoinsBank|USD|
1.686718939328794|USD|CoinsBank|BTC|DSX|USD|
1.6863280669798857|USD|CoinsBank|BTC|Coinbase|USD|
1.6175341014435174|USD|Coinbase|LTC|CoinsBank|USD|
1.616891712999735|USD|DSX|LTC|CoinsBank|USD|
1.361492203714544|USD|Coinroom|BTC|CoinsBank|USD|
1.3162381777008128|USD|Coinroom|ETH|DSX|USD|
1.3149726921539897|USD|Coinroom|ETH|Coinbase|USD|
1.0859689476710754|USD|Coinroom|LTC|DSX|USD|


echo Generated Tue 20 Aug 23:09:47 BST 2019 > tmp/readme.md
make[1]: Leaving directory '/home/dean/magnum-ci/tmp/cerberus'
* PASS
* See build [artefacts](artefacts/cerberus)
```
sh:             277 (65.64%)
python:          81 (19.19%)
perl:            64 (15.17%)
Total Physical Source Lines of Code (SLOC)                = 422
Total Estimated Cost to Develop                           = $ 10,920
```
---
# Tech stack
**gcc-9**
```
gcc-9 (Ubuntu 9.1.0-2ubuntu2~19.04) 9.1.0
Copyright (C) 2019 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

```
**firefox**
```
Mozilla Firefox 68.0.2
```
**make**
```
GNU Make 4.2.1
Built for x86_64-pc-linux-gnu
Copyright (C) 1988-2016 Free Software Foundation, Inc.
Licence GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.
```
**bash**
```
GNU bash, version 5.0.3(1)-release (x86_64-pc-linux-gnu)
Copyright (C) 2019 Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>

This is free software; you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.
```
**Linux kernel**
```
Linux laptop 5.0.0-25-generic #26-Ubuntu SMP Thu Aug 1 12:04:58 UTC 2019 x86_64 x86_64 x86_64 GNU/Linux
```
