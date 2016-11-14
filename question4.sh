#!/bin/bash

#Luisa Stocco 10169687
#Braedan Robinson 10188414
#Sorts the output of lsblk --noheadings -raw ascendengly by partition size
#Display only the two partitions with largest sizes
#Sorts only partitions

lsblk --noheadings --raw --sort SIZE | grep 'part'| tail -2


