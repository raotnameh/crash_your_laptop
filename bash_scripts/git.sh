echo Git push bash script
echo Enter the file to add or just enter "." to add all the files
read add
echo Enter the commit message
read message
git add $add
git commit -m "$message"
git push
