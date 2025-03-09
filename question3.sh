#!/bin/bash

traceroute google.com | tail -n 1 | awk '{print "Last Hop:", $1}'
