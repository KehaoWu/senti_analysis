#!/bin/bash

mkdir -p data/corpus/pos
mkdir -p data/corpus/neg

ppath='raw_data/ChnSentiCorp_htl_ba_2000/'

ls $ppath |
	while read folder
	do
		ls $ppath/$folder/ | 
		       while read filename
		       do
			       echo $ppath$folder/$filename
			       iconv -f GBK -t UTF-8 $ppath$folder/$filename -o data/corpus/$folder/$filename
		       done	       
	done
