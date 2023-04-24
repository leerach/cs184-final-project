#!/bin/sh
set -e
if test "$CONFIGURATION" = "Debug"; then :
  cd /Users/miclin/Developer/cs184/proj-final/ext/nanogui
  /opt/homebrew/Cellar/cmake/3.25.2/bin/cmake -E cmake_symlink_library /Users/miclin/Developer/cs184/proj-final/ext/nanogui/Debug/libnanogui.dylib /Users/miclin/Developer/cs184/proj-final/ext/nanogui/Debug/libnanogui.dylib /Users/miclin/Developer/cs184/proj-final/ext/nanogui/Debug/libnanogui.dylib
fi
if test "$CONFIGURATION" = "Release"; then :
  cd /Users/miclin/Developer/cs184/proj-final/ext/nanogui
  /opt/homebrew/Cellar/cmake/3.25.2/bin/cmake -E cmake_symlink_library /Users/miclin/Developer/cs184/proj-final/ext/nanogui/Release/libnanogui.dylib /Users/miclin/Developer/cs184/proj-final/ext/nanogui/Release/libnanogui.dylib /Users/miclin/Developer/cs184/proj-final/ext/nanogui/Release/libnanogui.dylib
fi
if test "$CONFIGURATION" = "MinSizeRel"; then :
  cd /Users/miclin/Developer/cs184/proj-final/ext/nanogui
  /opt/homebrew/Cellar/cmake/3.25.2/bin/cmake -E cmake_symlink_library /Users/miclin/Developer/cs184/proj-final/ext/nanogui/MinSizeRel/libnanogui.dylib /Users/miclin/Developer/cs184/proj-final/ext/nanogui/MinSizeRel/libnanogui.dylib /Users/miclin/Developer/cs184/proj-final/ext/nanogui/MinSizeRel/libnanogui.dylib
fi
if test "$CONFIGURATION" = "RelWithDebInfo"; then :
  cd /Users/miclin/Developer/cs184/proj-final/ext/nanogui
  /opt/homebrew/Cellar/cmake/3.25.2/bin/cmake -E cmake_symlink_library /Users/miclin/Developer/cs184/proj-final/ext/nanogui/RelWithDebInfo/libnanogui.dylib /Users/miclin/Developer/cs184/proj-final/ext/nanogui/RelWithDebInfo/libnanogui.dylib /Users/miclin/Developer/cs184/proj-final/ext/nanogui/RelWithDebInfo/libnanogui.dylib
fi

