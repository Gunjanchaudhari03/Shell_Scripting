#!/bin/bash
read  -p "Jetha ne mudke kisse dekh? " bandi
read  -p "Jetha ka pyaar %" pyaar
if [[ $bandi == "daya" ]];
then
	echo "Jetha is loyal"
elif [[ $pyaar -ge 100 ]];
then
	echo "Jetha is loyal"
else
	echo "Jetha is not loyal"
fi
