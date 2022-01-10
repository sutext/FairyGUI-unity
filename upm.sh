#!/bin/bash
#Build ump package structure
TEMP="upm-temp"
cp -r UPM $TEMP
cp LICENSE $TEMP
cp README.md $TEMP/README.md
cp -r Assets/Extensions $TEMP/Runtime/Extensions
cp -r Assets/Extensions.meta $TEMP/Runtime/Extensions.meta
cp -r Assets/Resources $TEMP/Runtime/Resources
cp -r Assets/Resources.meta $TEMP/Runtime/Resources.meta
cp -r Assets/Scripts $TEMP/Runtime/Scripts
cp -r Assets/Scripts.meta $TEMP/Runtime/Scripts.meta
mv $TEMP/Runtime/Scripts/Editor/* $TEMP/Editor/
rm -rf $TEMP/Runtime/Scripts/Editor
rm -rf $TEMP/Runtime/Scripts/Editor.meta
cd $TEMP
# npm pack
npm pu
cd ..
# cp $TEMP/*.tgz .
rm -rf $TEMP