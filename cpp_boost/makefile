make all : cpp_boost_clang cpp_boost_gcc

cpp_boost_clang: main.cpp makefile
	clang++ -O2 -std=c++20 -I/opt/homebrew/Cellar/boost/1.76.0/include  main.cpp -o cpp_boost_clang

cpp_boost_gcc: main.cpp makefile
	g++-11 -O2 -std=c++20 -I/opt/homebrew/Cellar/boost/1.76.0/include  main.cpp -o cpp_boost_gcc