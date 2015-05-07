####  PBS preamble

#PBS -N fastqc_single
#PBS -m a

#PBS -A scjp_fluxod
#PBS -l qos=flux
#PBS -q fluxod

#PBS -l nodes=1:ppn=1,pmem=8gb
#PBS -l walltime=01:00:00
#PBS -j oe
#PBS -V

####  End PBS preamble
#  Include the next three lines always

if [ "x${PBS_NODEFILE}" != "x" ] ; then
   cat $PBS_NODEFILE   # contains a list of the CPUs you were using if run with PBS
fi

cd $PBS_O_WORKDIR

echo 'FASTQC' $var1
fastqc $var1
