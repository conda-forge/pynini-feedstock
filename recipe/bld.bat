@echo on


set "CFLAGS=%CFLAGS% \D_LIBCPP_DISABLE_AVAILABILITY"

%PYTHON% -m pip install . --no-deps -vv
if %ERRORLEVEL% neq 0 exit 1

echo f | xcopy /f /y extensions\_pywrapfst.h "%LIBRARY_PREFIX%\include\_pywrapfst.h"
if %ERRORLEVEL% neq 0 exit 1
