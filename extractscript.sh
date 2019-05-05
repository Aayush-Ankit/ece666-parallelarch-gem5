#!/bin/sh

run=
echo "Run Misses Invs SelfInvs"

for fol in ./rt_traces/*
do
	#echo $fol
	run=$(echo $fol | sed 's/.*\///')
	num_misses=0
	self_invs=0
	num_invs=0
	while
	read -r line
	do
	  readLine=$line
	  if [[ "$readLine" == *"demand_misses"* ]]; then
		tmp=$( echo $readLine | grep -o -E '\s[0-9]+')
		num_misses=$(expr $num_misses + $tmp)
	  fi
	  if [[ "$readLine" == *"num_invs"* ]]; then
		tmp=$( echo $readLine | grep -o -E '\s[0-9]+')
		num_invs=$(expr $num_invs + $tmp)
	  fi
	  if [[ "$readLine" == *"num_self_invs"* ]]; then
		tmp=$( echo $readLine | grep -o -E '\s[0-9]+')
		self_invs=$(expr $self_invs + $tmp)
	  fi
	done < "$fol/stats.txt"
	echo "$run $num_misses $num_invs $self_invs"
done
