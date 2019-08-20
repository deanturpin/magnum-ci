[sample](artefacts/sample.md)

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
# Lines of code and cost
## bigo
* Build success
```
Totals grouped by language (dominant language first):
sh:             277 (63.82%)
cpp:             93 (21.43%)
perl:            64 (14.75%)
Total Physical Source Lines of Code (SLOC)                = 434
Total Estimated Cost to Develop                           = $ 11,246
```
## cerberus
* Build success
```
Totals grouped by language (dominant language first):
sh:             277 (65.64%)
python:          81 (19.19%)
perl:            64 (15.17%)
Total Physical Source Lines of Code (SLOC)                = 422
Total Estimated Cost to Develop                           = $ 10,920
```
## cpp
* Build success
```
Totals grouped by language (dominant language first):
cpp:           2396 (87.54%)
sh:             277 (10.12%)
perl:            64 (2.34%)
Total Physical Source Lines of Code (SLOC)                = 2,737
Total Estimated Cost to Develop                           = $ 77,764
```
## dft
* Build success
```
Totals grouped by language (dominant language first):
sh:             295 (66.14%)
cpp:             87 (19.51%)
perl:            64 (14.35%)
Total Physical Source Lines of Code (SLOC)                = 446
Total Estimated Cost to Develop                           = $ 11,573
```
## handt
...................................................... got prices
Using 4 CPUs
[![Build Status](https://travis-ci.org/deanturpin/handt.svg?branch=master)](https://travis-ci.org/deanturpin/handt)

**History is no indicator of future performance. Don't invest what you can't
afford to lose.**

*Have A Nice Day Trader* is an algorithmic trading platform that uses patterns
in historic prices to influence future trades. 80 days of prices are requested
for hundreds of currency pairs, then a library of strategies is backtested and
a summary is generated.

Run in Docker:
```bash
docker run deanturpin/handt
```

Prices are fetched using the [CryptoCompare
API](https://min-api.cryptocompare.com/). See the entry point in
[main.cpp](https://github.com/deanturpin/handt/blob/master/main.cpp) and [all
exchanges](https://min-api.cryptocompare.com/data/all/exchanges). The
strategies are defined in the
[low_frequency_trader.cpp](low_frequency_trader.cpp), the permutations and
thresholds are generated in [strategy.cpp](strategy.cpp).

Exchanges in use: Coinbase
```
dff2fa3 Use native tuning
```
Generated Tue Aug 20 16:08:24 2019

* 4 threads
* 54 currency pairs
* 2,250 strategies
* 220,633,412 backtests

# Current prospects

Strategy|Pair|Exchange|Perf|Spot|Jitter %
---|---|---|---|---
Supine-Pomeranian-8|[REP-USD](https://www.cryptocompare.com/coins/REP)|Coinbase|5/1|10.17|0.737412
Straddling-Havanese-13|[REP-USD](https://www.cryptocompare.com/coins/REP)|Coinbase|3/0|10.17|0.737412
Straddling-Pomeranian-4|[REP-USD](https://www.cryptocompare.com/coins/REP)|Coinbase|3/1|10.17|0.737412
Straddling-Griffon-10|[REP-USD](https://www.cryptocompare.com/coins/REP)|Coinbase|3/2|10.17|0.737412
Straddling-Havanese-11|[REP-USD](https://www.cryptocompare.com/coins/REP)|Coinbase|3/2|10.17|0.737412
Straddling-Havanese-12|[REP-USD](https://www.cryptocompare.com/coins/REP)|Coinbase|3/2|10.17|0.737412
Darting-Affenpinscher-5|[ETC-BTC](https://www.cryptocompare.com/coins/ETC)|Coinbase|3/2|0.000554|0.590831
Indifferent-Affenpinscher-5|[ETC-BTC](https://www.cryptocompare.com/coins/ETC)|Coinbase|3/2|0.000554|0.590831
Darting-Pomeranian-5|[ETC-BTC](https://www.cryptocompare.com/coins/ETC)|Coinbase|4/3|0.000554|0.590831
Darting-Affenpinscher-4|[ETC-BTC](https://www.cryptocompare.com/coins/ETC)|Coinbase|5/4|0.000554|0.590831
Indifferent-Affenpinscher-4|[ETC-BTC](https://www.cryptocompare.com/coins/ETC)|Coinbase|5/4|0.000554|0.590831

# 80-day backtest

Strategy|Pair|Exchange|Perf|Spot|Jitter %
---|---|---|---|---
Slouching-Pomeranian-7|[GNT-USDC](https://www.cryptocompare.com/coins/GNT)|Coinbase|8/1|0.05094|0.798041
Indifferent-Griffon-12|[ZRX-USD](https://www.cryptocompare.com/coins/ZRX)|Coinbase|7/0|0.1689|0.693817
Indifferent-Norrbottenspets-11|[ZRX-USD](https://www.cryptocompare.com/coins/ZRX)|Coinbase|7/0|0.1689|0.693817
Indifferent-Shiba Inu-11|[ZRX-USD](https://www.cryptocompare.com/coins/ZRX)|Coinbase|7/0|0.1689|0.693817
Slouching-Griffon-12|[ZRX-USD](https://www.cryptocompare.com/coins/ZRX)|Coinbase|7/0|0.1689|0.693817
Slouching-Havanese-12|[ZRX-USD](https://www.cryptocompare.com/coins/ZRX)|Coinbase|7/0|0.1689|0.693817
* Build success
```
Totals grouped by language (dominant language first):
cpp:            558 (89.00%)
python:          69 (11.00%)
Total Physical Source Lines of Code (SLOC)                = 627
Total Estimated Cost to Develop                           = $ 16,549
```
## tony
* Build success
```
Totals grouped by language (dominant language first):
sh:             277 (69.25%)
perl:            64 (16.00%)
cpp:             59 (14.75%)
Total Physical Source Lines of Code (SLOC)                = 400
Total Estimated Cost to Develop                           = $ 10,323
```
