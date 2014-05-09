<?xml version="1.0"?><doc>
<members>
<member name="T:sf.NonCopyable" decl="false" source="c:\sfml\include\sfml\system\noncopyable.hpp" line="37">
\brief Utility class that makes any derived
       class non-copyable

</member>
<member name="M:sf.NonCopyable.#ctor" decl="false" source="c:\sfml\include\sfml\system\noncopyable.hpp" line="46">
\brief Default constructor

Because this class has a copy constructor, the compiler
will not automatically generate the default constructor.
That's why we must define it explicitely.

</member>
<member name="M:sf.NonCopyable.#ctor(sf.NonCopyable!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="c:\sfml\include\sfml\system\noncopyable.hpp" line="58">
\brief Disabled copy constructor

By making the copy constructor private, the compiler will
trigger an error if anyone outside tries to use it.
To prevent NonCopyable or friend classes from using it,
we also give no definition, so that the linker will
produce an error if the first protection was inefficient.

</member>
<member name="M:sf.NonCopyable.op_Assign(sf.NonCopyable!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="c:\sfml\include\sfml\system\noncopyable.hpp" line="70">
\brief Disabled assignment operator

By making the assignment operator private, the compiler will
trigger an error if anyone outside tries to use it.
To prevent NonCopyable or friend classes from using it,
we also give no definition, so that the linker will
produce an error if the first protection was inefficient.

</member>
<member name="T:sf.RenderWindow" decl="false" source="c:\sfml\include\sfml\graphics\renderwindow.hpp" line="41">
\brief Window that can serve as a target for 2D drawing

</member>
<member name="M:sf.RenderWindow.#ctor" decl="true" source="c:\sfml\include\sfml\graphics\renderwindow.hpp" line="49">
\brief Default constructor

This constructor doesn't actually create the window,
use the other constructors or call "create" to do so.

</member>
<member name="M:sf.RenderWindow.#ctor(sf.VideoMode,sf.String!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced,System.UInt32,sf.ContextSettings!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="c:\sfml\include\sfml\graphics\renderwindow.hpp" line="58">
\brief Construct a new window

This constructor creates the window with the size and pixel
depth defined in \a mode. An optional style can be passed to
customize the look and behaviour of the window (borders,
title bar, resizable, closable, ...).

The fourth parameter is an optional structure specifying
advanced OpenGL context settings such as antialiasing,
depth-buffer bits, etc. You shouldn't care about these
parameters for a regular usage of the graphics module.

\param mode     Video mode to use (defines the width, height and depth of the rendering area of the window)
\param title    Title of the window
\param style    Window style
\param settings Additional settings for the underlying OpenGL context

</member>
<member name="M:sf.RenderWindow.#ctor(HWND__*,sf.ContextSettings!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="c:\sfml\include\sfml\graphics\renderwindow.hpp" line="79">
\brief Construct the window from an existing control

Use this constructor if you want to create an SFML
rendering area into an already existing control.

The fourth parameter is an optional structure specifying
advanced OpenGL context settings such as antialiasing,
depth-buffer bits, etc. You shouldn't care about these
parameters for a regular usage of the graphics module.

\param handle   Platform-specific handle of the control
\param settings Additional settings for the underlying OpenGL context

</member>
<member name="M:sf.RenderWindow.Dispose" decl="true" source="c:\sfml\include\sfml\graphics\renderwindow.hpp" line="96">
\brief Destructor

Closes the window and free all the resources attached to it.

</member>
<member name="M:sf.RenderWindow.getSize" decl="true" source="c:\sfml\include\sfml\graphics\renderwindow.hpp" line="104">
\brief Get the size of the rendering region of the window

The size doesn't include the titlebar and borders
of the window.

\return Size in pixels

</member>
<!-- Discarding badly formed XML document comment for member 'M:sf.RenderWindow.capture'. -->
<member name="M:sf.RenderWindow.onCreate" decl="true" source="c:\sfml\include\sfml\graphics\renderwindow.hpp" line="133">
\brief Function called after the window has been created

This function is called so that derived classes can
perform their own specific initialization as soon as
the window is created.

</member>
<member name="M:sf.RenderWindow.onResize" decl="true" source="c:\sfml\include\sfml\graphics\renderwindow.hpp" line="143">
\brief Function called after the window has been resized

This function is called so that derived classes can
perform custom actions when the size of the window changes.

</member>
<member name="M:sf.RenderWindow.activate(System.Boolean)" decl="true" source="c:\sfml\include\sfml\graphics\renderwindow.hpp" line="154">
\brief Activate the target for rendering

\param active True to make the target active, false to deactivate it

\return True if the function succeeded

</member>
<member name="D:int8_t" decl="false" source="c:\sfml\include\sfml\graphics\renderwindow.hpp" line="171">
\class sf::RenderWindow
\ingroup graphics

sf::RenderWindow is the main class of the Graphics module.
It defines an OS window that can be painted using the other
classes of the graphics module.

sf::RenderWindow is derived from sf::Window, thus it inherits
all its features: events, window management, OpenGL rendering,
etc. See the documentation of sf::Window for a more complete
description of all these features, as well as code examples.

On top of that, sf::RenderWindow adds more features related to
2D drawing with the graphics module (see its base class
sf::RenderTarget for more details).
Here is a typical rendering and event loop with a sf::RenderWindow:

\code
// Declare and create a new render-window
sf::RenderWindow window(sf::VideoMode(800, 600), "SFML window");

// Limit the framerate to 60 frames per second (this step is optional)
window.setFramerateLimit(60);

// The main loop - ends as soon as the window is closed
while (window.isOpen())
{
   // Event processing
   sf::Event event;
   while (window.pollEvent(event))
   {
       // Request for closing the window
       if (event.type == sf::Event::Closed)
           window.close();
   }

   // Clear the whole window before rendering a new frame
   window.clear();

   // Draw some graphical entities
   window.draw(sprite);
   window.draw(circle);
   window.draw(text);

   // End the current frame and display its contents on screen
   window.display();
}
\endcode

Like sf::Window, sf::RenderWindow is still able to render direct
OpenGL stuff. It is even possible to mix together OpenGL calls
and regular SFML drawing commands.

\code
// Create the render window
sf::RenderWindow window(sf::VideoMode(800, 600), "SFML OpenGL");

// Create a sprite and a text to display
sf::Sprite sprite;
sf::Text text;
...

// Perform OpenGL initializations
glMatrixMode(GL_PROJECTION);
...

// Start the rendering loop
while (window.isOpen())
{
    // Process events
    ...

    // Draw a background sprite
    window.pushGLStates();
    window.draw(sprite);
    window.popGLStates();

    // Draw a 3D object using OpenGL
    glBegin(GL_QUADS);
        glVertex3f(...);
        ...
    glEnd();

    // Draw text on top of the 3D object
    window.pushGLStates();
    window.draw(text);
    window.popGLStates();

    // Finally, display the rendered frame on screen
    window.display();
}
\endcode

\see sf::Window, sf::RenderTarget, sf::RenderTexture, sf::View

</member>
<member name="T:State" decl="false" source="d:\users\andrew\perforceworkspace\drew-deskpc\drewski's block breaker\drewski's block breaker\state.h" line="9">
<summary>
Based class for States
</summary>
</member>
<member name="T:StateStack" decl="false" source="d:\users\andrew\perforceworkspace\drew-deskpc\drewski's block breaker\drewski's block breaker\statestack.h" line="11">
<summary>
Used to manage various states in the game
</summary>
</member>
<member name="M:StateStack.applyPendingChanges" decl="false" source="d:\users\andrew\perforceworkspace\drew-deskpc\drewski's block breaker\drewski's block breaker\statestack.cpp" line="35">
<summary>
Applies the pending changes.
</summary>
</member>
<member name="M:StateStack.createState(States.ID)" decl="false" source="d:\users\andrew\perforceworkspace\drew-deskpc\drewski's block breaker\drewski's block breaker\statestack.cpp" line="62">
<summary>
Find the functor for the state and return the instantiated state
</summary>
<param name="id">The state identifier.</param>
<returns>Pointer to the new state</returns>
</member>
</members>
</doc>