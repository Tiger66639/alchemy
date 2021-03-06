###############################################################################
## @file variables.mk
## @author Y.M. Morgan
## @date 2013/04/02
##
## List LOCAL_XXX and TARGET_XXX variables .
###############################################################################

###############################################################################
## List of LOCAL_XXX variables that can be set by makefiles.
###############################################################################
vars-LOCAL :=
macros-LOCAL :=

# Path of the root of module
vars-LOCAL += PATH

# Name of the module
vars-LOCAL += MODULE

# Name of the module for host
vars-LOCAL += HOST_MODULE

# Override the name of what will be generated
vars-LOCAL += MODULE_FILENAME

# Description of the module
vars-LOCAL += DESCRIPTION

# Category path of the module
vars-LOCAL += CATEGORY_PATH

# List of 'done' files indicating internal steps already done and that does not need
# to be executed next time unless a force is requested
# Name is relative to build directory
vars-LOCAL += DONE_FILES

# List of custom targets in atom.mk. This list is used to propagate correctly
# dependencies (mainly prerequisites). Without it a commands of a custom target
# may be executed BEFORE other prerequisites of the module, causing all sort of
# issues
vars-LOCAL += CUSTOM_TARGETS

vars-LOCAL += CUSTOM_MACROS

# Source files to compile
# All files are relative to LOCAL_PATH
vars-LOCAL += SRC_FILES

# Generated source files to compile
# All files are relative to build directory
vars-LOCAL += GENERATED_SRC_FILES

# Static libraries that you want to include in your module
# Names of modules in the build system, without path/prefix/suffix
vars-LOCAL += STATIC_LIBRARIES

# Static libraries that you want to include as a whole in your module
# To generate a '.so' from a '.a' for ex
# Names of modules in the build system, without path/prefix/suffix
vars-LOCAL += WHOLE_STATIC_LIBRARIES

# Libraries you directly link against
# Names of modules in the build system, without path/prefix/suffix
vars-LOCAL += SHARED_LIBRARIES

# External libraries (not built directly by the build system rules)
# Used as dependencies to trigger indirect build.
vars-LOCAL += EXTERNAL_LIBRARIES

# General libraries to add in dependency based on their actual class (STATIC/SHARED/EXTERNAL).
vars-LOCAL += LIBRARIES

# Libraries whose dependency is conditional
# Format : list of pair <var>:<lib>
# <var> : variable to test
# <lib> : library to add in LOCAL_LIBRARIES if <var> is defined
vars-LOCAL += CONDITIONAL_LIBRARIES

# Modules whose headers are required to build
vars-LOCAL += DEPENDS_HEADERS

# Other modules required (at runtime for example). But not required for build
# TODO: change the meaning of DEPENDS_MODULES to introduce build order
# keeping REQUIRED_MODULES with no build order
vars-LOCAL += DEPENDS_MODULES
vars-LOCAL += REQUIRED_MODULES

# Host modules required to build
vars-LOCAL += DEPENDS_HOST_MODULES

# Additional include directories to pass into the C/C++ compilers
# Format : <fullpath> (-I will be prepended automatically)
vars-LOCAL += C_INCLUDES

# Additional flags to pass into the C or C++ compiler
vars-LOCAL += CFLAGS

# Additional flags to pass into only the C++ compiler
vars-LOCAL += CXXFLAGS

# Additional flags to pass into the vala compiler
vars-LOCAL += VALAFLAGS

# Additional flags to pass into the static library generator
vars-LOCAL += ARFLAGS

# Additional flags to pass into the linker
vars-LOCAL += LDFLAGS

# Additional libraries to pass into the linker
# Format : -l<name>
vars-LOCAL += LDLIBS

# Precompiled file
# Relative to LOCAL_PATH
vars-LOCAL += PRECOMPILED_FILE

# Arm compilation mode (arm or thumb)
vars-LOCAL += ARM_MODE

# Paths to config.in files to configure the module
# Relative to LOCAL_PATH
vars-LOCAL += CONFIG_FILES

# List of prerequisites for all objects
vars-LOCAL += PREREQUISITES

# ParrotBuild compatibility hook required
vars-LOCAL += PBUILD_HOOK
vars-LOCAL += PBUILD_ALLOW_FORCE_STATIC

# Force modules that depends on this one to use whole-static library
vars-LOCAL += FORCE_WHOLE_STATIC_LIBRARY

# If set to "1", generated object will not be copied to staging/final dirs
# Object can still explicitly be copied to staging dir through the atom.mk
# and will then be copied to the final dir through the makefinal process
vars-LOCAL += NO_COPY_TO_STAGING

# Copy everything under LOCAL_PATH in build directory first.
vars-LOCAL += COPY_TO_BUILD_DIR

# Files and directories to delete during a clean
vars-LOCAL += CLEAN_FILES
vars-LOCAL += CLEAN_DIRS

# List of properties to add in build.prop and then loaded by boxinit
# Format : list of pair <key>=<value>
vars-LOCAL += BUILD_PROPERTIES

# Macro to be executed before installing binary in staging dir
macros-LOCAL += CMD_PRE_INSTALL

# Macro to be executed after dirclean is done
macros-LOCAL += CMD_POST_DIRCLEAN

# Archive extraction + patch support
vars-LOCAL += ARCHIVE
vars-LOCAL += ARCHIVE_VERSION
vars-LOCAL += ARCHIVE_SUBDIR
vars-LOCAL += ARCHIVE_PATCHES
macros-LOCAL += ARCHIVE_CMD_UNPACK
macros-LOCAL += ARCHIVE_CMD_POST_UNPACK

# Autotools customization
vars-LOCAL += AUTOTOOLS_CONFIGURE_ENV
vars-LOCAL += AUTOTOOLS_CONFIGURE_ARGS
vars-LOCAL += AUTOTOOLS_CONFIGURE_SCRIPT
vars-LOCAL += AUTOTOOLS_MAKE_BUILD_ENV
vars-LOCAL += AUTOTOOLS_MAKE_BUILD_ARGS
vars-LOCAL += AUTOTOOLS_MAKE_INSTALL_ENV
vars-LOCAL += AUTOTOOLS_MAKE_INSTALL_ARGS
macros-LOCAL += AUTOTOOLS_CMD_CONFIGURE
macros-LOCAL += AUTOTOOLS_CMD_BUILD
macros-LOCAL += AUTOTOOLS_CMD_INSTALL
macros-LOCAL += AUTOTOOLS_CMD_CLEAN
macros-LOCAL += AUTOTOOLS_CMD_POST_CONFIGURE
macros-LOCAL += AUTOTOOLS_CMD_POST_BUILD
macros-LOCAL += AUTOTOOLS_CMD_POST_INSTALL
macros-LOCAL += AUTOTOOLS_CMD_POST_CLEAN

# CMake customization
vars-LOCAL += CMAKE_CONFIGURE_ARGS
vars-LOCAL += CMAKE_MAKE_BUILD_ARGS
vars-LOCAL += CMAKE_MAKE_INSTALL_ARGS
macros-LOCAL += CMAKE_CMD_CONFIGURE
macros-LOCAL += CMAKE_CMD_BUILD
macros-LOCAL += CMAKE_CMD_INSTALL
macros-LOCAL += CMAKE_CMD_CLEAN
macros-LOCAL += CMAKE_CMD_POST_CONFIGURE
macros-LOCAL += CMAKE_CMD_POST_BUILD
macros-LOCAL += CMAKE_CMD_POST_INSTALL
macros-LOCAL += CMAKE_CMD_POST_CLEAN

# QMake customization
vars-LOCAL += QMAKE_PRO_FILE

# Python extension customization
vars-LOCAL += PYTHONEXT_SETUP_PY_ENV
vars-LOCAL += PYTHONEXT_SETUP_PY_ARGS

# GObject introspection customization
vars-LOCAL += GI_NAMESPACE
vars-LOCAL += GI_LIBRARY
vars-LOCAL += GI_ID_PREFIX

# Exported stuff (will be added in modules depending on this one)
vars-LOCAL += EXPORT_C_INCLUDES
vars-LOCAL += EXPORT_CFLAGS
vars-LOCAL += EXPORT_CXXFLAGS
vars-LOCAL += EXPORT_LDLIBS
vars-LOCAL += EXPORT_PREREQUISITES

# Module class :
# STATIC_LIBRARY
# SHARED_LIBRARY
# EXECUTABLE
# PREBUILT
# AUTOTOOLS
# CMAKE
# CUSTOM
vars-LOCAL += MODULE_CLASS

# List of files to copy
# Format <src>:<dst>
# src : source, relative to module path or abosulte path
# dst : destination, relative to staging dir or abosulte path, ends with '/'
#       to use same basename as <src>
vars-LOCAL += COPY_FILES

# List of links to create
# Format <name>:<target>
# name : name of the link (relative to staging dir)
# target : target of the link
vars-LOCAL += CREATE_LINKS

# List of headers to install
# Format <src>[:<dst]>
# src : source, relative to module path or abosulte path
# dst : destination, relative to staging dir or abosulte path, ends with '/'
#       to use same basename as <src>. If not specified, will be put in
#       usr/include directory of staging directory
vars-LOCAL += INSTALL_HEADERS

# Name of the doxyfile used for documentation generation
# If none specified, LOCAL_PATH will be added to DOXYGEN_INPUT
vars-LOCAL += DOXYFILE

# List of files or directory to add to doxygen generation. If no DOXYFILE
# is given, LOCAL_PATH will be added automatically
vars-LOCAL += DOXYGEN_INPUT

# Arguments to pass to code checker (linux checkpatch by default)
vars-LOCAL += CODECHECK_ARGS
vars-LOCAL += CPPCHECK_ARGS

# Other variables used internally
vars-LOCAL += BUILD_MODULE
vars-LOCAL += STAGING_MODULE
vars-LOCAL += FINAL_MODULE
vars-LOCAL += DESTDIR
vars-LOCAL += TARGETS
vars-LOCAL += REVISION
vars-LOCAL += REVISION_DESCRIBE
vars-LOCAL += SDK

vars-LOCAL += USE_CLANG
vars-LOCAL += CLANG_PATH

###############################################################################
## List of TARGET_XXX variables that can be used by makefiles.
## They shall NOT be modified by makefiles
###############################################################################
vars-TARGET :=

# Global settings
vars-TARGET += PRODUCT
vars-TARGET += PRODUCT_VARIANT
vars-TARGET += OS
vars-TARGET += OS_FLAVOUR
vars-TARGET += ARCH
vars-TARGET += CPU
vars-TARGET += CPU_ARMV7A_NEON # Deprecated, use CPU_HAS_NEON
vars-TARGET += LIBC
vars-TARGET += DEFAULT_ARM_MODE
vars-TARGET += USE_CXX_EXCEPTIONS
vars-TARGET += CPU_HAS_SSE2
vars-TARGET += CPU_HAS_SSSE3
vars-TARGET += CPU_HAS_NEON

# Folders
vars-TARGET += OUT
vars-TARGET += OUT_BUILD
vars-TARGET += OUT_STAGING
vars-TARGET += OUT_FINAL
vars-TARGET += OUT_DOC
vars-TARGET += CONFIG_DIR
vars-TARGET += SKEL_DIRS
vars-TARGET += SCAN_PRUNE_DIRS
vars-TARGET += SCAN_ADD_DIRS
vars-TARGET += SDK_DIRS

# Other specialized settings
vars-TARGET += FORCE_STATIC
vars-TARGET += PBUILD_FORCE_STATIC
vars-TARGET += PBUILD_HOOK_USE_DESCRIBE
vars-TARGET += NOSTRIP_FINAL
vars-TARGET += FORCE_EXTERNAL_CHECKS
vars-TARGET += BUILD_PROPERTIES
vars-TARGET += ADD_BUILDID_SECTION
vars-TARGET += BUILDID_SECTION_NAME
vars-TARGET += ADD_DEPENDS_SECTION
vars-TARGET += DEPENDS_SECTION_NAME
vars-TARGET += CHROOT
vars-TARGET += IMAGE_FORMAT
vars-TARGET += IMAGE_OPTIONS
vars-TARGET += IMAGE_PATH_MAP_FILE
vars-TARGET += INCLUDE_GCONV
vars-TARGET += INCLUDE_TZDATA
vars-TARGET += INCLUDE_GDBSERVER
vars-TARGET += LINUX_DIR
vars-TARGET += LINUX_DEVICE_TREE
vars-TARGET += LINUX_GENERATE_UIMAGE
vars-TARGET += LINUX_MAKE_BUILD_ARGS
vars-TARGET += LINUX_LINK_CPIO_IMAGE
vars-TARGET += PERMISSIONS_FILES
vars-TARGET += SCAN_FOLLOW_LINKS
vars-TARGET += STRIP_FILTER
vars-TARGET += LDCONFIG_DIRS

# Tools
vars-TARGET += CROSS
vars-TARGET += CC
vars-TARGET += CXX
vars-TARGET += CPP
vars-TARGET += AR
vars-TARGET += AS
vars-TARGET += LD
vars-TARGET += NM
vars-TARGET += STRIP
vars-TARGET += OBJCOPY
vars-TARGET += OBJDUMP
vars-TARGET += RANLIB

# Flags for tools
vars-TARGET += GLOBAL_C_INCLUDES
vars-TARGET += GLOBAL_CFLAGS
vars-TARGET += GLOBAL_CXXFLAGS
vars-TARGET += GLOBAL_CFLAGS_arm
vars-TARGET += GLOBAL_CFLAGS_arm_gcc
vars-TARGET += GLOBAL_CFLAGS_thumb
vars-TARGET += GLOBAL_CFLAGS_thumb_gcc
vars-TARGET += GLOBAL_CFLAGS_gcc
vars-TARGET += GLOBAL_CFLAGS_clang
vars-TARGET += GLOBAL_LDFLAGS
vars-TARGET += GLOBAL_LDFLAGS_gcc
vars-TARGET += GLOBAL_LDFLAGS_clang
vars-TARGET += GLOBAL_LDLIBS
vars-TARGET += GLOBAL_LDFLAGS_SHARED
vars-TARGET += GLOBAL_LDFLAGS_SHARED_gcc
vars-TARGET += GLOBAL_LDFLAGS_SHARED_clang
vars-TARGET += GLOBAL_LDLIBS_SHARED
vars-TARGET += GLOBAL_ARFLAGS
vars-TARGET += GLOBAL_PCH_FLAGS
vars-TARGET += GLOBAL_VALAFLAGS

# Cuda
vars-TARGET += NVCC
vars-TARGET += GLOBAL_NVCFLAGS

# Internal settings
vars-TARGET += STATIC_LIB_SUFFIX
vars-TARGET += SHARED_LIB_SUFFIX
vars-TARGET += EXE_SUFFIX
vars-TARGET += PRODUCT_FULL_NAME
vars-TARGET += CC_PATH
vars-TARGET += CC_VERSION
vars-TARGET += COMPILER_PATH
vars-TARGET += TRIPLET

# Autotools settings
vars-TARGET += AUTOTOOLS_CPPFLAGS
vars-TARGET += AUTOTOOLS_CFLAGS
vars-TARGET += AUTOTOOLS_CXXFLAGS
vars-TARGET += AUTOTOOLS_LDFLAGS
vars-TARGET += AUTOTOOLS_DYN_LDFLAGS
vars-TARGET += AUTOTOOLS_CONFIGURE_ENV
vars-TARGET += AUTOTOOLS_CONFIGURE_ARGS
vars-TARGET += AUTOTOOLS_MAKE_ENV
vars-TARGET += AUTOTOOLS_MAKE_ARGS
vars-TARGET += AUTOTOOLS_CONFIGURE_PREFIX
vars-TARGET += AUTOTOOLS_CONFIGURE_SYSCONFDIR
vars-TARGET += AUTOTOOLS_INSTALL_DESTDIR
vars-TARGET += PKG_CONFIG_ENV

# This variable can be modified by some makefiles (os that needs to install
# headers prior to start anything)
#vars-TARGET += GLOBAL_PREREQUISITES
#vars-TARGET += TARGET_LINUX_CROSS

###############################################################################
## List of TARGET_SETUP_XXX variables that will be set to values after external
## setup and before internal one.
## They will the be used as initial TARGET_XXX variables in generated sdk.
###############################################################################
vars-TARGET_SETUP :=

# Global settings
vars-TARGET_SETUP += OS
vars-TARGET_SETUP += OS_FLAVOUR
vars-TARGET_SETUP += ARCH
vars-TARGET_SETUP += CPU
vars-TARGET_SETUP += LIBC
vars-TARGET_SETUP += DEFAULT_ARM_MODE
vars-TARGET_SETUP += USE_CXX_EXCEPTIONS

# Tools
vars-TARGET_SETUP += CROSS
vars-TARGET_SETUP += CC
vars-TARGET_SETUP += CXX
vars-TARGET_SETUP += CPP
vars-TARGET_SETUP += AR
vars-TARGET_SETUP += AS
vars-TARGET_SETUP += LD
vars-TARGET_SETUP += NM
vars-TARGET_SETUP += STRIP
vars-TARGET_SETUP += OBJCOPY
vars-TARGET_SETUP += OBJDUMP
vars-TARGET_SETUP += RANLIB

# Flags for tools
vars-TARGET_SETUP += GLOBAL_C_INCLUDES
vars-TARGET_SETUP += GLOBAL_CFLAGS
vars-TARGET_SETUP += GLOBAL_CXXFLAGS
vars-TARGET_SETUP += GLOBAL_CFLAGS_arm
vars-TARGET_SETUP += GLOBAL_CFLAGS_arm_gcc
vars-TARGET_SETUP += GLOBAL_CFLAGS_thumb
vars-TARGET_SETUP += GLOBAL_CFLAGS_thumb_gcc
vars-TARGET_SETUP += GLOBAL_CFLAGS_gcc
vars-TARGET_SETUP += GLOBAL_CFLAGS_clang
vars-TARGET_SETUP += GLOBAL_LDFLAGS
vars-TARGET_SETUP += GLOBAL_LDFLAGS_gcc
vars-TARGET_SETUP += GLOBAL_LDFLAGS_clang
vars-TARGET_SETUP += GLOBAL_LDLIBS
vars-TARGET_SETUP += GLOBAL_LDFLAGS_SHARED
vars-TARGET_SETUP += GLOBAL_LDFLAGS_SHARED_gcc
vars-TARGET_SETUP += GLOBAL_LDFLAGS_SHARED_clang
vars-TARGET_SETUP += GLOBAL_LDLIBS_SHARED
vars-TARGET_SETUP += GLOBAL_ARFLAGS
vars-TARGET_SETUP += GLOBAL_PCH_FLAGS
vars-TARGET_SETUP += GLOBAL_VALAFLAGS
vars-TARGET_SETUP += LDCONFIG_DIRS

# Cuda
vars-TARGET_SETUP += NVCC
vars-TARGET_SETUP += GLOBAL_NVCFLAGS
