# amdpower
This script is for AMD zen2 and newer processor with amd_pstate_epp enabled in Linux6.3+. It can control EPP status of the cpu.
## Usage
```
-i: print cpu infomation
-g <epp_hint>: use avaiable epp preferences to set epp hint with <epp_hint>
```
## Example
```
$ ./amdpower.sh -i
CPU number: 16
Current amd_pstate status: active
Current EPP preference: power
Available EPP preferences: default performance balance_performance balance_power power 
Your CPU is supported.
```
```
$ ./amdpower.sh -g balance_power
Setting CPU0: balance_power
Setting CPU1: balance_power
Setting CPU2: balance_power
Setting CPU3: balance_power
Setting CPU4: balance_power
Setting CPU5: balance_power
Setting CPU6: balance_power
Setting CPU7: balance_power
Setting CPU8: balance_power
Setting CPU9: balance_power
Setting CPU10: balance_power
Setting CPU11: balance_power
Setting CPU12: balance_power
Setting CPU13: balance_power
Setting CPU14: balance_power
Setting CPU15: balance_power
```
