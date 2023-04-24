# C++ Font Rendering Engine
## CS184 - Patrick Cui, Kelly Hu, Michael Lin
For the font rendering project, we will use an online library TrueType .tff or OpenType files and write a Bezier curve rasterizer to display them. We plan on implementing a way to take an input of a string or paragraph and display it rendered inside a viewport, with support for features like font sizes, colors, and font type. 
### Project Description
We hope to implement a C++ font rendering engine where the program takes in user input as a list of characters and renders them to the viewport according to the specifications in the TTF files of the selected fonts. First, we will convert the TTF files for the selected font into a list of anchor points and constraints. Then, we will use these anchors and constraints to draw curves and vectors on the viewport using algorithms from both class materials and from outside research.  
![Sample sentences](/docs/cs184-description.png)

### Goals & Deliverables
#### (1) Deliverable Plan: 

- Input a letter or string or small paragraph into Terminal and have it show up rendered in a viewport. The user can select a dropdown font and we would render the font on the GUI.
- We can measure performance by using a timer while running the program and rendering fonts to record how long the algorithm takes to run. 
- For measuring font alignment, we will calculate the bounding box of the font and find the smallest rectangle that completely encloses the font. This can be done by calculating the minimum and maximum x and y coordinates of the Bézier curve points that make up the font.

- We also plan on implementing a baseline of the font where font letters sit on the imaginary line upon which the letters of a font sit to help ensure font alignment. The Bézier curves that make up the font can be analyzed by either using the vertical position of the control points or the vertical points of the bounding boxes to determine the position of the baseline.


- We also plan on supporting different font sizes and colors.

#### (2) Aspirational (Stretch) Goals: 

- A potential stretch goal we can implement is that we can account for differing thicknesses of font weights by scaling the font by a percentage. When a font is rendered at a different size, this vector is transformed according to a scaling factor to create a new set of curves that represent the scaled glyph.
- We can also hope to implement supersampling for the rasterizer to reduce aliasing artifacts such as jagged edges and moiré patterns that can occur when rendering at low resolutions. Since this also might lead to slower runtimes, we can keep record of the runtimes of the program to track the different render times.
#### (3) Potential problems / challenges
- A possible problem we can encounter is the issue of rendering a “pixel perfect” font where there could be precision errors in the rendering algorithm that rounds a pixel position up or down and would create different sizes of the same font distinguishable to the naked eye. 


### Schedule
**Week 1:** Convert TTF files to a mapping between char and anchor points / raw positions  (Maybe figure out the anchor / constraint lines) 
**Week 2:** Figure out the bounding box and baseline for each characters
**Week 3:** Convert raw anchor points to ones we can render using a known algorithm (such as de casteljau's algorithm) 
**Week 4:** Optimize runtime / performance 

## Resources

- https://freetype.org 
- https://www.cairographics.org/ 
- https://developer.apple.com/fonts/TrueType-Reference-Manual/ 
    - A technical guide to the TrueType font format, which includes information on the rasterization process 