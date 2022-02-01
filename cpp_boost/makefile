all : cpp_boost_clang cpp_boost_gcc cpp_boost_gcc_x64

amd64 : cpp_boost_clang cpp_boost_gcc_amd64

cpp_boost_gcc_x64: main.cpp makefile
	arch -x86_64 /usr/local/Cellar/gcc/11.2.0_3/bin/g++-11 -O2 -std=c++20 \
		-I/usr/local/Cellar/boost/1.76.0/include \
		main.cpp -o cpp_boost_gcc_x64

cpp_boost_clang: main.cpp makefile
	clang++ -O2 -std=c++20 -I/opt/homebrew/Cellar/boost/1.76.0/include  main.cpp -o cpp_boost_clang

cpp_boost_gcc: main.cpp makefile
	g++-11 -O2 -std=c++20 -I/opt/homebrew/Cellar/boost/1.76.0/include  main.cpp -o cpp_boost_gcc

cpp_boost_gcc_amd64: main.cpp makefile
	g++-11 -O2 -std=c++20 \
		-I/usr/local/Cellar/boost/1.76.0/include\
		main.cpp -o cpp_boost_gcc_amd64