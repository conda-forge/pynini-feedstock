#! /usr/bin/env bash

export CFLAGS="${CFLAGS} -D_LIBCPP_DISABLE_AVAILABILITY"

{{ PYTHON }} -m pip install . --no-deps -vv

cp extensions/_pywrapfst.h "${PREFIX}/include/_pywrapfst.h"