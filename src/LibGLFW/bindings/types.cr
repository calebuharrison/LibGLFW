module LibGLFW

@[Link("glfw3")]
lib LibGLFW

  #-- Structs --#
    
    # Describes a single video mode.
    struct Vidmode

      # The width, in screen coordinates, of the video mode.
      width       : Int32

      # The height, in screen coordinates, of the video mode.
      height      : Int32

      # The bit depth of the red channel of the video mode.
      redBits     : Int32

      # The bit depth of the green channel of the video mode.
      greenBits   : Int32

      # The bit depth of the blue channel of the video mode.
      blueBits    : Int32

      # The refresh rate, in Hz, of the video mode.
      refreshRate : Int32
    end 

    # Describes the gamma ramp for a monitor.
    struct Gammaramp
      
      # An array of values describing the response of the red channel.
      red   : Pointer(UInt16)

      # An array of values describing the response of the green channel.
      green : Pointer(UInt16)

      # An array of values describing the response of the blue channel.
      blue  : Pointer(UInt16)

      # The number of elements in each array.
      size  : UInt32
    end 

    # Describes an image.
    struct Image

      # The width, in pixels, of this image.
      width   : Int32

      # The height, in pixels, of this image.
      height  : Int32

      # The pixel data of this image, arranged left-to-right, top-to-bottom.
      pixels  : Pointer(UInt8)
    end


  #-- Type Declarations --#

    # Client API function pointer type
    type Glproc             = (Void -> Void)

    # Vulkan API function pointer type.
    type Vkproc             = (Void -> Void)

    # Opaque monitor object.
    type Monitor            = Void

    # Opaque window object.
    type Window             = Void

    # Opaque cursor object.
    type Cursor             = Void

    # The function signature for error callbacks.
    type Errorfun           = (Int32, Pointer(UInt8) -> Void)

    # The function signature for window position callbacks.
    type Windowposfun       = (Pointer(Window), Int32, Int32 -> Void)

    # The function signature for window resize callbacks.
    type Windowsizefun      = (Pointer(Window), Int32, Int32 -> Void)

    # The function signature for window close callbacks.
    type Windowclosefun     = (Pointer(Window) -> Void)

    # The function signature for window content refresh callbacks.
    type Windowrefreshfun   = (Pointer(Window) -> Void)

    # The function signature for window focus/defocus callbacks.
    type Windowfocusfun     = (Pointer(Window), Int32 -> Void)

    # The function signature for window iconify/restore callbacks.
    type Windowiconifyfun   = (Pointer(Window), Int32 -> Void)

    # The function signature for framebuffer resize callbacks.
    type Framebuffersizefun = (Pointer(Window), Int32, Int32 -> Void)

    # The function signature for mouse button callbacks.
    type Mousebuttonfun     = (Pointer(Window), Int32, Int32, Int32 -> Void)

    # The function signature for cursor position callbacks.
    type Cursorposfun       = (Pointer(Window), Float64, Float64 -> Void)

    # The function signature for cursor enter/leave callbacks.
    type Cursorenterfun     = (Pointer(Window), Int32 -> Void)

    # The function signature for scroll callbacks.
    type Scrollfun          = (Pointer(Window), Float64, Float64 -> Void)

    # The function signature for keyboard key calbacks.
    type Keyfun             = (Pointer(Window), Int32, Int32, Int32, Int32 -> Void)

    # The function signature for Unicode character callbacks.
    type Charfun            = (Pointer(Window), UInt32 -> Void)

    # The function signature for Unicode character with modifiers callbacks.
    type Charmodsfun        = (Pointer(Window), UInt32, Int32 -> Void)

    # The function signature for file drop callbacks.
    type Dropfun            = (Pointer(Window), Int32, Pointer(Pointer(UInt8)) -> Void)

    # The function signature for monitor configuration callbacks.
    type Monitorfun         = (Pointer(Monitor), Int32 -> Void)

    # The function signature for joystick configuration callbacks.
    type Joystickfun        = (Int32, Int32 -> Void)

end

end
