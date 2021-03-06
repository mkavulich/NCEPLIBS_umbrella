# disable in source builds to protect against overwriting other Makefiles
#set(CMAKE_DISABLE_IN_SOURCE_BUILD ON)
if( NOT DEFINED ENV{CC} )
  find_path( crayComp "ftn" )
  find_path( wcossIntel "mpfort" )
  find_path( intelComp "ifort" )
  find_path( pgiComp "pgf90" )
  if( crayComp )
    message("Setting CrayLinuxEnvironment")
    set(CMAKE_SYSTEM_NAME "CrayLinuxEnvironment")
    set(CMAKE_C_COMPILER "${crayComp}/cc")
    set(CMAKE_CXX_COMPILER "${crayComp}/CC")
    set(CMAKE_Fortran_COMPILER "${crayComp}/ftn")
  endif()
  if( intelComp )
    set(ENV{CC} "icc")
    set(ENV{CXX} "icpc")
    set(ENV{FC} "ifort")
  endif()
  if( wcossIntel )
    message("Setting env for wcoss intel")
    set(ENV{CC} "mpcc")
    set(ENV{CXX} "mpCC")
    set(ENV{FC} "mpfort")
  endif()
  if( pgiComp )
    set(ENV{CC} "pgcc")
    set(ENV{CXX} "pgCC")
    set(ENV{FC} "pgf90")
  endif()
endif()

project(NCEPLIBS)
  cmake_minimum_required(VERSION 3.6)
  enable_language (Fortran)
# Options for CMake

#Set up module and lib paths for build
  set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/cmake/Modules/")
  set(CMAKE_LIBRARY_OUTPUT_DIRECTORY "${PROJECT_BINARY_DIR}/lib")
  SET(LIBRARY_OUTPUT_PATH ${PROJECT_BINARY_DIR}/lib)
  SET(ARCHIVE_OUTPUT_PATH ${PROJECT_BINARY_DIR}/lib)
  set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
  set(CMAKE_INCLUDE_OUTPUT_DIRECTORY "${PROJECT_BINARY_DIR}/include")
  set(CMAKE_INCLUDE_4_OUTPUT_DIRECTORY "${PROJECT_BINARY_DIR}/include_4")
  set(Fortran_MODULE_DIRECTORY "${PROJECT_BINARY_DIR}/include")
  set(CMAKE_Fortran_MODULE_DIRECTORY "${PROJECT_BINARY_DIR}/include")
  file(MAKE_DIRECTORY ${CMAKE_INCLUDE_OUTPUT_DIRECTORY})
  file(MAKE_DIRECTORY ${CMAKE_INCLUDE_4_OUTPUT_DIRECTORY})

#Include all the macros/functions
# include(${CMAKE_SOURCE_DIR}/cmake/Modules/setPlatformVariables.cmake)
  include(${CMAKE_SOURCE_DIR}/cmake/Modules/setIntelFlags.cmake)
  include(${CMAKE_SOURCE_DIR}/cmake/Modules/setGNUFlags.cmake)
  include(${CMAKE_SOURCE_DIR}/cmake/Modules/setPGIFlags.cmake)
#  include(${CMAKE_SOURCE_DIR}/cmake/Modules/setHOST.cmake)

#Set cmake policies
  if(POLICY CMP0009)
    cmake_policy(SET CMP0009 NEW)
  endif()
  if(POLICY CMP0046)
    cmake_policy(SET CMP0046 NEW)
  endif()
  if(POLICY CMP0074)
    cmake_policy(SET CMP0074 NEW)
  endif()

#Find the OpenMP flag
  find_package(OpenMP)

# make sure that the default is a RELEASE
  if (NOT CMAKE_BUILD_TYPE)
    set (CMAKE_BUILD_TYPE RELEASE CACHE STRING
        "Choose the type of build, options are: PRODUCTION Debug Release."
        FORCE)
  endif (NOT CMAKE_BUILD_TYPE)
  
  STRING(COMPARE EQUAL ${CMAKE_BUILD_TYPE} "RelWithDebInfo" BUILD_RELEASE)
  if(NOT BUILD_RELEASE)
    STRING(COMPARE EQUAL ${CMAKE_BUILD_TYPE} "RELEASE" BUILD_RELEASE)
  endif()
  STRING(COMPARE EQUAL ${CMAKE_BUILD_TYPE} "PRODUCTION" BUILD_PRODUCTION)
  STRING(COMPARE EQUAL ${CMAKE_BUILD_TYPE} "PROFILE" BUILD_PROFILE)
  if( BUILD_PRODUCTION )
    set( CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/exec )
  endif()

  find_package(MPI REQUIRED)

#report on MPI version
  message("MPI version is ${MPI_Fortran_VERSION}")
  message("MPI f90 version is ${MPI_Fortran_HAVE_F90_MODULE}")
  message("MPI f08 version is ${MPI_Fortran_HAVE_F08_MODULE}")
# set this after HDF5 so that MPI is not linked in automatically
  add_definitions(${MPI_Fortran_COMPILE_FLAGS})
  include_directories(${MPI_Fortran_INCLUDE_DIRS} ${MPI_INCLUDE_PATH} "./" ${CMAKE_INCLUDE_OUTPUT_DIRECTORY})
  link_directories(${MPI_Fortran_LIBRARIES} ${ARCHIVE_OUTPUT_PATH} )


  option(BUILD_HDF5 "Build HDF5" ON)
  option(BUILD_NETCDF "Build NETCDF" ON)
  option(BUILD_JASPER "Build JASPER" ON)
    include(ExternalProject)
      ExternalProject_Add(zlib  
      PREFIX ${PROJECT_BINARY_DIR}/zlib  
      CMAKE_ARGS
        -DCMAKE_INSTALL_PREFIX=${CMAKE_INSTALL_PREFIX}
        -DCMAKE_CXX_COMPILER=${CMAKE_CXX_COMPILER}
        -DCMAKE_C_COMPILER=${CMAKE_C_COMPILER}
        -DCMAKE_BUILD_TYPE=RELEASE
      SOURCE_DIR ${PROJECT_SOURCE_DIR}/zlib  
      INSTALL_DIR ${CMAKE_INSTALL_PREFIX}
      BUILD_COMMAND make 
      INSTALL_COMMAND make install
    )
    include(ExternalProject)
      ExternalProject_Add(curl  
      PREFIX ${PROJECT_BINARY_DIR}/curl  
      CMAKE_ARGS
        -DCMAKE_INSTALL_PREFIX=${CMAKE_INSTALL_PREFIX}
        -DCMAKE_CXX_COMPILER=${CMAKE_CXX_COMPILER}
        -DCMAKE_C_COMPILER=${CMAKE_C_COMPILER}
        -DCMAKE_USE_OPENSSL=False
        -DHTTP_ONLY=True
        -DCMAKE_BUILD_TYPE=RELEASE
      SOURCE_DIR ${PROJECT_SOURCE_DIR}/curl  
      INSTALL_DIR ${CMAKE_INSTALL_PREFIX}
      BUILD_COMMAND make 
      INSTALL_COMMAND make install
    )
    include(ExternalProject)
      ExternalProject_Add(libpng
      PREFIX ${PROJECT_BINARY_DIR}/libpng
      CMAKE_ARGS
        -DCMAKE_INSTALL_PREFIX=${CMAKE_INSTALL_PREFIX}
        -DCMAKE_CXX_COMPILER=${CMAKE_CXX_COMPILER}
        -DCMAKE_C_COMPILER=${CMAKE_C_COMPILER}
        -DCMAKE_BUILD_TYPE=RELEASE
      SOURCE_DIR ${PROJECT_SOURCE_DIR}/libpng
      INSTALL_DIR ${CMAKE_INSTALL_PREFIX}
      BUILD_COMMAND make 
      INSTALL_COMMAND make install
    )

  if(BUILD_JASPER)
    include(ExternalProject)
      ExternalProject_Add(jasper
      PREFIX ${PROJECT_BINARY_DIR}/jasper
      CMAKE_ARGS
        -DCMAKE_INSTALL_PREFIX=${CMAKE_INSTALL_PREFIX}
        -DCMAKE_CXX_COMPILER=${CMAKE_CXX_COMPILER}
        -DCMAKE_C_COMPILER=${CMAKE_C_COMPILER}
        -DCMAKE_BUILD_TYPE=RELEASE
        -DJAS_ENABLE_DOC=FALSE
      SOURCE_DIR ${PROJECT_SOURCE_DIR}/jasper
      INSTALL_DIR ${CMAKE_INSTALL_PREFIX}
      BUILD_COMMAND make 
      INSTALL_COMMAND make install
    )
  endif()
  if(NOT BUILD_HDF5)
    find_package(HDF5 COMPONENTS C HL Fortran_HL )
    set(hdf5 ${HDF5_ROOT})
  else()
    include(ExternalProject)
      ExternalProject_Add(hdf5
      PREFIX ${PROJECT_BINARY_DIR}/hdf5
      CMAKE_ARGS
        -DCMAKE_INSTALL_PREFIX=${CMAKE_INSTALL_PREFIX}
        -DCMAKE_CXX_COMPILER=${MPI_CXX_COMPILER}
        -DCMAKE_C_COMPILER=${MPI_C_COMPILER}
        -DCMAKE_Fortran_COMPILER=${MPI_Fortran_COMPILER}
        -DHDF5_BUILD_FORTRAN:BOOL=ON
        -DHDF5_BUILD_HL_LIB:BOOL=ON
        -DCMAKE_BUILD_TYPE=RELEASE
      SOURCE_DIR ${PROJECT_SOURCE_DIR}/hdf5
      INSTALL_DIR ${CMAKE_INSTALL_PREFIX}
      BUILD_COMMAND make -j 5
      INSTALL_COMMAND make install
    )
  endif()

  if(NOT BUILD_NETCDF)
    find_package( NetCDF )
  else()
    include(ExternalProject)
      ExternalProject_Add(netcdf  
      PREFIX ${PROJECT_BINARY_DIR}/netcdf
      CMAKE_ARGS
        -DCMAKE_INSTALL_PREFIX=${CMAKE_INSTALL_PREFIX}
        -DCMAKE_CXX_COMPILER=${MPI_CXX_COMPILER}
        -DCMAKE_C_COMPILER=${MPI_C_COMPILER}
        -DCMAKE_Fortran_COMPILER=${MPI_Fortran_COMPILER}
        -DHDF5_DIR=${CMAKE_INSTALL_PREFIX}
        -DCMAKE_BUILD_TYPE=RELEASE
      SOURCE_DIR ${PROJECT_SOURCE_DIR}/netcdf    
      INSTALL_DIR ${CMAKE_INSTALL_PREFIX}
      DEPENDS hdf5
      DEPENDS curl
      BUILD_COMMAND make -j 5
      INSTALL_COMMAND make install
    )
    include(ExternalProject)
      ExternalProject_Add(netcdf-fortran  
      PREFIX ${PROJECT_BINARY_DIR}/netcdf-fortran
      CMAKE_ARGS
        -DCMAKE_INSTALL_PREFIX=${CMAKE_INSTALL_PREFIX}
        -DCMAKE_CXX_COMPILER=${MPI_CXX_COMPILER}
        -DCMAKE_C_COMPILER=${MPI_C_COMPILER}
        -DCMAKE_Fortran_COMPILER=${MPI_Fortran_COMPILER}
        -DnetCDF_INCLUDE_DIR=${CMAKE_INSTALL_PREFIX}/include
        -DENABLE_TESTS=OFF
        -DnetCDF_LIBRARIES=${CMAKE_INSTALL_PREFIX}/lib64/libnetcdf.so
        -DHDF5_DIR=${CMAKE_INSTALL_PREFIX}
        -DCMAKE_BUILD_TYPE=RELEASE
      SOURCE_DIR ${PROJECT_SOURCE_DIR}/netcdf-fortran    
      INSTALL_DIR ${CMAKE_INSTALL_PREFIX}
      DEPENDS netcdf
      BUILD_COMMAND make -j 5
      INSTALL_COMMAND make install
    )
    set(NETCDF_DIR ${CMAKE_INSTALL_PREFIX})
  endif()

set(BUILD_ALL True)
  include(ExternalProject)
    ExternalProject_Add(NCEPLIBS-ip  
    PREFIX ${PROJECT_BINARY_DIR}/NCEPLIBS-ip   
    CMAKE_ARGS
      -DCMAKE_INSTALL_PREFIX=${CMAKE_INSTALL_PREFIX}
      -DCMAKE_CXX_COMPILER=${CMAKE_CXX_COMPILER}
      -DCMAKE_C_COMPILER=${CMAKE_C_COMPILER}
      -DCMAKE_Fortran_COMPILER=${CMAKE_Fortran_COMPILER}
      -DCMAKE_BUILD_TYPE=RELEASE
    SOURCE_DIR ${PROJECT_SOURCE_DIR}/NCEPLIBS-ip    
    INSTALL_DIR ${CMAKE_INSTALL_PREFIX}
    DEPENDS netcdf-fortran
    BUILD_COMMAND make
    INSTALL_COMMAND make install
  )

  include(ExternalProject)
    ExternalProject_Add(NCEPLIBS-bacio 
    PREFIX ${PROJECT_BINARY_DIR}/NCEPLIBS-bacio
    CMAKE_ARGS
      -DCMAKE_INSTALL_PREFIX=${CMAKE_INSTALL_PREFIX}
      -DCMAKE_CXX_COMPILER=${CMAKE_CXX_COMPILER}
      -DCMAKE_C_COMPILER=${CMAKE_C_COMPILER}
      -DCMAKE_Fortran_COMPILER=${CMAKE_Fortran_COMPILER}
      -DCMAKE_BUILD_TYPE=RELEASE
    SOURCE_DIR ${PROJECT_SOURCE_DIR}/NCEPLIBS-bacio 
    INSTALL_DIR ${CMAKE_INSTALL_PREFIX}
    DEPENDS netcdf-fortran
    BUILD_COMMAND make
    INSTALL_COMMAND make install
  )

  include(ExternalProject)
    ExternalProject_Add(NCEPLIBS-g2    
    PREFIX ${PROJECT_BINARY_DIR}/NCEPLIBS-g2   
    CMAKE_ARGS
      -DCMAKE_INSTALL_PREFIX=${CMAKE_INSTALL_PREFIX}
      -DCMAKE_CXX_COMPILER=${CMAKE_CXX_COMPILER}
      -DCMAKE_C_COMPILER=${CMAKE_C_COMPILER}
      -DCMAKE_Fortran_COMPILER=${CMAKE_Fortran_COMPILER}
      -DCMAKE_BUILD_TYPE=RELEASE
    SOURCE_DIR ${PROJECT_SOURCE_DIR}/NCEPLIBS-g2    
    INSTALL_DIR ${CMAKE_INSTALL_PREFIX}
    DEPENDS netcdf-fortran
    BUILD_COMMAND make
    INSTALL_COMMAND make install
  )

  include(ExternalProject)
    ExternalProject_Add(NCEPLIBS-sigio 
    PREFIX ${PROJECT_BINARY_DIR}/NCEPLIBS-sigio
    CMAKE_ARGS
      -DCMAKE_INSTALL_PREFIX=${CMAKE_INSTALL_PREFIX}
      -DCMAKE_CXX_COMPILER=${CMAKE_CXX_COMPILER}
      -DCMAKE_C_COMPILER=${CMAKE_C_COMPILER}
      -DCMAKE_Fortran_COMPILER=${CMAKE_Fortran_COMPILER}
      -DCMAKE_BUILD_TYPE=RELEASE
    SOURCE_DIR ${PROJECT_SOURCE_DIR}/NCEPLIBS-sigio 
    INSTALL_DIR ${CMAKE_INSTALL_PREFIX}
    DEPENDS netcdf-fortran
    BUILD_COMMAND make
    INSTALL_COMMAND make install
  )

  include(ExternalProject)
    ExternalProject_Add(NCEPLIBS-sp    
    PREFIX ${PROJECT_BINARY_DIR}/NCEPLIBS-sp   
    CMAKE_ARGS
      -DCMAKE_INSTALL_PREFIX=${CMAKE_INSTALL_PREFIX}
      -DCMAKE_CXX_COMPILER=${CMAKE_CXX_COMPILER}
      -DCMAKE_C_COMPILER=${CMAKE_C_COMPILER}
      -DCMAKE_Fortran_COMPILER=${CMAKE_Fortran_COMPILER}
      -DCMAKE_BUILD_TYPE=RELEASE
    SOURCE_DIR ${PROJECT_SOURCE_DIR}/NCEPLIBS-sp    
    INSTALL_DIR ${CMAKE_INSTALL_PREFIX}
    BUILD_COMMAND make
    INSTALL_COMMAND make install
  )

  include(ExternalProject)
    ExternalProject_Add(NCEPLIBS-nemsio
    PREFIX ${PROJECT_BINARY_DIR}/NCEPLIBS-nemsio
    CMAKE_ARGS
      -DCMAKE_INSTALL_PREFIX=${CMAKE_INSTALL_PREFIX}
      -DCMAKE_CXX_COMPILER=${CMAKE_CXX_COMPILER}
      -DCMAKE_C_COMPILER=${CMAKE_C_COMPILER}
      -DCMAKE_Fortran_COMPILER=${CMAKE_Fortran_COMPILER}
      -DCMAKE_BUILD_TYPE=RELEASE
    SOURCE_DIR ${PROJECT_SOURCE_DIR}/NCEPLIBS-nemsio
    INSTALL_DIR ${CMAKE_INSTALL_PREFIX}
    DEPENDS netcdf-fortran
    BUILD_COMMAND make
    INSTALL_COMMAND make install
  )

  include(ExternalProject)
    ExternalProject_Add(NCEPLIBS-w3nco 
    PREFIX ${PROJECT_BINARY_DIR}/NCEPLIBS-w3nco
    CMAKE_ARGS
      -DCMAKE_INSTALL_PREFIX=${CMAKE_INSTALL_PREFIX}
      -DCMAKE_CXX_COMPILER=${CMAKE_CXX_COMPILER}
      -DCMAKE_C_COMPILER=${CMAKE_C_COMPILER}
      -DCMAKE_Fortran_COMPILER=${CMAKE_Fortran_COMPILER}
      -DCMAKE_BUILD_TYPE=RELEASE
    SOURCE_DIR ${PROJECT_SOURCE_DIR}/NCEPLIBS-w3nco 
    DEPENDS NCEPLIBS-nemsio
    DEPENDS NCEPLIBS-sigio 
    INSTALL_DIR ${CMAKE_INSTALL_PREFIX}
    DEPENDS netcdf-fortran
    BUILD_COMMAND make
    INSTALL_COMMAND make install
  )

  include(ExternalProject)
    ExternalProject_Add(NCEPLIBS-grib_util
    PREFIX ${PROJECT_BINARY_DIR}/NCEPLIBS-grib_util
    CMAKE_ARGS
      -DCMAKE_INSTALL_PREFIX=${CMAKE_INSTALL_PREFIX}
      -DCMAKE_CXX_COMPILER=${CMAKE_CXX_COMPILER}
      -DCMAKE_C_COMPILER=${CMAKE_C_COMPILER}
      -DCMAKE_Fortran_COMPILER=${CMAKE_Fortran_COMPILER}
      -DCMAKE_BUILD_TYPE=RELEASE
    SOURCE_DIR ${PROJECT_SOURCE_DIR}/NCEPLIBS-grib_util
    DEPENDS NCEPLIBS-bacio
    DEPENDS NCEPLIBS-sp
    DEPENDS NCEPLIBS-ip
    DEPENDS NCEPLIBS-g2
    DEPENDS NCEPLIBS-w3nco
    INSTALL_DIR ${CMAKE_INSTALL_PREFIX}
    DEPENDS netcdf-fortran
    BUILD_COMMAND make
    INSTALL_COMMAND make install
  )


if(BUILD_ALL)
  include(ExternalProject)
    ExternalProject_Add(NCEPLIBS-bufr  
    PREFIX ${PROJECT_BINARY_DIR}/NCEPLIBS-bufr 
    CMAKE_ARGS
      -DCMAKE_INSTALL_PREFIX=${CMAKE_INSTALL_PREFIX}
      -DCMAKE_CXX_COMPILER=${CMAKE_CXX_COMPILER}
      -DCMAKE_C_COMPILER=${CMAKE_C_COMPILER}
      -DCMAKE_Fortran_COMPILER=${CMAKE_Fortran_COMPILER}
      -DCMAKE_BUILD_TYPE=RELEASE
    SOURCE_DIR ${PROJECT_SOURCE_DIR}/NCEPLIBS-bufr  
    INSTALL_DIR ${CMAKE_INSTALL_PREFIX}
    DEPENDS netcdf-fortran
    BUILD_COMMAND make
    INSTALL_COMMAND make install
  )

  include(ExternalProject)
    ExternalProject_Add(NCEPLIBS-crtm  
    PREFIX ${PROJECT_BINARY_DIR}/NCEPLIBS-crtm 
    CMAKE_ARGS
      -DCMAKE_INSTALL_PREFIX=${CMAKE_INSTALL_PREFIX}
      -DCMAKE_CXX_COMPILER=${CMAKE_CXX_COMPILER}
      -DCMAKE_C_COMPILER=${CMAKE_C_COMPILER}
      -DCMAKE_Fortran_COMPILER=${CMAKE_Fortran_COMPILER}
      -DCMAKE_BUILD_TYPE=RELEASE
    SOURCE_DIR ${PROJECT_SOURCE_DIR}/NCEPLIBS-crtm  
    INSTALL_DIR ${CMAKE_INSTALL_PREFIX}
    DEPENDS netcdf-fortran
    BUILD_COMMAND make
    INSTALL_COMMAND make install
  )

# include(ExternalProject)
#   ExternalProject_Add(NCEPLIBS-g2c   
#   PREFIX ${PROJECT_BINARY_DIR}/NCEPLIBS-g2c  
#   CMAKE_ARGS
#     -DCMAKE_INSTALL_PREFIX=${CMAKE_INSTALL_PREFIX}
#     -DCMAKE_CXX_COMPILER=${CMAKE_CXX_COMPILER}
#     -DCMAKE_C_COMPILER=${CMAKE_C_COMPILER}
#     -DCMAKE_Fortran_COMPILER=${CMAKE_Fortran_COMPILER}
#     -DCMAKE_BUILD_TYPE=RELEASE
#   SOURCE_DIR ${PROJECT_SOURCE_DIR}/NCEPLIBS-g2c   
#   INSTALL_DIR ${CMAKE_INSTALL_PREFIX}
#   BUILD_COMMAND make
#   INSTALL_COMMAND make install
# )

  include(ExternalProject)
    ExternalProject_Add(NCEPLIBS-g2tmpl
    PREFIX ${PROJECT_BINARY_DIR}/NCEPLIBS-g2tmpl
    CMAKE_ARGS
      -DCMAKE_INSTALL_PREFIX=${CMAKE_INSTALL_PREFIX}
      -DCMAKE_CXX_COMPILER=${CMAKE_CXX_COMPILER}
      -DCMAKE_C_COMPILER=${CMAKE_C_COMPILER}
      -DCMAKE_Fortran_COMPILER=${CMAKE_Fortran_COMPILER}
      -DCMAKE_BUILD_TYPE=RELEASE
    SOURCE_DIR ${PROJECT_SOURCE_DIR}/NCEPLIBS-g2tmpl
    INSTALL_DIR ${CMAKE_INSTALL_PREFIX}
    DEPENDS netcdf-fortran
    BUILD_COMMAND make
    INSTALL_COMMAND make install
  )

  include(ExternalProject)
    ExternalProject_Add(NCEPLIBS-gfsio 
    PREFIX ${PROJECT_BINARY_DIR}/NCEPLIBS-gfsio
    CMAKE_ARGS
      -DCMAKE_INSTALL_PREFIX=${CMAKE_INSTALL_PREFIX}
      -DCMAKE_CXX_COMPILER=${CMAKE_CXX_COMPILER}
      -DCMAKE_C_COMPILER=${CMAKE_C_COMPILER}
      -DCMAKE_Fortran_COMPILER=${CMAKE_Fortran_COMPILER}
      -DCMAKE_BUILD_TYPE=RELEASE
    SOURCE_DIR ${PROJECT_SOURCE_DIR}/NCEPLIBS-gfsio 
    INSTALL_DIR ${CMAKE_INSTALL_PREFIX}
    DEPENDS netcdf-fortran
    BUILD_COMMAND make
    INSTALL_COMMAND make install
  )

# include(ExternalProject)
#   ExternalProject_Add(NCEPLIBS-ip2   
#   PREFIX ${PROJECT_BINARY_DIR}/NCEPLIBS-ip2  
#   CMAKE_ARGS
#     -DCMAKE_INSTALL_PREFIX=${CMAKE_INSTALL_PREFIX}
#     -DCMAKE_CXX_COMPILER=${CMAKE_CXX_COMPILER}
#     -DCMAKE_C_COMPILER=${CMAKE_C_COMPILER}
#     -DCMAKE_Fortran_COMPILER=${CMAKE_Fortran_COMPILER}
#     -DCMAKE_BUILD_TYPE=RELEASE
#   SOURCE_DIR ${PROJECT_SOURCE_DIR}/NCEPLIBS-ip2   
#   INSTALL_DIR ${CMAKE_INSTALL_PREFIX}
#   BUILD_COMMAND make
#   INSTALL_COMMAND make install
# )

  include(ExternalProject)
    ExternalProject_Add(NCEPLIBS-landsfcutil
    PREFIX ${PROJECT_BINARY_DIR}/NCEPLIBS-landsfcutil
    CMAKE_ARGS
      -DCMAKE_INSTALL_PREFIX=${CMAKE_INSTALL_PREFIX}
      -DCMAKE_CXX_COMPILER=${CMAKE_CXX_COMPILER}
      -DCMAKE_C_COMPILER=${CMAKE_C_COMPILER}
      -DCMAKE_Fortran_COMPILER=${CMAKE_Fortran_COMPILER}
      -DCMAKE_BUILD_TYPE=RELEASE
    SOURCE_DIR ${PROJECT_SOURCE_DIR}/NCEPLIBS-landsfcutil
    INSTALL_DIR ${CMAKE_INSTALL_PREFIX}
    DEPENDS netcdf-fortran
    BUILD_COMMAND make
    INSTALL_COMMAND make install
  )

  include(ExternalProject)
    ExternalProject_Add(NCEPLIBS-sfcio 
    PREFIX ${PROJECT_BINARY_DIR}/NCEPLIBS-sfcio
    CMAKE_ARGS
      -DCMAKE_INSTALL_PREFIX=${CMAKE_INSTALL_PREFIX}
      -DCMAKE_CXX_COMPILER=${CMAKE_CXX_COMPILER}
      -DCMAKE_C_COMPILER=${CMAKE_C_COMPILER}
      -DCMAKE_Fortran_COMPILER=${CMAKE_Fortran_COMPILER}
      -DCMAKE_BUILD_TYPE=RELEASE
    SOURCE_DIR ${PROJECT_SOURCE_DIR}/NCEPLIBS-sfcio 
    INSTALL_DIR ${CMAKE_INSTALL_PREFIX}
    DEPENDS netcdf-fortran
    BUILD_COMMAND make
    INSTALL_COMMAND make install
  )

  include(ExternalProject)
    ExternalProject_Add(NCEPLIBS-w3emc 
    PREFIX ${PROJECT_BINARY_DIR}/NCEPLIBS-w3emc
    CMAKE_ARGS
      -DCMAKE_INSTALL_PREFIX=${CMAKE_INSTALL_PREFIX}
      -DCMAKE_CXX_COMPILER=${CMAKE_CXX_COMPILER}
      -DCMAKE_C_COMPILER=${CMAKE_C_COMPILER}
      -DCMAKE_Fortran_COMPILER=${CMAKE_Fortran_COMPILER}
      -DCMAKE_BUILD_TYPE=RELEASE
    SOURCE_DIR ${PROJECT_SOURCE_DIR}/NCEPLIBS-w3emc 
    DEPENDS NCEPLIBS-sigio 
    DEPENDS NCEPLIBS-nemsio
    INSTALL_DIR ${CMAKE_INSTALL_PREFIX}
    DEPENDS netcdf-fortran
    BUILD_COMMAND make
    INSTALL_COMMAND make install
  )

  include(ExternalProject)
    ExternalProject_Add(NCEPLIBS-prod_util
    PREFIX ${PROJECT_BINARY_DIR}/NCEPLIBS-prod_util
    CMAKE_ARGS
      -DCMAKE_INSTALL_PREFIX=${CMAKE_INSTALL_PREFIX}
      -DCMAKE_CXX_COMPILER=${CMAKE_CXX_COMPILER}
      -DCMAKE_C_COMPILER=${CMAKE_C_COMPILER}
      -DCMAKE_Fortran_COMPILER=${CMAKE_Fortran_COMPILER}
#     -DCMAKE_ADDITIONAL_INCLUDE_PATH=${CMAKE_INSTALL_PREFIX}/include;${CMAKE_INSTALL_PREFIX}/include_4;${CMAKE_INSTALL_PREFIX}/include_d
      -DW3NCO_4_LIBRARY=${CMAKE_INSTALL_PREFIX}/lib/libw3nco_v2.0.6_4.a
      -DCMAKE_BUILD_TYPE=RELEASE
    SOURCE_DIR ${PROJECT_SOURCE_DIR}/NCEPLIBS-prod_util
    DEPENDS NCEPLIBS-w3nco
    INSTALL_DIR ${CMAKE_INSTALL_PREFIX}
    DEPENDS netcdf-fortran
    BUILD_COMMAND make
    INSTALL_COMMAND make install
  )

  include(ExternalProject)
    ExternalProject_Add(NCEPLIBS-nemsiogfs
    PREFIX ${PROJECT_BINARY_DIR}/NCEPLIBS-nemsiogfs
    CMAKE_ARGS
      -DCMAKE_INSTALL_PREFIX=${CMAKE_INSTALL_PREFIX}
      -DCMAKE_CXX_COMPILER=${CMAKE_CXX_COMPILER}
      -DCMAKE_C_COMPILER=${CMAKE_C_COMPILER}
      -DCMAKE_Fortran_COMPILER=${CMAKE_Fortran_COMPILER}
      -DCMAKE_BUILD_TYPE=RELEASE
    SOURCE_DIR ${PROJECT_SOURCE_DIR}/NCEPLIBS-nemsiogfs
    DEPENDS NCEPLIBS-nemsio
    INSTALL_DIR ${CMAKE_INSTALL_PREFIX}
    DEPENDS netcdf-fortran
    BUILD_COMMAND make
    INSTALL_COMMAND make install
  )

if(0)  
  include(ExternalProject)
    ExternalProject_Add(NEMSfv3gfs
    PREFIX ${PROJECT_BINARY_DIR}/NEMSfv3gfs
    CMAKE_ARGS
      -DCMAKE_INSTALL_PREFIX=${CMAKE_INSTALL_PREFIX}
      -DCMAKE_CXX_COMPILER=${CMAKE_CXX_COMPILER}
      -DCMAKE_C_COMPILER=${CMAKE_C_COMPILER}
      -DCMAKE_Fortran_COMPILER=${CMAKE_Fortran_COMPILER}
      -DCMAKE_BUILD_TYPE=RELEASE
    SOURCE_DIR ${PROJECT_SOURCE_DIR}/NEMSfv3gfs
    DEPENDS NCEPLIBS-bufr
    DEPENDS NCEPLIBS-bacio
    DEPENDS NCEPLIBS-sigio
    DEPENDS NCEPLIBS-sfcio
    DEPENDS NCEPLIBS-nemsio
    DEPENDS NCEPLIBS-sp
    DEPENDS NCEPLIBS-w3nco
    DEPENDS NCEPLIBS-w3emc 
    DEPENDS netcdf-fortran
    INSTALL_DIR ${CMAKE_INSTALL_PREFIX}
    BUILD_COMMAND make
    INSTALL_COMMAND make install
  )
  
endif()
  include(ExternalProject)
    ExternalProject_Add(NCEPLIBS-post
    PREFIX ${PROJECT_BINARY_DIR}/NCEPLIBS-post
    CMAKE_ARGS
      -DCMAKE_INSTALL_PREFIX=${CMAKE_INSTALL_PREFIX}
      -DCMAKE_CXX_COMPILER=${CMAKE_CXX_COMPILER}
      -DCMAKE_C_COMPILER=${CMAKE_C_COMPILER}
      -DCMAKE_Fortran_COMPILER=${CMAKE_Fortran_COMPILER}
      -DNETCDF_DIR=${NETCDF_DIR}
      -DCMAKE_BUILD_TYPE=RELEASE
    SOURCE_DIR ${PROJECT_SOURCE_DIR}/NCEPLIBS-post
    DEPENDS NCEPLIBS-sigio
    DEPENDS NCEPLIBS-w3nco
    DEPENDS NCEPLIBS-g2
    DEPENDS NCEPLIBS-g2tmpl
    DEPENDS NCEPLIBS-bacio
    DEPENDS NCEPLIBS-ip
    DEPENDS NCEPLIBS-sp
    DEPENDS NCEPLIBS-sfcio
    DEPENDS NCEPLIBS-nemsio
    DEPENDS NCEPLIBS-w3emc 
    DEPENDS NCEPLIBS-gfsio 
    DEPENDS NCEPLIBS-crtm
    DEPENDS netcdf-fortran
    INSTALL_DIR ${CMAKE_INSTALL_PREFIX}
    BUILD_COMMAND make -j 10
    INSTALL_COMMAND make install
  )
  

endif()


