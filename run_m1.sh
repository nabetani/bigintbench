(cd go && make all)
(cd cpp_boost && make all)
(cd java && javac BigIntBench.java)
echo "go/m1" && go/m1 && /usr/bin/time go/m1 2>&1
echo "go/amd64" && go/amd64 && /usr/bin/time go/amd64 2>&1
echo "ruby/m1" && ruby ruby/test.rb && /usr/bin/time ruby ruby/test.rb 2>&1
echo "ruby/amd64" && /usr/local/Cellar/ruby/3.0.3/bin/ruby ruby/test.rb && /usr/bin/time /usr/local/Cellar/ruby/3.0.3/bin/ruby ruby/test.rb 2>&1
echo "node/m1" && node node/test.js && /usr/bin/time node node/test.js 2>&1
echo "node/amd64" && /usr/local/Cellar/node/17.4.0/bin/node node/test.js && /usr/bin/time /usr/local/Cellar/node/17.4.0/bin/node node/test.js 2>&1
echo "python3/m1" && python3 python/test.py && /usr/bin/time python3 python/test.py 2>&1
echo "python3/amd64" && /usr/local/Cellar/python@3.9/3.9.10/bin/python3 python/test.py && /usr/bin/time /usr/local/Cellar/python@3.9/3.9.10/bin/python3 python/test.py 2>&1
echo "clang/m1" && cpp_boost/cpp_boost_clang && /usr/bin/time cpp_boost/cpp_boost_clang 2>&1
echo "gcc/m1" && cpp_boost/cpp_boost_gcc && /usr/bin/time cpp_boost/cpp_boost_gcc 2>&1
echo "gcc/amd64" && cpp_boost/cpp_boost_gcc && /usr/bin/time cpp_boost/cpp_boost_gcc_x64 2>&1
echo "java/m1" && (cd java && java BigIntBench && /usr/bin/time java BigIntBench) 2>&1

