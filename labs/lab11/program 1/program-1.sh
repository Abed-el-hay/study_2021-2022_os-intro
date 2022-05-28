#!/bin/bash

while getopts i:o:p:nC option
do case $option in
	i) iflag=1; ival=$OPTARG;;#input from
	o) oflag=1; oval=$OPTARG;;#output to
	p) pflag=1; pval=$OPTARG;;#pattren to seach for "example"
	C) Cflag=1;;# -i from grep
	n) nflag=1;;#show line using wc

	*) echo "Error" && exit 1
esac
done

# -z equal to zero 
# ! -z  check if not equal to 0
# [[ ]] work as test command

[[ ! -z $iflag ]] && echo "File name: ${ival}" 
[[ ! -z $oflag ]] && echo "Result saved in: ${oval}"

# wc 
n=$(wc -l $ival | awk '{print $1}' )
[[ ! -z $nflag ]] && echo "Number of lines: ${n}"

if [[ ! -z $Cflag ]]
then 
	grep "$pval" $ival > $oval
else
	i="-i"
	grep $i "$pval" $ival > $oval
fi

shift $(($OPTIND - 1))
