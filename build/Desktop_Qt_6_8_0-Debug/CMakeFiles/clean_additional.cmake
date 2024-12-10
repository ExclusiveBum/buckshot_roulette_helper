# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "Buckshot_Roulette_Helper_autogen"
  "CMakeFiles/Buckshot_Roulette_Helper_autogen.dir/AutogenUsed.txt"
  "CMakeFiles/Buckshot_Roulette_Helper_autogen.dir/ParseCache.txt"
  )
endif()
