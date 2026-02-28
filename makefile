# Makefile for C application "cs3377_assg3"
# Author: Camren Matthews, 2/26/2026

# executable
TARGET = cs3377_assg3
# source files
SOURCES = main.c hellofunc.c fibonacci.c
# header files
HEADERS = helloheader.h fibonacci.h
# object files
OBJECTS = main.o hellofunc.o fibonacci.o
# compilation flags
CFLAGS = -g -Wall -I.
# linking flags
LDFLAGS = -L.

.PHONY: all
all: $(TARGET)

# linking step
$(TARGET): main.o hellofunc.o fibonacci.a
	@echo "--- link to produce" $@ "---"
	g++ $(LDFLAGS) -o $(TARGET) $^

# compilaton step
$(OBJECTS): %.o: %.c
	@echo "--- compile" $^ "---"
	g++ $(CFLAGS) -c $^

# create static library "fibonacci.a"
fibonacci.a: fibonacci.o
	@echo "--- turn fibonacci.o into static library fibonacci.a ---"
	ar rcs fibonacci.a fibonacci.o

.PHONY: zip
# zis all source files into $(TARGET).zip
zip:
	@echo "--- zip source files ---"
	zip camren_matthews_github_assignment3 $(SOURCES) $(HEADERS)

.PHONY: clean
clean:
	@echo "--- clean ---"
	rm -f $(TARGET) $(OBJECTS) *.a