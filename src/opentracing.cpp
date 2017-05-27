#include <iostream>
#include <cassert>

extern "C" {
#include <lua.h>
#include <lauxlib.h>
} // extern "C"

static int start_trace(lua_State* L) {
  auto stack_size = lua_gettop(L);
  assert(stack_size == 1);
  luaL_checktype(L, 1, LUA_TTABLE);
  std::cout << "Starting a trace...\n";
  return 0;
}

static int finish_trace(lua_State* L) {
  auto stack_size = lua_gettop(L);
  assert(stack_size == 1);
  luaL_checktype(L, 1, LUA_TTABLE);
  std::cout << "Finishing a trace...\n";
  return 0;
}

extern "C" int luaopen_haproxy_opentracing(lua_State* L) {
  lua_register(L, "start_trace", start_trace);
  lua_register(L, "finish_trace", finish_trace);
  return 0;
}
