for file in *.sra
do
    var1=$file qsub bowtie_single.sh
done
