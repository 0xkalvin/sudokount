.PHONY: build run all clean test

COMPILER=gcc
SRC=src
OUTPUT=sudokount.out
FLAGS=-O3

default: all

build:
	${COMPILER} ${FLAGS} ${SRC}/*c -o ${OUTPUT}

run:
	./${OUTPUT}

all: build run

clean:
	rm -rf ${OUTPUT}