####  PBS preamble

#PBS -N sra_extract_single
#PBS -m abe

#PBS -A scjp_flux
#PBS -l qos=flux
#PBS -q flux

#PBS -l nodes=1:ppn=1,pmem=8gb
#PBS -l walltime=02:00:00
#PBS -j oe
#PBS -V

####  End PBS preamble
#  Include the next three lines always

if [ "x${PBS_NODEFILE}" != "x" ] ; then
   cat $PBS_NODEFILE   # contains a list of the CPUs you were using if run with PBS
fi

cd $PBS_O_WORKDIR

#Usage: var1=file_to_extract qsub sra_extract_single.sh

fastq-dump $var1 --split-files
