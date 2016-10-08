for i in `seq 1 1000`
do
	./generator_test_mpi  12 > graph12.txt
	cp graph12.txt /home/igor/Jupyter/graph500/
	python /home/igor/Jupyter/graph500/test.py
done


