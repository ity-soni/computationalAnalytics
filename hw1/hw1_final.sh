export dir="hw1_group14" #saving directory name in 'dir' variable to re-use it

#Delete folder that we are trying to create if it already exists.
if [ -d "$dir" ]
then
rm -rf $dir
fi

#Create folder which contains the content and structure from a git repo 
mkdir $dir
cd $dir
git clone https://github.com/dianewoodbridge/2022_msds501_hw1
cd 2022_msds501_hw1

#List all the files and sub directories (including hidden ones) in folder in a long format.
ls -la

#Execute hw1.py and store the output in output.txt. The output.txt should be in folder. 
python hw1.py > output.txt

#Change output.txt to be only readable to the user and not available for anyone else. 
chmod 400 output.txt

#Print contents in output.txt 
cat output.txt

#List all the files and sub directories (including hidden ones) in folder in a long format.
ls -la

#Print "DONE" at the end.
echo "DONE"
