for f in *.mov;
do mediainfo --Output=PBCore2 "$f" > "${f%.mov}.xml;
mv *.xml 'output directory';
done
