#!/bin/bash

#Sorts the output of lsblk --noheadings -raw ascendengly by partition size
#Display only the two partitions with largest sizes
#Sorts only partitions

lsblk --noheadings --raw | grep 'part'| sort -k4g


