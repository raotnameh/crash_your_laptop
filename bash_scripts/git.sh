#git config --global user.name raotnameh
#git config --global user.email raotnameh@gmail.com

echo Git push bash script
echo Enter the file to add or just enter "." to add all the files
read add
echo Enter the commit message
read message
git add $add
git commit -m "$message"
git push
