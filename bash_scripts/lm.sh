echo Enter the text file path
read txt_file
echo Enter the saving name
read arpa_file
echo Enter the n gram value example 1 for 1 gram and 3 for 3 gram
read n_gram
#/media/nas_mount/hemant/kenlm/build/bin/lmplz -o $n_gram --prune 0 1 -S 10% -T /media/data_dump/hemant --discount_fallback < $txt_file > $arpa_file.arpa
/media/nas_mount/hemant/kenlm/build/bin/lmplz -o $n_gram -S 10% -T /media/data_dump/hemant --discount_fallback < $txt_file > $arpa_file.arpa
echo To convert the arpa to binaries press y else n
read binary
if [ "$binary" == "y" ]
then
	/media/nas_mount/hemant/kenlm/build/bin/build_binary -T -s $arpa_file.arpa $arpa_file.binary
else
	echo Done 
fi

