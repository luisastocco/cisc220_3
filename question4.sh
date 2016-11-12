#!/bin/bash

#Sorts the output of lsblk --noheadings -raw ascendengly by partition size
#Display only the two partitions with largest sizes
#Sorts only partitions

lsblk --noheadings --raw --sort SIZE | grep 'part'| tail -2


