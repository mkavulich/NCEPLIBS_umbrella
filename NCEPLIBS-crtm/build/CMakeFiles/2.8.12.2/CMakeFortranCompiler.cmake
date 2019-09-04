set(CMAKE_Fortran_COMPILER "/apps/intel/parallel_studio_xe_2018.4.057/compilers_and_libraries_2018/linux/bin/intel64/ifort")
set(CMAKE_Fortran_COMPILER_ARG1 "")
set(CMAKE_Fortran_COMPILER_ID "Intel")
set(CMAKE_Fortran_PLATFORM_ID "Linux")

set(CMAKE_AR "/usr/bin/ar")
set(CMAKE_RANLIB "/usr/bin/ranlib")
set(CMAKE_COMPILER_IS_GNUG77 )
set(CMAKE_Fortran_COMPILER_LOADED 1)
set(CMAKE_Fortran_COMPILER_WORKS TRUE)
set(CMAKE_Fortran_ABI_COMPILED TRUE)
set(CMAKE_COMPILER_IS_MINGW )
set(CMAKE_COMPILER_IS_CYGWIN )
if(CMAKE_COMPILER_IS_CYGWIN)
  set(CYGWIN 1)
  set(UNIX 1)
endif()

set(CMAKE_Fortran_COMPILER_ENV_VAR "FC")

set(CMAKE_Fortran_COMPILER_SUPPORTS_F90 1)

if(CMAKE_COMPILER_IS_MINGW)
  set(MINGW 1)
endif()
set(CMAKE_Fortran_COMPILER_ID_RUN 1)
set(CMAKE_Fortran_SOURCE_FILE_EXTENSIONS f;F;f77;F77;f90;F90;for;For;FOR;f95;F95)
set(CMAKE_Fortran_IGNORE_EXTENSIONS h;H;o;O;obj;OBJ;def;DEF;rc;RC)
set(CMAKE_Fortran_LINKER_PREFERENCE 20)
if(UNIX)
  set(CMAKE_Fortran_OUTPUT_EXTENSION .o)
else()
  set(CMAKE_Fortran_OUTPUT_EXTENSION .obj)
endif()

# Save compiler ABI information.
set(CMAKE_Fortran_SIZEOF_DATA_PTR "")
set(CMAKE_Fortran_COMPILER_ABI "ELF")
set(CMAKE_Fortran_LIBRARY_ARCHITECTURE "")

if(CMAKE_Fortran_SIZEOF_DATA_PTR AND NOT CMAKE_SIZEOF_VOID_P)
  set(CMAKE_SIZEOF_VOID_P "${CMAKE_Fortran_SIZEOF_DATA_PTR}")
endif()

if(CMAKE_Fortran_COMPILER_ABI)
  set(CMAKE_INTERNAL_PLATFORM_ABI "${CMAKE_Fortran_COMPILER_ABI}")
endif()

if(CMAKE_Fortran_LIBRARY_ARCHITECTURE)
  set(CMAKE_LIBRARY_ARCHITECTURE "")
endif()

set(CMAKE_Fortran_IMPLICIT_LINK_LIBRARIES "ifport;ifcoremt;imf;svml;m;ipgo;irc;pthread;svml;c;irc_s;dl;c")
set(CMAKE_Fortran_IMPLICIT_LINK_DIRECTORIES "/contrib/da/spack/opt/spack/linux-centos7-x86_64/intel-18.0.5/bacio-v2.1.0-jgxyccg5pdzprha2w4dzai4n67kve5te/lib;/contrib/da/spack/opt/spack/linux-centos7-x86_64/intel-18.0.5/nemsio-v2.2.3-ixfvxjdyta7a3mt7afrv2bjiijk2vole/lib;/contrib/da/spack/opt/spack/linux-centos7-x86_64/intel-19.0.4.243/g2-v3.1.0-gipwymtd6hu3rnuwgwosgtszibxvg2qd/lib;/contrib/da/spack/opt/spack/linux-centos7-x86_64/intel-18.0.5/w3nco-v2.0.6-oxvnr6h7fc2drpulpkh4arctjlmiqfas/lib;/contrib/da/spack/opt/spack/linux-centos7-x86_64/intel-18.0.5/sp-v2.0.2-7gf3qn2lxneg7l4kbfxz5h2aawpr4vhs/lib;/contrib/da/spack/opt/spack/linux-centos7-x86_64/intel-19.0.4.243/ip-v3.0.0-hr2qhk33encsyip4b2dz7yhah7dpzzsk/lib;/apps/intel/parallel_studio_xe_2018.4.057/compilers_and_libraries_2018/linux/compiler/lib/intel64_lin;/apps/intel/parallel_studio_xe_2018.4.057/compilers_and_libraries_2018/linux/mkl/lib/intel64_lin;/apps/intel/parallel_studio_xe_2018.4.057/compilers_and_libraries_2018/linux/tbb/lib/intel64/gcc4.7;/apps/intel/parallel_studio_xe_2018.4.057/compilers_and_libraries_2018/linux/daal/lib/intel64_lin;/apps/intel/parallel_studio_xe_2018.4.057/compilers_and_libraries_2018/linux/tbb/lib/intel64_lin/gcc4.4;/apps/intel/compilers_and_libraries_2018.5.274/linux/compiler/lib/intel64_lin;/usr/lib/gcc/x86_64-redhat-linux/4.8.5;/usr/lib64;/lib64;/usr/lib;/lib")
set(CMAKE_Fortran_IMPLICIT_LINK_FRAMEWORK_DIRECTORIES "")
