image:image.c image.h
	gcc -g image.c -o image -lm

image_pthread: image_pthread.c image_pthread.h
	gcc -g image_pthread.c -o image_pthread -lm -lpthread

image_openmp: image_openmp.c image_openmp.h
	gcc -g -Wall -fopenmp image_openmp.c -o image_openmp -lm

# Clean up all generated files
clean:
	rm -f image output.png image_pthread pthread_output.png image_openmp openmp_output.png
