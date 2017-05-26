#include <stdio.h>
#include <lua.h>
#include <lauxlib.h>

extern "C" int luaopen_haproxy_opentracing(lua_State* L) {
  printf("Hello world\n");
  return 0;
}
