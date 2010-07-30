
!win32-g++: error(This project file is only for Windows builds using MinGW/g++.)
!no_messages {
	message()
	message(Building QuteCsound for Windows using MinGW/g++.)
}

CONFIG -= debug_and_release debug_and_release_target \
	copy_dir_files precompile_header shared

# Set default paths
DEFAULT_CSOUND_API_INCLUDE_DIRS = "$$(PROGRAMFILES)\Csound\include"
DEFAULT_CSOUND_INTERFACES_INCLUDE_DIRS = $${DEFAULT_CSOUND_API_INCLUDE_DIRS}
DEFAULT_CSOUND_LIBRARY_DIRS = "$$(PROGRAMFILES)\Csound\bin"
DEFAULT_LIBSNDFILE_INCLUDE_DIRS = "$$(PROGRAMFILES)\Mega-Nerd\libsndfile\include"
DEFAULT_LIBSNDFILE_LIBRARY_DIRS = $${DEFAULT_CSOUND_LIBRARY_DIRS}
build32: DEFAULT_CSOUND_LIBS = csound32.dll.5.2
build64: DEFAULT_CSOUND_LIBS = csound64.dll.5.2
CSND_LIB = csnd.dll
LIBSNDFILE_LIB = libsndfile-1.dll

DEFAULT_PYTHONQT_INCLUDE_DIRS = "$$(PROGRAMFILES)\PythonQt"
DEFAULT_PYTHONQT_LIBRARY_DIRS =  "$$(PROGRAMFILES)\PythonQt"
DEFAULT_PYTHONQT_TREE_DIRS =
PYTHONQT_LIB = libPythonQt_QtAll.dll

# Do configuration step
include(config.pri)

# Use results from config step
RC_FILE = "$${PWD}/src/qutecsound.rc"
LCSOUND = "$${CSOUND_LIBRARY_DIR}/$${CSOUND_LIB}"
LCSND = "$${CSOUND_LIBRARY_DIR}/$${CSND_LIB}"
LSNDFILE = "$${LIBSNDFILE_LIBRARY_DIR}/$${LIBSNDFILE_LIB}"
