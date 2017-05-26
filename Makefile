haproxy_opentracing.so: src/opentracing.cpp
	clang++ -fPIC -I/opt/local/include -shared -std=c++11 -o $@ $<
