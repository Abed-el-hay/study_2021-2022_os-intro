#!/bin/bash
fname=$1
n=0
if [[ -f ${fname}_1 ]]
	then
		rm ${fname}_*
else
	while [ $n -lt $2  ] # lt = less than
		do
			((n=n+1))#increment by 1
			touch ${fname}_$n
	done
fi

