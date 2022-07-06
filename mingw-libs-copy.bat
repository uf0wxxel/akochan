@echo off
for /f %%i in ('where g++') do set "MINGW_PATH=%%i"
set MINGW_DIR=
for /f "tokens=* delims=\" %%i in ("%MINGW_PATH%") do set "MINGW_DIR=%%~dpi"
mkdir MINGW_RELEASE_LIBS
copy "%MINGW_DIR%libgcc_s_seh-1.dll" .\MINGW_RELEASE_LIBS\
copy "%MINGW_DIR%libgomp-1.dll" .\MINGW_RELEASE_LIBS\
copy "%MINGW_DIR%libstdc++-6.dll" .\MINGW_RELEASE_LIBS\
copy "%MINGW_DIR%libwinpthread-1.dll" .\MINGW_RELEASE_LIBS\
