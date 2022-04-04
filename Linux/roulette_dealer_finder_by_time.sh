#!/bin/bash
cat ../Dealer_Analysis/$1_Dealer_schedule | awk -F" " '{print $1, $2, $5, $6}' | grep "$2"
