CXXFLAGS= -fpermissive -O3 -DNDEBUG -std=c++11 #-g -DSDSL_DEBUG # -O3 -DNDEBUG -DSDSL_DEBUG
#SDSLINC=../lib/sdsl-lite
SDSLLIB=../lib/sdsl-lite/build/lib/libsdsl.a

all: backwardMEM1 backwardMEM2 backwardMEM4 backwardMEM8 backwardMEM16 

backwardMEM1: ../src/backwardMEM.cpp 
	g++ $(CXXFLAGS)  ../src/backwardMEM.cpp ../src/testutils.cpp ../src/divsufsort.h ../src/divsufsort64.h  -o backwardMEM1 $(SDSLLIB) -DBWTK=1 ../sparseMEM/fasta.o 
backwardMEM2: backwardMEM.cpp 
	g++ $(CXXFLAGS)  ../src/backwardMEM.cpp ../src/testutils.cpp ../src/divsufsort.h ../src/divsufsort64.h -o backwardMEM2 $(SDSLLIB) -DBWTK=2 ../sparseMEM/fasta.o 
backwardMEM4: backwardMEM.cpp
	g++ $(CXXFLAGS)  ../src/backwardMEM.cpp ../src/testutils.cpp ../src/divsufsort.h ../src/divsufsort64.h -o backwardMEM4 $(SDSLLIB) -DBWTK=4 ../sparseMEM/fasta.o 
backwardMEM8: backwardMEM.cpp 
	g++ $(CXXFLAGS)  ../src/backwardMEM.cpp ../src/testutils.cpp ../src/divsufsort.h ../src/divsufsort64.h -o backwardMEM8 $(SDSLLIB) -DBWTK=8 ../sparseMEM/fasta.o 
backwardMEM16: backwardMEM.cpp 
	g++ $(CXXFLAGS)  ../src/backwardMEM.cpp ../src/testutils.cpp ../src/divsufsort.h ../src/divsufsort64.h -o backwardMEM16 $(SDSLLIB) -DBWTK=16 ../sparseMEM/fasta.o 

.PHONY: clean

clean:
	rm -f backwardMEM1 backwardMEM2 backwardMEM4 backwardMEM8 backwardMEM16 

