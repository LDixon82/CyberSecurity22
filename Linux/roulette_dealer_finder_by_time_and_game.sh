#!/bin/bash
cat ../Dealer_Analysis/$1_Dealer_schedule | awk -F" " '{print $1, $2, $3, $4}' | grep "$2"
