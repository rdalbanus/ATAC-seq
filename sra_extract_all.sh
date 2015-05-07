for files in *.sra
do
    echo 'Extracting' $files
    var1=$files qsub ../../scripts/sra_extract_single.sh
done
