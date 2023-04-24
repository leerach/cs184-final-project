#!/bin/sh
set -e
if test "$CONFIGURATION" = "Debug"; then :
  cd /Users/miclin/Developer/cs184/proj-final/ext/nanogui
  /opt/homebrew/Cellar/cmake/3.25.2/bin/cmake -DOUTPUT_C=nanogui_resources.cpp -DOUTPUT_H=nanogui_resources.h -DINPUT_FILES=/Users/miclin/Developer/cs184/proj-final/ext/nanogui/resources/Roboto-Bold.ttf,/Users/miclin/Developer/cs184/proj-final/ext/nanogui/resources/Roboto-Regular.ttf,/Users/miclin/Developer/cs184/proj-final/ext/nanogui/resources/entypo.ttf -P /Users/miclin/Developer/cs184/proj-final/ext/nanogui/resources/bin2c.cmake
fi
if test "$CONFIGURATION" = "Release"; then :
  cd /Users/miclin/Developer/cs184/proj-final/ext/nanogui
  /opt/homebrew/Cellar/cmake/3.25.2/bin/cmake -DOUTPUT_C=nanogui_resources.cpp -DOUTPUT_H=nanogui_resources.h -DINPUT_FILES=/Users/miclin/Developer/cs184/proj-final/ext/nanogui/resources/Roboto-Bold.ttf,/Users/miclin/Developer/cs184/proj-final/ext/nanogui/resources/Roboto-Regular.ttf,/Users/miclin/Developer/cs184/proj-final/ext/nanogui/resources/entypo.ttf -P /Users/miclin/Developer/cs184/proj-final/ext/nanogui/resources/bin2c.cmake
fi
if test "$CONFIGURATION" = "MinSizeRel"; then :
  cd /Users/miclin/Developer/cs184/proj-final/ext/nanogui
  /opt/homebrew/Cellar/cmake/3.25.2/bin/cmake -DOUTPUT_C=nanogui_resources.cpp -DOUTPUT_H=nanogui_resources.h -DINPUT_FILES=/Users/miclin/Developer/cs184/proj-final/ext/nanogui/resources/Roboto-Bold.ttf,/Users/miclin/Developer/cs184/proj-final/ext/nanogui/resources/Roboto-Regular.ttf,/Users/miclin/Developer/cs184/proj-final/ext/nanogui/resources/entypo.ttf -P /Users/miclin/Developer/cs184/proj-final/ext/nanogui/resources/bin2c.cmake
fi
if test "$CONFIGURATION" = "RelWithDebInfo"; then :
  cd /Users/miclin/Developer/cs184/proj-final/ext/nanogui
  /opt/homebrew/Cellar/cmake/3.25.2/bin/cmake -DOUTPUT_C=nanogui_resources.cpp -DOUTPUT_H=nanogui_resources.h -DINPUT_FILES=/Users/miclin/Developer/cs184/proj-final/ext/nanogui/resources/Roboto-Bold.ttf,/Users/miclin/Developer/cs184/proj-final/ext/nanogui/resources/Roboto-Regular.ttf,/Users/miclin/Developer/cs184/proj-final/ext/nanogui/resources/entypo.ttf -P /Users/miclin/Developer/cs184/proj-final/ext/nanogui/resources/bin2c.cmake
fi

