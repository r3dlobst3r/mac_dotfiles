#!/bin/bash

CPPFLAGS="-I/opt/homebrew/include -L/opt/homebrew/lib" pip install 'dfindexeddb[plugins]'
CPPFLAGS="-I/opt/homebrew/include -L/opt/homebrew/lib" pip install dfindexeddb
