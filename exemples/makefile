
all :
	echo "default target"
	clang++ -std=c++20 main.cpp
	./a.out

%:
	echo "call target $@ but do nothing"

mod:
	clang++ -std=c++20  --precompile test.cppm -o test.pcm
	clang++ -std=c++20 -fmodules -c test.pcm -o test.o
	clang++ -std=c++20 -fmodules -fprebuilt-module-path=. test.o modmain.cpp 
	./a.out

help:
	clang -help | grep module

ls:
	ls /usr/include/clang
	
