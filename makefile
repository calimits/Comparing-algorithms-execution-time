#MY_MAKEFILE
EXE = example
FOLDER = bin

#Paths to look for
vpath %.h include
vpath %.cpp src 

#.cpp to compile
SRC = main.cpp 
#saving .o names
OBJ = $(patsubst %.cpp, %.o, $(SRC))

#Flags I need
FLAI = -I include -Wall -MMD -MP -std=c++11

#creating directory
all: $(EXE)
	mkdir $(FOLDER) || echo "[i] directory was already created"
	mv $(EXE) ./$(FOLDER)/$(EXE)

#compiling .o
$(EXE): $(OBJ)
	g++  $(OBJ) -o $(EXE)

#compiling .cpp
%.o: %.cpp
	g++ -c $(FLAI) $< -o $@

.PHONY: clean

#delete files git don´t need
clean: 
	rm -rf *.o *.d *.exe ./$(FOLDER)

#run exetucable
run: 
	./$(FOLDER)/$(EXE)



