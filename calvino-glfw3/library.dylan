module: dylan-user
author: Bruce Mitchener, Jr.
copyright: See LICENSE file in this distribution.

define library calvino-glfw3
  use dylan;
  use common-dylan;
  use c-ffi;

  export calvino-glfw3;
end library;

define module calvino-glfw3
  use common-dylan;
  use c-ffi;
  export
    $GLFW-ACCUM-ALPHA-BITS,
    $GLFW-ACCUM-BLUE-BITS,
    $GLFW-ACCUM-GREEN-BITS,
    $GLFW-ACCUM-RED-BITS,
    $GLFW-ALPHA-BITS,
    $GLFW-API-UNAVAILABLE,
    $GLFW-AUX-BUFFERS,
    $GLFW-BLUE-BITS,
    $GLFW-CLIENT-API,
    $GLFW-CONNECTED,
    $GLFW-CONTEXT-REVISION,
    $GLFW-CONTEXT-ROBUSTNESS,
    $GLFW-CONTEXT-VERSION-MAJOR,
    $GLFW-CONTEXT-VERSION-MINOR,
    $GLFW-CURSOR,
    $GLFW-CURSOR-DISABLED,
    $GLFW-CURSOR-HIDDEN,
    $GLFW-CURSOR-NORMAL,
    $GLFW-DECORATED,
    $GLFW-DEPTH-BITS,
    $GLFW-DISCONNECTED,
    $GLFW-FOCUSED,
    $GLFW-FORMAT-UNAVAILABLE,
    $GLFW-GREEN-BITS,
    $GLFW-ICONIFIED,
    $GLFW-INVALID-ENUM,
    $GLFW-INVALID-VALUE,
    $GLFW-JOYSTICK-1,
    $GLFW-JOYSTICK-10,
    $GLFW-JOYSTICK-11,
    $GLFW-JOYSTICK-12,
    $GLFW-JOYSTICK-13,
    $GLFW-JOYSTICK-14,
    $GLFW-JOYSTICK-15,
    $GLFW-JOYSTICK-16,
    $GLFW-JOYSTICK-2,
    $GLFW-JOYSTICK-3,
    $GLFW-JOYSTICK-4,
    $GLFW-JOYSTICK-5,
    $GLFW-JOYSTICK-6,
    $GLFW-JOYSTICK-7,
    $GLFW-JOYSTICK-8,
    $GLFW-JOYSTICK-9,
    $GLFW-JOYSTICK-LAST,
    $GLFW-KEY-0,
    $GLFW-KEY-1,
    $GLFW-KEY-2,
    $GLFW-KEY-3,
    $GLFW-KEY-4,
    $GLFW-KEY-5,
    $GLFW-KEY-6,
    $GLFW-KEY-7,
    $GLFW-KEY-8,
    $GLFW-KEY-9,
    $GLFW-KEY-A,
    $GLFW-KEY-APOSTROPHE,
    $GLFW-KEY-B,
    $GLFW-KEY-BACKSLASH,
    $GLFW-KEY-BACKSPACE,
    $GLFW-KEY-C,
    $GLFW-KEY-CAPS-LOCK,
    $GLFW-KEY-COMMA,
    $GLFW-KEY-D,
    $GLFW-KEY-DELETE,
    $GLFW-KEY-DOWN,
    $GLFW-KEY-E,
    $GLFW-KEY-END,
    $GLFW-KEY-ENTER,
    $GLFW-KEY-EQUAL,
    $GLFW-KEY-ESCAPE,
    $GLFW-KEY-F,
    $GLFW-KEY-F1,
    $GLFW-KEY-F10,
    $GLFW-KEY-F11,
    $GLFW-KEY-F12,
    $GLFW-KEY-F13,
    $GLFW-KEY-F14,
    $GLFW-KEY-F15,
    $GLFW-KEY-F16,
    $GLFW-KEY-F17,
    $GLFW-KEY-F18,
    $GLFW-KEY-F19,
    $GLFW-KEY-F2,
    $GLFW-KEY-F20,
    $GLFW-KEY-F21,
    $GLFW-KEY-F22,
    $GLFW-KEY-F23,
    $GLFW-KEY-F24,
    $GLFW-KEY-F25,
    $GLFW-KEY-F3,
    $GLFW-KEY-F4,
    $GLFW-KEY-F5,
    $GLFW-KEY-F6,
    $GLFW-KEY-F7,
    $GLFW-KEY-F8,
    $GLFW-KEY-F9,
    $GLFW-KEY-G,
    $GLFW-KEY-GRAVE-ACCENT,
    $GLFW-KEY-H,
    $GLFW-KEY-HOME,
    $GLFW-KEY-I,
    $GLFW-KEY-INSERT,
    $GLFW-KEY-J,
    $GLFW-KEY-K,
    $GLFW-KEY-KP-0,
    $GLFW-KEY-KP-1,
    $GLFW-KEY-KP-2,
    $GLFW-KEY-KP-3,
    $GLFW-KEY-KP-4,
    $GLFW-KEY-KP-5,
    $GLFW-KEY-KP-6,
    $GLFW-KEY-KP-7,
    $GLFW-KEY-KP-8,
    $GLFW-KEY-KP-9,
    $GLFW-KEY-KP-ADD,
    $GLFW-KEY-KP-DECIMAL,
    $GLFW-KEY-KP-DIVIDE,
    $GLFW-KEY-KP-ENTER,
    $GLFW-KEY-KP-EQUAL,
    $GLFW-KEY-KP-MULTIPLY,
    $GLFW-KEY-KP-SUBTRACT,
    $GLFW-KEY-L,
    $GLFW-KEY-LAST,
    $GLFW-KEY-LEFT,
    $GLFW-KEY-LEFT-ALT,
    $GLFW-KEY-LEFT-BRACKET,
    $GLFW-KEY-LEFT-CONTROL,
    $GLFW-KEY-LEFT-SHIFT,
    $GLFW-KEY-LEFT-SUPER,
    $GLFW-KEY-M,
    $GLFW-KEY-MENU,
    $GLFW-KEY-MINUS,
    $GLFW-KEY-N,
    $GLFW-KEY-NUM-LOCK,
    $GLFW-KEY-O,
    $GLFW-KEY-P,
    $GLFW-KEY-PAGE-DOWN,
    $GLFW-KEY-PAGE-UP,
    $GLFW-KEY-PAUSE,
    $GLFW-KEY-PERIOD,
    $GLFW-KEY-PRINT-SCREEN,
    $GLFW-KEY-Q,
    $GLFW-KEY-R,
    $GLFW-KEY-RIGHT,
    $GLFW-KEY-RIGHT-ALT,
    $GLFW-KEY-RIGHT-BRACKET,
    $GLFW-KEY-RIGHT-CONTROL,
    $GLFW-KEY-RIGHT-SHIFT,
    $GLFW-KEY-RIGHT-SUPER,
    $GLFW-KEY-S,
    $GLFW-KEY-SCROLL-LOCK,
    $GLFW-KEY-SEMICOLON,
    $GLFW-KEY-SLASH,
    $GLFW-KEY-SPACE,
    $GLFW-KEY-T,
    $GLFW-KEY-TAB,
    $GLFW-KEY-U,
    $GLFW-KEY-UNKNOWN,
    $GLFW-KEY-UP,
    $GLFW-KEY-V,
    $GLFW-KEY-W,
    $GLFW-KEY-WORLD-1,
    $GLFW-KEY-WORLD-2,
    $GLFW-KEY-X,
    $GLFW-KEY-Y,
    $GLFW-KEY-Z,
    $GLFW-LOSE-CONTEXT-ON-RESET,
    $GLFW-MOD-ALT,
    $GLFW-MOD-CONTROL,
    $GLFW-MOD-SHIFT,
    $GLFW-MOD-SUPER,
    $GLFW-MOUSE-BUTTON-1,
    $GLFW-MOUSE-BUTTON-2,
    $GLFW-MOUSE-BUTTON-3,
    $GLFW-MOUSE-BUTTON-4,
    $GLFW-MOUSE-BUTTON-5,
    $GLFW-MOUSE-BUTTON-6,
    $GLFW-MOUSE-BUTTON-7,
    $GLFW-MOUSE-BUTTON-8,
    $GLFW-MOUSE-BUTTON-LAST,
    $GLFW-MOUSE-BUTTON-LEFT,
    $GLFW-MOUSE-BUTTON-MIDDLE,
    $GLFW-MOUSE-BUTTON-RIGHT,
    $GLFW-NO-CURRENT-CONTEXT,
    $GLFW-NO-RESET-NOTIFICATION,
    $GLFW-NO-ROBUSTNESS,
    $GLFW-NOT-INITIALIZED,
    $GLFW-OPENGL-ANY-PROFILE,
    $GLFW-OPENGL-API,
    $GLFW-OPENGL-COMPAT-PROFILE,
    $GLFW-OPENGL-CORE-PROFILE,
    $GLFW-OPENGL-DEBUG-CONTEXT,
    $GLFW-OPENGL-ES-API,
    $GLFW-OPENGL-FORWARD-COMPAT,
    $GLFW-OPENGL-PROFILE,
    $GLFW-OUT-OF-MEMORY,
    $GLFW-PLATFORM-ERROR,
    $GLFW-PRESS,
    $GLFW-RED-BITS,
    $GLFW-REFRESH-RATE,
    $GLFW-RELEASE,
    $GLFW-REPEAT,
    $GLFW-RESIZABLE,
    $GLFW-SAMPLES,
    $GLFW-SRGB-CAPABLE,
    $GLFW-STENCIL-BITS,
    $GLFW-STEREO,
    $GLFW-STICKY-KEYS,
    $GLFW-STICKY-MOUSE-BUTTONS,
    $GLFW-VERSION-MAJOR,
    $GLFW-VERSION-MINOR,
    $GLFW-VERSION-REVISION,
    $GLFW-VERSION-UNAVAILABLE,
    $GLFW-VISIBLE,
    <GLFWcharfun>,
    <GLFWcursorenterfun>,
    <GLFWcursorposfun>,
    <GLFWerrorfun>,
    <GLFWframebuffersizefun>,
    <GLFWgammaramp*>,
    <GLFWgammaramp>,
    <GLFWglproc>,
    <GLFWkeyfun>,
    <GLFWmonitor**>,
    <GLFWmonitor*>,
    <GLFWmonitor>,
    <GLFWmonitorfun>,
    <GLFWmousebuttonfun>,
    <GLFWscrollfun>,
    <GLFWvidmode*>,
    <GLFWvidmode>,
    <GLFWwindow*>,
    <GLFWwindow>,
    <GLFWwindowclosefun>,
    <GLFWwindowfocusfun>,
    <GLFWwindowiconifyfun>,
    <GLFWwindowposfun>,
    <GLFWwindowrefreshfun>,
    <GLFWwindowsizefun>,
    GLFWgammaramp$blue,
    GLFWgammaramp$blue-setter,
    GLFWgammaramp$green,
    GLFWgammaramp$green-setter,
    GLFWgammaramp$red,
    GLFWgammaramp$red-setter,
    GLFWgammaramp$size,
    GLFWgammaramp$size-setter,
    GLFWvidmode$blueBits,
    GLFWvidmode$blueBits-setter,
    GLFWvidmode$greenBits,
    GLFWvidmode$greenBits-setter,
    GLFWvidmode$height,
    GLFWvidmode$height-setter,
    GLFWvidmode$redBits,
    GLFWvidmode$redBits-setter,
    GLFWvidmode$refreshRate,
    GLFWvidmode$refreshRate-setter,
    GLFWvidmode$width,
    GLFWvidmode$width-setter,
    glfwCreateWindow,
    glfwDefaultWindowHints,
    glfwDestroyWindow,
    glfwExtensionSupported,
    glfwGetClipboardString,
    glfwGetCurrentContext,
    glfwGetCursorPos,
    glfwGetFramebufferSize,
    glfwGetGammaRamp,
    glfwGetInputMode,
    glfwGetJoystickAxes,
    glfwGetJoystickButtons,
    glfwGetJoystickName,
    glfwGetKey,
    glfwGetMonitorName,
    glfwGetMonitorPhysicalSize,
    glfwGetMonitorPos,
    glfwGetMonitors,
    glfwGetMouseButton,
    glfwGetPrimaryMonitor,
    glfwGetProcAddress,
    glfwGetTime,
    glfwGetVersion,
    glfwGetVersionString,
    glfwGetVideoMode,
    glfwGetVideoModes,
    glfwGetWindowAttrib,
    glfwGetWindowMonitor,
    glfwGetWindowPos,
    glfwGetWindowSize,
    glfwGetWindowUserPointer,
    glfwHideWindow,
    glfwIconifyWindow,
    glfwInit,
    glfwJoystickPresent,
    glfwMakeContextCurrent,
    glfwPollEvents,
    glfwRestoreWindow,
    glfwSetCharCallback,
    glfwSetClipboardString,
    glfwSetCursorEnterCallback,
    glfwSetCursorPos,
    glfwSetCursorPosCallback,
    glfwSetErrorCallback,
    glfwSetFramebufferSizeCallback,
    glfwSetGamma,
    glfwSetGammaRamp,
    glfwSetInputMode,
    glfwSetKeyCallback,
    glfwSetMonitorCallback,
    glfwSetMouseButtonCallback,
    glfwSetScrollCallback,
    glfwSetTime,
    glfwSetWindowCloseCallback,
    glfwSetWindowFocusCallback,
    glfwSetWindowIconifyCallback,
    glfwSetWindowPos,
    glfwSetWindowPosCallback,
    glfwSetWindowRefreshCallback,
    glfwSetWindowShouldClose,
    glfwSetWindowSize,
    glfwSetWindowSizeCallback,
    glfwSetWindowTitle,
    glfwSetWindowUserPointer,
    glfwShowWindow,
    glfwSwapBuffers,
    glfwSwapInterval,
    glfwTerminate,
    glfwWaitEvents,
    glfwWindowHint,
    glfwWindowShouldClose;
end module;
