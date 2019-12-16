#!/bin/sh
# Source data are sloppy with commas and all columns were originally quoted. 
# This is a pain to parse and inefficient because a third of the files is just quotes.
# This replaces the commas between quotes with tabs then deletes all of the quotes.
# Size is cut by a third and it parses better.
# This then concatenates the 4 clean "no quote" files into one file. 

perl -pe 's{"(.*?)"|,}{$1//"\t"}ge' SWVF_1_22.txt > nq1.txt
perl -pe 's{"(.*?)"|,}{$1//"\t"}ge' SWVF_23_44.txt > nq2.txt
perl -pe 's{"(.*?)"|,}{$1//"\t"}ge' SWVF_45_66.txt > nq3.txt
perl -pe 's{"(.*?)"|,}{$1//"\t"}ge' SWVF_67_88.txt > nq4.txt
cat nq1.txt nq2.txt nq3.txt nq4.txt > allfile.txt
