for f in *.mov; #change file extension here according to your files; using wildcard for both file name and extension (i.e. '*.*') 
# will generate XML records for ALL files in the directory regardless of format extension (but that will include this script,
# txt files, any other non-AV material)
do mediainfo --Output=PBCore2 "$f" > "${f%.mov}.xml";
mv *.xml output_directory; #change to match directory path of your choosing
done
