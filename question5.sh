#!/bin/bash


read -p "Enter MAC: " prefix

arp -a | awk -v p="$prefix" '$4 ~ "^" p {print}' 
