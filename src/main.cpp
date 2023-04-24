#include <iostream>
#include <fstream>
#include <nanogui/nanogui.h>
#include <stdio.h>
#include <stdlib.h>
#include <unordered_set>
#include <stdlib.h>
#include "CGL/CGL.h"

using namespace std;

GLFWwindow *window = nullptr;
nanogui::Screen *screen = nullptr;

void createGLContexts() {
    if (!glfwInit()) {
        return;
    }

    glfwSetTime(0);

    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
    glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

    glfwWindowHint(GLFW_SAMPLES, 0);
    glfwWindowHint(GLFW_RED_BITS, 8);
    glfwWindowHint(GLFW_GREEN_BITS, 8);
    glfwWindowHint(GLFW_BLUE_BITS, 8);
    glfwWindowHint(GLFW_ALPHA_BITS, 8);
    glfwWindowHint(GLFW_STENCIL_BITS, 8);
    glfwWindowHint(GLFW_DEPTH_BITS, 24);
    glfwWindowHint(GLFW_RESIZABLE, GL_TRUE);

    // Create a GLFWwindow object
    window = glfwCreateWindow(800, 800, "TypeKit Demo", nullptr, nullptr);
    if (window == nullptr) {
        cout << "Failed to create GLFW window" << endl;
        glfwTerminate();
        return;
    }
    glfwMakeContextCurrent(window);

#if defined(NANOGUI_GLAD)
    if (!gladLoadGLLoader((GLADloadproc) glfwGetProcAddress))
        throw std::runtime_error("Could not initialize GLAD!");
    glGetError(); // pull and ignore unhandled errors like GL_INVALID_ENUM
#endif

    glClearColor(0.2f, 0.25f, 0.3f, 1.0f);
    glClear(GL_COLOR_BUFFER_BIT);

    // Create a nanogui screen and pass the glfw pointer to initialize
    screen = new nanogui::Screen();
    screen->initialize(window, true);

    int width, height;
    glfwGetFramebufferSize(window, &width, &height);
    glViewport(0, 0, width, height);
    glfwSwapInterval(1);
    glfwSwapBuffers(window);
}

void setGLFWCallbacks() {
    glfwSetCursorPosCallback(window,
                             [](GLFWwindow *, double x, double y) {
        screen->cursorPosCallbackEvent(x, y);
    }
                             );

    glfwSetMouseButtonCallback(window,
                               [](GLFWwindow *, int button, int action, int modifiers) {
        screen->mouseButtonCallbackEvent(button, action, modifiers);
    }
                               );

    glfwSetKeyCallback(window,
                       [](GLFWwindow *, int key, int scancode, int action, int mods) {
        screen->keyCallbackEvent(key, scancode, action, mods);
    }
                       );

    glfwSetCharCallback(window,
                        [](GLFWwindow *, unsigned int codepoint) {
        screen->charCallbackEvent(codepoint);
    }
                        );

    glfwSetDropCallback(window,
                        [](GLFWwindow *, int count, const char **filenames) {
        screen->dropCallbackEvent(count, filenames);
    }
                        );

    glfwSetScrollCallback(window,
                          [](GLFWwindow *, double x, double y) {
        screen->scrollCallbackEvent(x, y);
    }
                          );

    glfwSetFramebufferSizeCallback(window,
                                   [](GLFWwindow *, int width, int height) {
        screen->resizeCallbackEvent(width, height);
    }
                                   );
}

void configureInterface() {
    nanogui::TextBox *tb = new nanogui::TextBox(screen);
    tb->setEditable(true);
    tb->setFixedSize({150, 25});
    tb->setValue("Input TextBox");
    tb->setPosition({50, 50});
}

int main(int argc, char **argv) {
    createGLContexts();

    configureInterface();
    screen->setVisible(true);
    screen->performLayout();
    setGLFWCallbacks();

    while (!glfwWindowShouldClose(window)) {
        glfwPollEvents();

        glClearColor(0.2f, 0.25f, 0.3f, 1.0f);
        glClear(GL_COLOR_BUFFER_BIT);

        // Draw nanogui
        screen->drawContents();
        screen->drawWidgets();

        glfwSwapBuffers(window);
    }

    glfwTerminate();
}
