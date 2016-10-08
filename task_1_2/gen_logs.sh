
for i in `seq 12 20`
do
    ./graph500_mpi_one_sided $i 16 >> /home/igor/Jupyter/graph500/task_1/mpi_one_sided_output.txt
done

for i in `seq 12 20`
do
    ./graph500_mpi_one_replicated $i 16 >> /home/igor/Jupyter/graph500/task_1/mpi_replicated_output.txt
done

for i in `seq 12 20`
do
    ./graph500_mpi_one_replicated_csc $i 16 >> /home/igor/Jupyter/graph500/task_1/mpi_replicated_csc_output.txt
done



for i in `seq 12 20`
do
    mpirun -np 2 ./graph500_mpi_one_sided $i 16 >> /home/igor/Jupyter/graph500/task_1/mpi_one_sided2_output.txt
done

for i in `seq 12 20`
do
    mpirun -np 2 ./graph500_mpi_one_replicated $i 16 >> /home/igor/Jupyter/graph500/task_1/mpi_replicated2_output.txt
done

for i in `seq 12 20`
do
    mpirun -np 2 ./graph500_mpi_one_replicated_csc $i 16 >> /home/igor/Jupyter/graph500/task_1/mpi_replicated_csc2_output.txt
done
