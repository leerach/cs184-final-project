# C++ Font Rendering Milestone Status Report
## CS184 - Patrick Cui, Kelly Hu, Michael Lin, Rachel Lee

### Accomplished
- Created a FontReader class that uses the FreeType library to process a TTF file and return a vector of ConicBezierCurve which contains a 2D Vector of startPoint, endPoint, and controlPoint
    - initialize(): Initializes the FreeType library and returns an error code if it fails.
    - loadTTF(const char* path): Loads a TrueType font file located at the given path and returns an error code if it fails.
    - readCurves(const char c): Reads the glyph for the given character c and returns a vector of ConicBezierCurve objects representing the vector paths of the glyph.
    The readCurves function decomposes the glyph's outline into a series of straight lines and quadratic Bezier curves using FreeType's FT_Outline_Decompose function. The decomposed curves are stored in a vector of ConicBezierCurve objects.
- Implemented a UI using AppKit that renders a window with an OpenGL view and takes in user text as input and displays a render button to eventually render a letter in the window.


### Preliminary Results
- Current UI:
![Current UI](/docs/images/ui.png)

- Anchor Points & Bezier Curves:
![Anchor Points](/docs/images/FontReader.png)

### Progress Reflection

- Our initial goal was to integrate the nanogui from Project 4 ClothSim into our repo to render the Bezier curves in the GUI.
- However, the repo began to get more messy and complicated to work with across the team due to local build errors, so we decided to create a new repo and use AppKit instead for the Model-View-Controller.
- Since some of the team members were already familiar with how to use AppKit, we decided to move forward with this library to implement the rendered window.


### Revised TODO
- Convert raw anchor points to ones we can render using a known algorithm (such as de casteljau's algorithm) 

**Video Link:**
https://drive.google.com/file/d/1q8iR0E-3vQEv11JkJXeweCCx8BOcaj8-/view?usp=share_link 

**Slides Link:**
https://docs.google.com/presentation/d/1wWpdOr6KtxQWiHJTQNXE9imhYonqXX_ZKGg0gPIZ440/edit?usp=sharing