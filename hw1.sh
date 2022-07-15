#!/bin/sh

if [ -d "hw1_group14" ]
then
rm -rf hw1_group14
fi
mkdir hw1_group14
cd hw1_group14

git clone https://github.com/dianewoodbridge/2022_msds501_hw1
cd 2022_msds501_hw1
ls -la

python hw1.py |tee output.txt

chmod 400 output.txt

cat output.txt

ls -la

echo "DONE"
