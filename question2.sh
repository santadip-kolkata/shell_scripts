#!/bin/bash
ifconfig | grep -w "inet" | awk '{print $2}'
