#!/bin/bash

#SBATCH -p hpc-bio-ampere  #En primer lugar se elige una de las colas, en mi caso, he elegido la cola Ampere
#SBATCH --chdir=/home/alumno11/Lab5/ #Aquí se especifica la ruta que he elegido para llevar a cabo el ejercicio 
#SBATCH -J jesus-lopez-cañizares-job5 #En esta parte se especifica el nombre del trabajo
#SBATCH --cpus-per-task=1 #Aquí se seleccionan el número de núcleos. Al no tratarse de un trabajo en paralelo se ha usado 1 núcleo
#SBATCH --mail-type=NONE #Aquí se especifica que no se desea recibir un correo cuando se ejecuta
#SBATCH --mail-user=jesus.lopezc@um.es #Y se especifica el correo del usuario


# Para ajustar el número de hilos y la afinidad
#export OMP_NUM_THREADS=16 #Se escoge el número de hilos
#export KMP_AFFINITY=granularity=fine,compact,1 #Y la afinidad

module load singularity/3.8.0

#k-mer13.py


time singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif ./k-mer13.py

#k-mer14.py

time singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif ./k-mer14.py

#k-mer13 (C++)

time singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif ./k-mer13

#k-mer14 (C++)

time singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif ./k-mer14

