image:image.c image.h
	gcc -g image.c -o image -lm

image_pthread: pthread_image.c pthread_image.h
	gcc -g pthread_image.c -o pthread_image -lm -lpthread

# Clean up all generated files
clean:
	rm -f image output.png image_pthread pthread_output.png
