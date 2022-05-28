#!/bin/bash
dir=$1 
title=$(echo "${dir}" | awk -F "/" '{print $NF}' )
arr=$(cd $dir && find -atime +7 | awk -F "/" '{print $2}' ) 
cd $dir && tar -czvf ${title}.tar.gz ${arr[@]}
