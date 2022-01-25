#!/bin/bash

#SBATCH -p hpc-bio-ampere  #Se indica la cola escogida , Ampere en nuestro caso
#SBATCH --chdir=/home/alumno11/Lab5 #Se indica el directorio de trabajo
#SBATCH -J jesus-lopez-cañizares-job5 #Nombre del trabajo
#SBATCH --cpus-per-task=1 #Número de núcleos a utilizar. Como se trata de un trabajo realizado de manera NO paralela, el valor es 1.
#SBATCH --mail-type=NONE #Indico que no quiero recibir un correo 
#SBATCH --mail-user=jesus.lopezc@um.es #Indico mi correo


# Para ajustar el número de hilos y la afinidad
#export OMP_NUM_THREADS=16  #Se indica el número de hilos 
#export KMP_AFFINITY=granularity=fine,compact,1 #Y se indica la afinidad


time ./k-mer13.py
time ./k-mer14.py
time ./k-mer13
time ./k-mer14
