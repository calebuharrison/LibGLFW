require "./types"

module LibGLFW

@[Link("glfw3")]
lib LibGLFW

  # Initializes the GLFW library.
  fun init = glfwInit : Int32

  #  Terminates the GLFW Library.
  fun terminate = glfwTerminate : Void

  # Retrieves the version of the GLFW library.
  fun get_version = glfwGetVersion(major  : Pointer(Int32),
                                   minor  : Pointer(Int32),
                                   rev    : Pointer(Int32)) : Void

  # Returns the compile-time generated version string of the GLFW library binary.
  fun get_version_string = glfwGetVersionString : Pointer(UInt8)

  # Sets the error callback, which is called with an error code and a human-readable description each time a GLFW
  # error occurs.
  fun set_error_callback = glfwSetErrorCallback(cbfun : Errorfun) : Errorfun

  # Returns the currently connected monitors.
  fun get_monitors = glfwGetMonitors(count : Pointer(Int32)) : Pointer(Pointer(Monitor))

  # Returns the primary monitor.
  fun get_primary_monitor = glfwGetPrimaryMonitor : Pointer(Monitor)

  # Returns the position of the monitor's viewport on the virtual screen.
  fun get_monitor_pos = glfwGetMonitorPos(monitor : Pointer(Monitor), 
                                          xpos    : Pointer(Int32),
                                          ypos    : Pointer(Int32)) : Void

  # Returns the physical size of the monitor.
  fun get_monitor_physical_size = glfwGetMonitorPhysicalSize(monitor  : Pointer(Monitor),
                                                             widthMM  : Pointer(Int32),
                                                             heightMM : Pointer(Int32)) : Void

  # Returns the name of the specified monitor.
  fun get_monitor_name = glfwGetMonitorName(monitor : Pointer(Monitor)) : Pointer(UInt8)

  # Sets the monitor configuration callback.
  fun set_monitor_callback = glfwSetMonitorCallback(cbfun : Monitorfun) : Monitorfun

  # Returns the available video modes for the specified monitor.
  fun get_video_modes = glfwGetVideoModes(monitor : Pointer(Monitor),
                                          count   : Pointer(Int32)) : Pointer(Vidmode)

  # Returns the current mode of the specified monitor.
  fun get_video_mode = glfwGetVideoMode(monitor : Pointer(Monitor)) : Pointer(Vidmode)

  # Generates a gamma ramp and sets it for the specified monitor.
  fun set_gamma = glfwSetGamma(monitor  : Pointer(Monitor),
                               gamma    : Float32) : Void

  # Returns the current gamma ramp for the specified monitor.
  fun get_gamma_ramp = glfwGetGammaRamp(monitor : Pointer(Monitor)) : Pointer(Gammaramp)

  # Sets the current gamma ramp for the specified monitor.
  fun set_gamma_ramp = glfwSetGammaRamp(monitor : Pointer(Monitor),
                                        ramp    : Pointer(Gammaramp)) : Void

  # Resets all window hints to their default values.
  fun default_window_hints = glfwDefaultWindowHints : Void

  # Sets the specified window hint to the desired value.
  fun window_hint = glfwWindowHint(hint   : Int32,
                                   value  : Int32) : Void

  # Creates a window and its associated OpenGL or OpenGL ES context.
  fun create_window = glfwCreateWindow(width    : Int32,
                                       height   : Int32,
                                       title    : Pointer(UInt8),
                                       monitor  : Pointer(Monitor),
                                       share    : Pointer(Window)) : Pointer(Window)

  # Destroys the specified window and its context.
  fun destroy_window = glfwDestroyWindow(window : Pointer(Window)) : Void

  # Checks the close flag of the specified window.
  fun window_should_close = glfwWindowShouldClose(window : Pointer(Window)) : Int32

  # Sets the close flag of the specified window.
  fun set_window_should_close = glfwSetWindowShouldClose(window : Pointer(Window),
                                                         value  : Int32) : Void

  # Sets the title of the specified window.
  fun set_window_title = glfwSetWindowTitle(window  : Pointer(Window),
                                            title   : Pointer(UInt8)) : Void

  # Sets the icon for the specified window.
  fun set_window_icon = glfwSetWindowIcon(window  : Pointer(Window),
                                          count   : Int32,
                                          images  : Pointer(Image)) : Void

  # Retrieves the position of the client area of the specified window.
  fun get_window_pos = glfwGetWindowPos(window  : Pointer(Window),
                                        xpos    : Pointer(Int32),
                                        ypos    : Pointer(Int32)) : Void

  # Sets the position of the client area of the specified window.
  fun set_window_pos = glfwSetWindowPos(window  : Pointer(Window),
                                        xpos    : Int32,
                                        ypos    : Int32) : Void

  # Retrieves the size of the client area of the specified window.
  fun get_window_size = glfwGetWindowSize(window  : Pointer(Window),
                                          width   : Pointer(Int32),
                                          height  : Pointer(Int32)) : Void

  # Sets the size limits of the specified window.
  fun set_window_size_limits = glfwSetWindowSizeLimits(window     : Pointer(Window),
                                                       minwidth   : Int32,
                                                       minheight  : Int32,
                                                       maxwidth   : Int32,
                                                       maxheight  : Int32) : Void

  # Sets the aspect ratio of the specified window.
  fun set_window_aspect_ratio = glfwSetWindowAspectRatio(window : Pointer(Window),
                                                         numer  : Int32,
                                                         denom  : Int32) : Void

  # Sets the size of the client area of the specified window.
  fun set_window_size = glfwSetWindowSize(window  : Pointer(Window),
                                          width   : Int32,
                                          height  : Int32) : Void

  # Retrieves the size of the framebuffer of the specified window.
  fun get_framebuffer_size = glfwGetFramebufferSize(window  : Pointer(Window),
                                                    width   : Pointer(Int32),
                                                    height  : Pointer(Int32)) : Void

  # Retrieves the size of the frame of the window.
  fun get_window_frame_size = glfwGetWindowFrameSize(window : Pointer(Window),
                                                     left   : Pointer(Int32),
                                                     top    : Pointer(Int32),
                                                     right  : Pointer(Int32),
                                                     bottom : Pointer(Int32)) : Void

  # Iconifies the specified window.
  fun iconify_window = glfwIconifyWindow(window : Pointer(Window)) : Void

  # Restores the specified window.
  fun restore_window = glfwRestoreWindow(window : Pointer(Window)) : Void

  # Maximizes the specified window.
  fun maximize_window = glfwMaximizeWindow(window : Pointer(Window)) : Void

  # Makes the specified window visible.
  fun show_window = glfwShowWindow(window : Pointer(Window)) : Void

  # Hides the specified window.
  fun hide_window = glfwHideWindow(window : Pointer(Window)) : Void

  # Brings the specified window to front and sets input focus.
  fun focus_window = glfwFocusWindow(window : Pointer(Window)) : Void

  # Returns the monitor that the window uses for full screen mode.
  fun get_window_monitor = glfwGetWindowMonitor(window : Pointer(Window)) : Pointer(Monitor)

  # Sets the mode, monitor, video mode, and placement of a window.
  fun set_window_monitor = glfwSetWindowMonitor(window      : Pointer(Window),
                                                monitor     : Pointer(Monitor),
                                                xpos        : Int32,
                                                ypos        : Int32,
                                                width       : Int32,
                                                height      : Int32,
                                                refreshRate : Int32) : Void

  # Returns an attribute of the specified window.
  fun get_window_attrib = glfwGetWindowAttrib(window : Pointer(Window),
                                              attrib : Int32) : Int32

  # Sets the user pointer of the specified window.
  fun set_window_user_pointer = glfwSetWindowUserPointer(window   : Pointer(Window),
                                                         pointer  : Pointer(Void)) : Void

  # Returns the user pointer of the specified window.
  fun get_window_user_pointer = glfwGetWindowUserPointer(window : Pointer(Window)) : Pointer(Void)

  # Sets the position callback for the specified window.
  fun set_window_pos_callback = glfwSetWindowPosCallback(window : Pointer(Window),
                                                         cbfun  : Windowposfun) : Windowposfun

  # Sets the size callback for the specified window.
  fun set_window_size_callback = glfwSetWindowSizeCallback(window : Pointer(Window),
                                                           cbfun  : Windowsizefun) : Windowsizefun

  # Sets the close callback for the specified window.
  fun set_window_close_callback = glfwSetWindowCloseCallback(window : Pointer(Window),
                                                             cbfun  : Windowclosefun) : Windowclosefun

  # Sets the refresh callback for the specified window.
  fun set_window_refresh_callback = glfwSetWindowRefreshCallback(window : Pointer(Window),
                                                                 cbfun  : Windowrefreshfun) : Windowrefreshfun

  # Sets the focus callback for the specified window.
  fun set_window_focus_callback = glfwSetWindowFocusCallback(window : Pointer(Window),
                                                             cbfun  : Windowfocusfun) : Windowfocusfun

  # Sets the iconify callback for the specified window.
  fun set_window_iconify_callback = glfwSetWindowIconifyCallback(window : Pointer(Window),
                                                                 cbfun  : Windowiconifyfun) : Windowiconifyfun

  # Sets the framebuffer resize callback for the specified window.
  fun set_framebuffer_size_callback = glfwSetFramebufferSizeCallback(window : Pointer(Window),
                                                                     cbfun  : Framebuffersizefun) : Framebuffersizefun

  # Processes all pending events.
  fun poll_events = glfwPollEvents : Void

  # Waits until events are queued and processes them.
  fun wait_events = glfwWaitEvents : Void

  # Waits with timeout until events are queued and processes them.
  fun wait_events_timeout = glfwWaitEventsTimeout(timeout : Float64) : Void

  # Posts an empty event to the event queue.
  fun post_empty_event = glfwPostEmptyEvent : Void

  # Returns the value of an input option for the specified window.
  fun get_input_mode = glfwGetInputMode(window  : Pointer(Window),
                                        mode    : Int32) : Int32

  # Sets an input option for the specified window.
  fun set_input_mode = glfwSetInputMode(window  : Pointer(Window),
                                        mode    : Int32,
                                        value   : Int32) : Void

  # Returns the localized name of the specified printable key.
  fun get_key_name = glfwGetKeyName(key       : Int32,
                                    scancode  : Int32) : Pointer(UInt8)

  # Returns the last reported state of a keyboard key for the specified window.
  fun get_key = glfwGetKey(window : Pointer(Window),
                           key    : Int32) : Int32

  # Returns the last reported state of a mouse button for the specified window.
  fun get_mouse_button = glfwGetMouseButton(window : Pointer(Window),
                                            button : Int32) : Int32

  # Retrieves the position of the cursor relative to the client area of the window.
  fun get_cursor_pos = glfwGetCursorPos(window  : Pointer(Window),
                                        xpos    : Pointer(Float64),
                                        ypos    : Pointer(Float64)) : Void

  # Sets the position of the curosr, relative to the client area of the window.
  fun set_cursor_pos = glfwSetCursorPos(window  : Pointer(Window),
                                        xpos    : Float64,
                                        ypose   : Float64) : Void

  # Creates a custom cursor.
  fun create_cursor = glfwCreateCursor(image  : Pointer(Image),
                                       xhot   : Int32,
                                       yhot   : Int32) : Pointer(Cursor)

  # Creates a cursor with a standard shape.
  fun create_standard_cursor = glfwCreateStandardCursor(shape : Int32) : Pointer(Cursor)

  # Destroys a cursor
  fun destroy_cursor = glfwDestroyCursor(cursor : Pointer(Cursor)) : Void

  # Sets the cursor for the window.
  fun set_cursor = glfwSetCursor(window : Pointer(Window),
                                 cursor : Pointer(Cursor)) : Void

  # Sets the key callback.
  fun set_key_callback = glfwSetKeyCallback(window  : Pointer(Window),
                                            cbfun   : Keyfun) : Keyfun

  # Sets the Unicode character callback.
  fun set_char_callback = glfwSetCharCallback(window  : Pointer(Window),
                                              cbfun   : Charfun) : Charfun

  # Sets the Unicode character with modifiers callback.
  fun set_char_mods_callback = glfwSetCharModsCallback(window : Pointer(Window),
                                                       cbfun  : Charmodsfun) : Charmodsfun

  # Sets the mouse button callback.
  fun set_mouse_button_callback = glfwSetMouseButtonCallback(window : Pointer(Window),
                                                             cbfun  : Mousebuttonfun) : Mousebuttonfun

  # Sets the cursor position callback.
  fun set_cursor_pos_callback = glfwSetCursorPosCallback(window : Pointer(Window),
                                                         cbfun  : Cursorposfun) : Cursorposfun

  # Sets the cursor enter/exit callback.
  fun set_cursor_enter_callback = glfwSetCursorEnterCallback(window : Pointer(Window),
                                                             cbfun  : Cursorenterfun) : Cursorenterfun

  # Sets the scroll callback.
  fun set_scroll_callback = glfwSetScrollCallback(window  : Pointer(Window),
                                                  cbfun   : Scrollfun) : Scrollfun

  # Sets the file drop callback.
  fun set_drop_callback = glfwSetDropCallback(window  : Pointer(Window),
                                              cbfun   : Dropfun) : Dropfun

  # Returns whether the specified joystick is present.
  fun joystick_present = glfwJoystickPresent(joy : Int32) : Int32

  # Returns the values of all axes of the specified joystick.
  fun get_joystick_axes = glfwGetJoystickAxes(joy   : Int32,
                                              count : Pointer(Int32)) : Pointer(Float32)

  # Returns the state of all button of the specified joystick.
  fun get_joystick_buttons = glfwGetJoystickButtons(joy   : Int32,
                                                    count : Pointer(Int32)) : Pointer(UInt8)

  # Returns the name of the specified joystick.
  fun get_joystick_name = glfwGetJoystickName(joy : Int32) : Pointer(UInt8)

  # Sets the joystick configuration callback.
  fun set_joystick_callback = glfwSetJoystickCallback(cbfun : Joystickfun) : Joystickfun

  # Sets the clipboard to the specified string.
  fun set_clipboard_string = glfwSetClipboardString(window : Pointer(Window),
                                                    string : Pointer(UInt8)) : Void

  # Returns the contents of the clipboard as a string.
  fun get_clipboard_string = glfwGetClipboardString(window : Pointer(Window)) : Pointer(UInt8)

  # Returns the value of the GLFW timer.
  fun get_time = glfwGetTime : Float64

  # Sets the GLFW timer.
  fun set_time = glfwSetTime(time : Float64) : Void

  # Returns the current value of the raw timer.
  fun get_timer_value = glfwGetTimerValue : UInt64

  # Returns the frequency, in Hz, of the raw timer.
  fun get_timer_frequency = glfwGetTimerFrequency : UInt64

  # Makes the context of the specified window current for the calling thread.
  fun make_context_current = glfwMakeContextCurrent(window : Pointer(Window)) : Void

  # Returns the window whose context is current on the calling thread.
  fun get_current_context = glfwGetCurrentContext : Pointer(Window)

  # Swaps the front and back buffers of the specified window.
  fun swap_buffers = glfwSwapBuffers(window : Pointer(Window)) : Void

  # Sets the swap interval for the current context.
  fun swap_interval = glfwSwapInterval(interval : Int32) : Void

  # Returns whether the specified extension is available.
  fun extension_supported = glfwExtensionSupported(extension : Pointer(UInt8)) : Int32

  # Returns the address of the specified function for the current context
  fun get_proc_address = glfwGetProcAddress(procname : Pointer(UInt8)) : Glproc

  # Returns whether the Vulkan loader has been found.
  fun vulkan_supported = glfwVulkanSupported : Int32

  # Returns the Vulkan instance extensions required by GLFW.
  fun get_required_instance_extensions = glfwGetRequiredInstanceExtensions(count : Pointer(UInt32)) : Pointer(Pointer(UInt8))

end

end
