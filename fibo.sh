#!/usr/local/bin/bash
 
 declare -i a=$1
 declare -i b=$2  
 declare -i l=$3

fibo() {
 
	local -i a=$1
	local -i b=$2
	local -i len=$3
	local -i tot=$((a + b))
 
	if [ $len -eq 0 ]; then
		return 0
	fi

	echo "$a, "
 
 	a="$b"
 	b="$tot"
 	(( len-- ))
  	fibo "$a" "$b" "$len"
}

fibo "$a" "$b" "$l"

# ➜  fibo git:(dev) ✗ bash fibo.sh 0 1 10                                      
# 0, 
# 1, 
# 1, 
# 2, 
# 3, 
# 5, 
# 8, 
# 13, 
# 21, 
# 34, 
