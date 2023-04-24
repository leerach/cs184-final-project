#!/bin/sh
set -e
if test "$CONFIGURATION" = "Debug"; then :
  cd /Users/miclin/Developer/cs184/proj-final
  make -f /Users/miclin/Developer/cs184/proj-final/CMakeScripts/ReRunCMake.make
fi
if test "$CONFIGURATION" = "Release"; then :
  cd /Users/miclin/Developer/cs184/proj-final
  make -f /Users/miclin/Developer/cs184/proj-final/CMakeScripts/ReRunCMake.make
fi
if test "$CONFIGURATION" = "MinSizeRel"; then :
  cd /Users/miclin/Developer/cs184/proj-final
  make -f /Users/miclin/Developer/cs184/proj-final/CMakeScripts/ReRunCMake.make
fi
if test "$CONFIGURATION" = "RelWithDebInfo"; then :
  cd /Users/miclin/Developer/cs184/proj-final
  make -f /Users/miclin/Developer/cs184/proj-final/CMakeScripts/ReRunCMake.make
fi

