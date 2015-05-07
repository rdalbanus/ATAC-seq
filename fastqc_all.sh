for files in *.fastq
do
    echo 'fastqc' $files
    var1=$files qsub ../../scripts/fastqc_single.sh
done
