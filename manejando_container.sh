#/bin/bash

#Apartados:

#a)

echo "La version del sistema operativo es: " 
singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif uname -r

#b)

echo "El contenido del directorio es: "

singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif ls

#c)

echo "El path del directorio es: "

singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif pwd

#d)

echo "La version de python es: "

singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif python --version

#e)

echo "La version de C++ es: "

singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif g++ --version

#f)

echo "Ejecucion de k-mer13: "

singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif data/k-mer13

