#!/bin/bash

fish="<"
fishtail="><"
for i in `seq 1 1 $1`
do
	fish=$fish$fishtail
done
echo $fish
