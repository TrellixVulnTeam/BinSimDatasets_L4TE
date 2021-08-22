# Install script for directory: /root/OPenSSL-datasets/boringssl-90/decrepit

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/root/OPenSSL-datasets/boringssl-90/decrepit/bio/cmake_install.cmake")
  include("/root/OPenSSL-datasets/boringssl-90/decrepit/blowfish/cmake_install.cmake")
  include("/root/OPenSSL-datasets/boringssl-90/decrepit/cast/cmake_install.cmake")
  include("/root/OPenSSL-datasets/boringssl-90/decrepit/des/cmake_install.cmake")
  include("/root/OPenSSL-datasets/boringssl-90/decrepit/dh/cmake_install.cmake")
  include("/root/OPenSSL-datasets/boringssl-90/decrepit/dsa/cmake_install.cmake")
  include("/root/OPenSSL-datasets/boringssl-90/decrepit/evp/cmake_install.cmake")
  include("/root/OPenSSL-datasets/boringssl-90/decrepit/obj/cmake_install.cmake")
  include("/root/OPenSSL-datasets/boringssl-90/decrepit/rc4/cmake_install.cmake")
  include("/root/OPenSSL-datasets/boringssl-90/decrepit/ripemd/cmake_install.cmake")
  include("/root/OPenSSL-datasets/boringssl-90/decrepit/rsa/cmake_install.cmake")
  include("/root/OPenSSL-datasets/boringssl-90/decrepit/ssl/cmake_install.cmake")
  include("/root/OPenSSL-datasets/boringssl-90/decrepit/x509/cmake_install.cmake")
  include("/root/OPenSSL-datasets/boringssl-90/decrepit/xts/cmake_install.cmake")

endif()

