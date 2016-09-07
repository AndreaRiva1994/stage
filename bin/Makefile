CXXFLAGS= -fpermissive -O3 -DNDEBUG -std=c++11 #-g -DSDSL_DEBUG # -O3 -DNDEBUG -DSDSL_DEBUG
#SDSLINC=../lib/sdsl-lite
SDSLLIB=../lib/sdsl-lite/build/lib/libsdsl.a
SDSLDIV=../lib/sdsl-lite/build/lib/libdivsufsort.a
SDSLDIV64=../lib/sdsl-lite/build/lib/libdivsufsort64.a

all: backwardMEM1 backwardMEM2 backwardMEM4 backwardMEM8 backwardMEM16 

backwardMEM1: ../src/backwardMEM.cpp 
	g++ $(CXXFLAGS)  ../src/backwardMEM.cpp ../src/testutils.cpp  -o backwardMEM1 $(SDSLLIB) $(SDSLDIV) $(SDSLDIV64) -DBWTK=1 ../sparseMEM/fasta.o 
backwardMEM2: ../src/backwardMEM.cpp 
	g++ $(CXXFLAGS)  ../src/backwardMEM.cpp ../src/testutils.cpp  -o backwardMEM2 $(SDSLLIB) $(SDSLDIV) $(SDSLDIV64) -DBWTK=2 ../sparseMEM/fasta.o 
backwardMEM4: ../src/backwardMEM.cpp
	g++ $(CXXFLAGS)  ../src/backwardMEM.cpp ../src/testutils.cpp  -o backwardMEM4 $(SDSLLIB) $(SDSLDIV) $(SDSLDIV64) -DBWTK=4 ../sparseMEM/fasta.o 
backwardMEM8: ../src/backwardMEM.cpp 
	g++ $(CXXFLAGS)  ../src/backwardMEM.cpp ../src/testutils.cpp  -o backwardMEM8 $(SDSLLIB) $(SDSLDIV) $(SDSLDIV64) -DBWTK=8 ../sparseMEM/fasta.o 
backwardMEM16: ../src/backwardMEM.cpp 
	g++ $(CXXFLAGS)  ../src/backwardMEM.cpp ../src/testutils.cpp  -o backwardMEM16 $(SDSLLIB) $(SDSLDIV) $(SDSLDIV64) -DBWTK=16 ../sparseMEM/fasta.o 

.PHONY: clean

clean:
	rm -f backwardMEM1 backwardMEM2 backwardMEM4 backwardMEM8 backwardMEM16 

