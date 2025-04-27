#!/bin/bash

CPPFLAGS="-I/opt/homebrew/include -L/opt/homebrew/lib" python3 -m pip install --user dfindexeddb
CPPFLAGS="-I/opt/homebrew/include -L/opt/homebrew/lib" python3 -m pip install --user 'dfindexeddb[plugins]'
