(cd go && make all)
(cd cpp_boost && make amd64)
(cd java && javac BigIntBench.java)
echo "go/amd64" && go/amd64 && /usr/bin/time go/amd64 2>&1
echo "ruby/amd64" && ruby ruby/test.rb && /usr/bin/time ruby ruby/test.rb 2>&1
echo "node/amd64" && node node/test.js && /usr/bin/time node node/test.js 2>&1
echo "python3/amd64" && python3 python/test.py && /usr/bin/time python3 python/test.py 2>&1
echo "clang/amd64" && cpp_boost/cpp_boost_clang && /usr/bin/time cpp_boost/cpp_boost_clang 2>&1
echo "gcc/amd64" && cpp_boost/cpp_boost_gcc_amd64 && /usr/bin/time cpp_boost/cpp_boost_gcc_amd64 2>&1
echo "java/amd64" && (cd java && java BigIntBench && /usr/bin/time java BigIntBench) 2>&1

