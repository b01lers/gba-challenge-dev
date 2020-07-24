#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "tinyxml2_static" for configuration ""
set_property(TARGET tinyxml2_static APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(tinyxml2_static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_NOCONFIG "CXX"
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/libtinyxml2.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS tinyxml2_static )
list(APPEND _IMPORT_CHECK_FILES_FOR_tinyxml2_static "${_IMPORT_PREFIX}/lib/libtinyxml2.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
