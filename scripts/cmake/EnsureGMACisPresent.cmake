macro(ensure_gmac_is_present dest_dir name url)
if(EXISTS "${dest_dir}/${name}")
  MESSAGE("gmac is present.")
else(EXISTS "${dest_dir}/${name}")
  MESSAGE("Cloning gmac from ${url}...")
  Find_Package(Mercurial)
  Find_Program(MERCIRUAL_EXECUTABLE hg)
  execute_process( COMMAND ${MERCURIAL_EXECUTABLE} clone ${url} ${dest_dir}/${name} )
endif(EXISTS "${dest_dir}/${name}")

endmacro()

