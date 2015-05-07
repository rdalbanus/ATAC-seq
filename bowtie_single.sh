####  PBS preamble

#PBS -N bowtie_single
#PBS -m a

#PBS -A scjp_fluxod
#PBS -l qos=flux
#PBS -q fluxod

#PBS -l nodes=1:ppn=1,pmem=8gb
#PBS -l walltime=10:00:00
#PBS -j oe
#PBS -V

####  End PBS preamble
#  Include the next three lines always

if [ "x${PBS_NODEFILE}" != "x" ] ; then
   cat $PBS_NODEFILE   # contains a list of the CPUs you were using if run with PBS
fi

cd $PBS_O_WORKDIR

echo 'bowtie' $var1
file1=`basename $var1 .sra`_1.fastq
file2=`basename $var1 .sra`_2.fastq
out=`basename $var1 .sra`.sam

bowtie -n 1 -X 2000 -m 1 --sam ../../../data/reference/human/hg19/hg19 $file1,$file2 > ../sam/$out
