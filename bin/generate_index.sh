#!/bin/bash
GENOME_PATH=../fasta_test_genomes
#REFS="afumig 20 anidulans human21 50 mouse16 mouse16 50 human21 dsim 50 dsec dmel 50 dsec dmel 50 dyak"
REFS="afumig 20 anidulans cerev 50 pombe human21 250 mouse16 mouse16 250 human21 dsim 250 dsec dmel 250 dsec dmel 250 dyak"
KS="1 2 4 8 16"

CNT=0
told=""
l=0

for t in $REFS;
do
	if [ $CNT -eq 2 ];
    then
		for i in $KS;
		do
			echo ./backwardMEM$i -n -l $l -maxmatch $GENOME_PATH/$told.fasta $GENOME_PATH/$t.fasta 
			(./backwardMEM$i -n -l $l -maxmatch $GENOME_PATH/$told.fasta $GENOME_PATH/$t.fasta 2>&1) > $t$told.result & 
			procid=$!
			echo pid $procid
			echo ../meminfo-1.0.2/mymeminfo.py $procid
			../meminfo-1.0.2/mymeminfo.py $procid > meminfo.txt
			echo cat stopwatch.txt
			echo $told $t bwdMEM$i  $l `cat stopwatch.txt` `cat meminfo.txt`
			(echo $told $t bwdMEM$i  $l `cat stopwatch.txt` `cat meminfo.txt`) >> bwdMEM_test.txt
		done	
		CNT=0
	elif [ $CNT -eq 1 ]; 
	then
#		echo $t $CNT
		l=$t
		CNT=2
	else
#		echo $t $CNT
		told=$t 
		CNT=1
	fi
done

exit 0

for i in 1 2 4 8 16;
do
	echo $i
	for t in $REFS;
	do
		echo ./backwardMEM$i -n -l 20 -maxmatch $GENOME_PATH/$t.fasta $GENOME_PATH/test1.fasta
		./backwardMEM$i -n -l 20 -maxmatch $GENOME_PATH/$t.fasta $GENOME_PATH/test1.fasta
	done
done


