
# Lua core source files.
set(LUA_CORE_SRC
	lapi.c
	lauxlib.c
	lbaselib.c
	lcode.c
	ldblib.c
	ldebug.c
	ldo.c
	ldump.c
	lfunc.c
	lgc.c
	linit.c
	liolib.c
	llex.c
	lmathlib.c
	lmem.c
	loadlib.c
	lobject.c
	lopcodes.c
	loslib.c
	lparser.c
	lstate.c
	lstring.c
	lstrlib.c
	ltable.c
	ltablib.c
	ltm.c
	lundump.c
	lvm.c
	lzio.c
)

# Lua library
add_library(lua STATIC ${LUA_CORE_SRC})
target_link_libraries(lua ${LIBS})
set_target_properties(lua PROPERTIES
	VERSION ${LUA_VERSION}
	CLEAN_DIRECT_OUTPUT 1
)

# Compile code as C++
set_source_files_properties(${LUA_CORE_SRC} PROPERTIES LANGUAGE CXX)
