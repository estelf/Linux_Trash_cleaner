#!/bin/sh

#trash path
path=$(find ~ -name "Trash")"/files"
#counter
CON=0

check (){
    echo "program finished... "
    read tem
}

echo "your Trash folder path is"
echo $path"\n\n"
echo "your Trash file is"
path=$path"/*"

for f in $path;do
    echo $f
    CON=`expr $CON + 1`
    done

echo "------------"
echo "Total :"$CON
echo "------------\n\n"

echo "clean Trash folder? (Y or N)"
read FLAG

if [ "Y" = "$FLAG" ] || [ "y" = "$FLAG" ];then
    echo "clean now"
    for f in $path;
        do
        echo $f
        rm -rf "$f"
#        exit 1
        done
    check
else
    echo "Not clean"
    check
fi

