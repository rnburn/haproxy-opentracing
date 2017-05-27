haproxy_opentracing.so: src/opentracing.cpp
	clang++ -fPIC -L/opt/local/lib -I/opt/local/include -shared -std=c++11 -o $@ $< -llua
