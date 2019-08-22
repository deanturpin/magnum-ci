Generated Thu Aug 22 14:01:40 BST 2019
# agraph - PASS
See build [artefacts](artefacts/agraph)
```
sh:             279 (67.88%)
perl:            64 (15.57%)
cpp:             46 (11.19%)
ansic:           22 (5.35%)
Total Physical Source Lines of Code (SLOC)                = 411
Total Estimated Cost to Develop                           = $ 10,621
```

# funktional - PASS
See build [artefacts](artefacts/funktional)
```
sh:             277 (52.76%)
cpp:            184 (35.05%)
perl:            64 (12.19%)
Total Physical Source Lines of Code (SLOC)                = 525
Total Estimated Cost to Develop                           = $ 13,734
```

# float-format - PASS
See build [artefacts](artefacts/float-format)
```
sh:             277 (75.27%)
perl:            64 (17.39%)
cpp:             27 (7.34%)
Total Physical Source Lines of Code (SLOC)                = 368
Total Estimated Cost to Develop                           = $ 9,458
```

# spectrum-analyser - PASS
See build [artefacts](artefacts/spectrum-analyser)
```
sh:             277 (48.85%)
cpp:            226 (39.86%)
perl:            64 (11.29%)
Total Physical Source Lines of Code (SLOC)                = 567
Total Estimated Cost to Develop                           = $ 14,890
```

# tony - PASS
See build [artefacts](artefacts/tony)
```
sh:             277 (69.25%)
perl:            64 (16.00%)
cpp:             59 (14.75%)
Total Physical Source Lines of Code (SLOC)                = 400
Total Estimated Cost to Develop                           = $ 10,323
```

# bigo - PASS
See build [artefacts](artefacts/bigo)
```
sh:             277 (63.82%)
cpp:             93 (21.43%)
perl:            64 (14.75%)
Total Physical Source Lines of Code (SLOC)                = 434
Total Estimated Cost to Develop                           = $ 11,246
```

# cpp - FAIL
See build [artefacts](artefacts/cpp)
```
cpp:           2396 (87.54%)
sh:             277 (10.12%)
perl:            64 (2.34%)
Total Physical Source Lines of Code (SLOC)                = 2,737
Total Estimated Cost to Develop                           = $ 77,764
```

# curly - PASS
See build [artefacts](artefacts/curly)
```
cpp:             98 (70.50%)
python:          30 (21.58%)
sh:              11 (7.91%)
Total Physical Source Lines of Code (SLOC)                = 139
Total Estimated Cost to Develop                           = $ 3,403
```

# yogr - FAIL
See build [artefacts](artefacts/yogr)
```
sh:             279 (81.34%)
perl:            64 (18.66%)
Total Physical Source Lines of Code (SLOC)                = 343
Total Estimated Cost to Develop                           = $ 8,784
```

# handt - PASS
See build [artefacts](artefacts/handt)
```
cpp:            558 (57.64%)
sh:             277 (28.62%)
python:          69 (7.13%)
perl:            64 (6.61%)
Total Physical Source Lines of Code (SLOC)                = 968
Total Estimated Cost to Develop                           = $ 26,110
```

# cerberus - PASS
See build [artefacts](artefacts/cerberus)
```
sh:             277 (65.64%)
python:          81 (19.19%)
perl:            64 (15.17%)
Total Physical Source Lines of Code (SLOC)                = 422
Total Estimated Cost to Develop                           = $ 10,920
```

# hosts2dot - PASS
See build [artefacts](artefacts/hosts2dot)
```
sh:             298 (82.32%)
perl:            64 (17.68%)
Total Physical Source Lines of Code (SLOC)                = 362
Total Estimated Cost to Develop                           = $ 9,296
```

---
# Tech stack
## gcc-9
```
gcc-9 (Ubuntu 9.1.0-2ubuntu2~19.04) 9.1.0
Copyright (C) 2019 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

```
## make
```
GNU Make 4.2.1
Built for x86_64-pc-linux-gnu
Copyright (C) 1988-2016 Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.
```
## bash
```
GNU bash, version 5.0.3(1)-release (x86_64-pc-linux-gnu)
Copyright (C) 2019 Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>

This is free software; you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.
```
## Compiler flags
--std=c++2a --all-warnings --extra-warnings --pedantic-errors -Werror -Wshadow -Wfloat-equal -Weffc++ -Wdelete-non-virtual-dtor -Warray-bounds -Wattribute-alias -Wformat-overflow -Wformat-truncation -Wmissing-attributes -Wstringop-truncation -Wdeprecated-copy -Wclass-conversion -O1
## Linux kernel
```
Linux magnum-ci 5.0.0-1013-gcp #13-Ubuntu SMP Thu Aug 1 16:42:47 UTC 2019 x86_64 x86_64 x86_64 GNU/Linux
```
```
Architecture:        x86_64
CPU op-mode(s):      32-bit, 64-bit
Byte Order:          Little Endian
Address sizes:       46 bits physical, 48 bits virtual
CPU(s):              8
On-line CPU(s) list: 0-7
Thread(s) per core:  2
Core(s) per socket:  4
Socket(s):           1
NUMA node(s):        1
Vendor ID:           GenuineIntel
CPU family:          6
Model:               85
Model name:          Intel(R) Xeon(R) CPU @ 2.00GHz
Stepping:            3
CPU MHz:             2000.134
BogoMIPS:            4000.26
Hypervisor vendor:   KVM
Virtualization type: full
L1d cache:           32K
L1i cache:           32K
L2 cache:            256K
L3 cache:            56320K
NUMA node0 CPU(s):   0-7
Flags:               fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush mmx fxsr sse sse2 ss ht syscall nx pdpe1gb rdtscp lm constant_tsc rep_good nopl xtopology nonstop_tsc cpuid tsc_known_freq pni pclmulqdq ssse3 fma cx16 pcid sse4_1 sse4_2 x2apic movbe popcnt aes xsave avx f16c rdrand hypervisor lahf_lm abm 3dnowprefetch invpcid_single pti ssbd ibrs ibpb stibp fsgsbase tsc_adjust bmi1 hle avx2 smep bmi2 erms invpcid rtm mpx avx512f avx512dq rdseed adx smap clflushopt clwb avx512cd avx512bw avx512vl xsaveopt xsavec xgetbv1 xsaves arat md_clear arch_capabilities
```
