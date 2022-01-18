(cd go && make all)
(cd cpp_boost && make all)
/usr/bin/time go/m1
/usr/bin/time go/amd64
/usr/bin/time ruby ruby/test.rb
/usr/bin/time node node/test.js
/usr/bin/time python3 python/test.py
/usr/bin/time cpp_boost/cpp_boost_clang
/usr/bin/time cpp_boost/cpp_boost_gcc