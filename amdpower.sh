#!/bin/bash
status=$(cat /sys/devices/system/cpu/amd_pstate/status)
cpu_number=$(cat /proc/cpuinfo| grep "processor"| wc -l)
available_epp=$(cat /sys/devices/system/cpu/cpu0/cpufreq/energy_performance_available_preferences)
current_epp=$(cat /sys/devices/system/cpu/cpu0/cpufreq/energy_performance_preference)
while getopts "ig:" arg
do
    case $arg in
        i)
            echo "CPU number: ${cpu_number}"
            echo "Current amd_pstate status: ${status}"
            echo "Current EPP preference: ${current_epp}"
            echo "Available EPP preferences: ${available_epp}"
            if [ $status == "active" ]
            then
                echo "Your CPU is supported."
            fi
            ;;
        g)
            if [ $status == "active" ]
            then
                for i in $(seq 1 $cpu_number)
                do
                    i=$(expr $i - 1)
                    echo Setting CPU${i}: ${OPTARG}
                    echo ${OPTARG} > /sys/devices/system/cpu/cpu${i}/cpufreq/energy_performance_preference
                done
            fi
            ;;
        *)
            echo "Unknown Argument"
            ;;
    esac
done