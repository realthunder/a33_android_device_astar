#!/bin/bash

PATCHDIR=$(pwd)
WORKSPACEDIR=$PATCHDIR/../../../../..
if [ ! -e patch.list ]; then
    echo "no patch.list"
    exit 0
fi

PATCHDIRLIST=`cat patch.list`

OUTPUTLOG=$PATCHDIR/result.log
echo "" > $OUTPUTLOG

echo "=======================================" | tee -a $OUTPUTLOG
echo "Now patch astar-y3 sing user patches ..." | tee -a $OUTPUTLOG
echo "PATCHDIR:$PATCHDIR" 
echo "WORKSPACEDIR:$WORKSPACEDIR" 

echo "" | tee -a $OUTPUTLOG

for i in $PATCHDIRLIST
do
	echo "-------------------------------------" | tee -a $OUTPUTLOG
	echo "Apply patch in $i" | tee -a $OUTPUTLOG
	filename=$i
	pathname=`dirname $filename`
	prjdir=${pathname}
	comma="/"
	mypatch=$PATCHDIR$comma$i
	echo "patch dir: $PATCHDIR"
	echo "patch name: $i"
	echo "workspace dir: $WORKSPACEDIR"
	echo "project dir: $prjdir"
	echo "patch is : $mypatch"
	cd $WORKSPACEDIR/$prjdir && git am --ignore-whitespace --ignore-space-change $PATCHDIR/android/$i | tee -a $OUTPUTLOG 
	echo "" | tee -a $OUTPUTLOG
done
echo "Patch Done!!" | tee -a $OUTPUTLOG

cd $WORKSPACEDIR/ && repo status | tee -a $OUTPUTLOG
cd $WORKSPACEDIR/../lichee && repo status | tee -a $OUTPUTLOG
