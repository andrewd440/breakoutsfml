<?xml version="1.0"?><doc>
<members>
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
</members>
</doc>