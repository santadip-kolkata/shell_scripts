#!/bin/bash

read -p "Enter username" username
read -p "Enter hostname or ip address" hostname

start=$(date)

ssh -o ConnectTimeout=10 -o BatchMode=yes -o StrictHostKeyCheckingNo=no "$username@$hostname" exit &>/dev/null

if [ $? -eq 0 ]; then
	end_time=$(date)
	connect_time=$((end_time - start_time))
	echo "$connect_time seconds"
else
	echo "Connection failed"
fi
