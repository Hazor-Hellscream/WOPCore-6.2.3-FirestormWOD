# output generic information about the core and buildtype chosen
message("")
message("* WoDCore revision   : ${rev_hash} ${rev_date} (${rev_branch} branch)")
if( UNIX )
  message("* WoDCore buildtype  : ${CMAKE_BUILD_TYPE}")
endif()
message("")

# output information about installation-directories and locations

message("* Install core to        : ${CMAKE_INSTALL_PREFIX}")
if( UNIX )
  message("* Install libraries to   : ${LIBSDIR}")
  message("* Install configs to     : ${CONF_DIR}")
endif()
message("")

# Show infomation about the options selected during configuration

if( WORLDSERVER )
  message("* Build world            : Yes (default)")
else()
  message("* Build world            : No")
endif()

if( SCRIPTS )
  message("* Build with scripts     : Yes (default)")
  add_definitions(-DSCRIPTS)
else()
  message("* Build with scripts     : No")
  set(USE_SCRIPTPCH 0)
endif()

if( TOOLS )
  message("* Build map/vmap tools   : Yes")
else()
  message("* Build map/vmap tools   : No  (default)")
endif()

if( USE_COREPCH )
  message("* Build core w/PCH       : Yes (default)")
else()
  message("* Build core w/PCH       : No")
endif()

if( USE_SCRIPTPCH )
  message("* Build scripts w/PCH    : Yes (default)")
else()
  message("* Build scripts w/PCH    : No")
endif()

if( WITH_WARNINGS )
  message("* Show all warnings      : Yes")
else()
  message("* Show compile-warnings  : No  (default)")
endif()

if( WITH_COREDEBUG )
  message("")
  message(" *** WITH_COREDEBUG - WARNING!")
  message(" *** additional core debug logs have been enabled!")
  message(" *** this setting doesn't help to get better crash logs!")
  message(" *** in case you are searching for better crash logs use")
  message(" *** -DCMAKE_BUILD_TYPE=RelWithDebug")
  message(" *** DO NOT ENABLE IT UNLESS YOU KNOW WHAT YOU'RE DOING!")
  message("* Use coreside debug     : Yes")
  add_definitions(-DTRINITY_DEBUG)
else()
  message("* Use coreside debug     : No  (default)")
endif()

if( WIN32 )
  if( USE_MYSQL_SOURCES )
    message("* Use MySQL sourcetree   : Yes (default)")
  else()
    message("* Use MySQL sourcetree   : No")
  endif()
endif( WIN32 )

if ( NOJEM )
  message("")
  message(" *** NOJEM - WARNING!")
  message(" *** jemalloc linking has been disabled!")
  message(" *** Please note that this is for DEBUGGING WITH VALGRIND only!")
  message(" *** DO NOT DISABLE IT UNLESS YOU KNOW WHAT YOU'RE DOING!")
endif()

message("")
