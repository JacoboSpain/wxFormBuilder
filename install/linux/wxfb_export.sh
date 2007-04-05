#!/bin/bash

if [ ! -n "$1" ]
then
 echo "Please specify output directory."
 exit
else
 outputDir=$1
fi  
  
if [ ! -d $outputDir ]
then
  mkdir $outputDir
  mkdir $outputDir/bin
  mkdir $outputDir/share
  mkdir $outputDir/share/wxformbuilder
fi

if [ ! -d $outputDir/bin ]
then
  mkdir $outputDir/bin
fi
  
if [ ! -d $outputDir/share ]
then
  mkdir $outputDir/share
  mkdir $outputDir/share/wxformbuilder
fi
  
if [ ! -d $outputDir/share/wxformbuilder ]
then
  mkdir $outputDir/share/wxformbuilder
fi
  
cp -R --interactive --verbose output/bin/* $outputDir/share/wxformbuilder/
mv $outputDir/share/wxformbuilder/wxFormBuilder $outputDir/bin/
cp -R --interactive --verbose output/lib $outputDir

exit
