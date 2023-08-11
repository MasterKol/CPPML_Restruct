BP=bin

NORMAL = \
network.o \
layer.o \
helper.o \
data.o \
cost_func.o \
activation.o \
dense.o \
conv2d.o \
maxpooling2d.o \
upscale2d.o \
self_attention.o \
cross_attention.o \
image_flatten.o \
input.o \
adam.o \
sgd.o \
LinearAlgebra.o

OBJECTS = $(addprefix ${BP}/, ${NORMAL})

all:
	bash remake.sh
	(cd src && make)
	ar -r libcppml.a ${OBJECTS}

clean:
	rm bin/*.o
	rm src/Makefile