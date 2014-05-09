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
<member name="T:sf.Text" decl="false" source="c:\sfml\include\sfml\graphics\text.hpp" line="45">
\brief Graphical text that can be drawn to a render target

</member>
<member name="T:sf.Text.Style" decl="false" source="c:\sfml\include\sfml\graphics\text.hpp" line="53">
\brief Enumeration of the string drawing styles

</member>
<member name="M:sf.Text.#ctor" decl="true" source="c:\sfml\include\sfml\graphics\text.hpp" line="65">
\brief Default constructor

Creates an empty text.

</member>
<member name="M:sf.Text.#ctor(sf.String!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced,sf.Font!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced,System.UInt32)" decl="true" source="c:\sfml\include\sfml\graphics\text.hpp" line="73">
\brief Construct the text from a string, font and size

\param string         Text assigned to the string
\param font           Font used to draw the string
\param characterSize  Base size of characters, in pixels

</member>
<member name="M:sf.Text.setString(sf.String!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="c:\sfml\include\sfml\graphics\text.hpp" line="83">
\brief Set the text's string

The \a string argument is a sf::String, which can
automatically be constructed from standard string types.
So, the following calls are all valid:
\code
text.setString("hello");
text.setString(L"hello");
text.setString(std::string("hello"));
text.setString(std::wstring(L"hello"));
\endcode
A text's string is empty by default.

\param string New string

\see getString

</member>
<member name="M:sf.Text.setFont(sf.Font!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="c:\sfml\include\sfml\graphics\text.hpp" line="104">
\brief Set the text's font

The \a font argument refers to a font that must
exist as long as the text uses it. Indeed, the text
doesn't store its own copy of the font, but rather keeps
a pointer to the one that you passed to this function.
If the font is destroyed and the text tries to
use it, the behaviour is undefined.

\param font New font

\see getFont

</member>
<member name="M:sf.Text.setCharacterSize(System.UInt32)" decl="true" source="c:\sfml\include\sfml\graphics\text.hpp" line="121">
\brief Set the character size

The default size is 30.

\param size New character size, in pixels

\see getCharacterSize

</member>
<member name="M:sf.Text.setStyle(System.UInt32)" decl="true" source="c:\sfml\include\sfml\graphics\text.hpp" line="133">
\brief Set the text's style

You can pass a combination of one or more styles, for
example sf::Text::Bold | sf::Text::Italic.
The default style is sf::Text::Regular.

\param style New style

\see getStyle

</member>
<member name="M:sf.Text.setColor(sf.Color!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="c:\sfml\include\sfml\graphics\text.hpp" line="147">
\brief Set the global color of the text

By default, the text's color is opaque white.

\param color New color of the text

\see getColor

</member>
<member name="M:sf.Text.getString" decl="true" source="c:\sfml\include\sfml\graphics\text.hpp" line="159">
\brief Get the text's string

The returned string is a sf::String, which can automatically
be converted to standard string types. So, the following
lines of code are all valid:
\code
sf::String   s1 = text.getString();
std::string  s2 = text.getString();
std::wstring s3 = text.getString();
\endcode

\return Text's string

\see setString

</member>
<member name="M:sf.Text.getFont" decl="true" source="c:\sfml\include\sfml\graphics\text.hpp" line="178">
\brief Get the text's font

If the text has no font attached, a NULL pointer is returned.
The returned reference is const, which means that you
cannot modify the font when you get it from this function.

\return Pointer to the text's font

\see setFont

</member>
<member name="M:sf.Text.getCharacterSize" decl="true" source="c:\sfml\include\sfml\graphics\text.hpp" line="192">
\brief Get the character size

\return Size of the characters, in pixels

\see setCharacterSize

</member>
<member name="M:sf.Text.getStyle" decl="true" source="c:\sfml\include\sfml\graphics\text.hpp" line="202">
\brief Get the text's style

\return Text's style

\see setStyle

</member>
<member name="M:sf.Text.getColor" decl="true" source="c:\sfml\include\sfml\graphics\text.hpp" line="212">
\brief Get the global color of the text

\return Global color of the text

\see setColor

</member>
<member name="M:sf.Text.findCharacterPos(System.UInt32)" decl="true" source="c:\sfml\include\sfml\graphics\text.hpp" line="222">
\brief Return the position of the \a index-th character

This function computes the visual position of a character
from its index in the string. The returned position is
in global coordinates (translation, rotation, scale and
origin are applied).
If \a index is out of range, the position of the end of
the string is returned.

\param index Index of the character

\return Position of the character

</member>
<member name="M:sf.Text.getLocalBounds" decl="true" source="c:\sfml\include\sfml\graphics\text.hpp" line="239">
\brief Get the local bounding rectangle of the entity

The returned rectangle is in local coordinates, which means
that it ignores the transformations (translation, rotation,
scale, ...) that are applied to the entity.
In other words, this function returns the bounds of the
entity in the entity's coordinate system.

\return Local bounding rectangle of the entity

</member>
<member name="M:sf.Text.getGlobalBounds" decl="true" source="c:\sfml\include\sfml\graphics\text.hpp" line="253">
\brief Get the global bounding rectangle of the entity

The returned rectangle is in global coordinates, which means
that it takes in account the transformations (translation,
rotation, scale, ...) that are applied to the entity.
In other words, this function returns the bounds of the
sprite in the global 2D world's coordinate system.

\return Global bounding rectangle of the entity

</member>
<member name="M:sf.Text.draw(sf.RenderTarget*!System.Runtime.CompilerServices.IsImplicitlyDereferenced,sf.RenderStates)" decl="true" source="c:\sfml\include\sfml\graphics\text.hpp" line="269">
\brief Draw the text to a render target

\param target Render target to draw to
\param states Current render states

</member>
<member name="M:sf.Text.updateGeometry" decl="true" source="c:\sfml\include\sfml\graphics\text.hpp" line="278">
\brief Update the text's geometry

</member>
<member name="T:sf.RectangleShape" decl="false" source="c:\sfml\include\sfml\graphics\rectangleshape.hpp" line="38">
\brief Specialized shape representing a rectangle

</member>
<member name="M:sf.RectangleShape.#ctor(sf.Vector2&lt;System.Single&gt;!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="c:\sfml\include\sfml\graphics\rectangleshape.hpp" line="46">
\brief Default constructor

\param size Size of the rectangle

</member>
<member name="M:sf.RectangleShape.setSize(sf.Vector2&lt;System.Single&gt;!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="c:\sfml\include\sfml\graphics\rectangleshape.hpp" line="54">
\brief Set the size of the rectangle

\param size New size of the rectangle

\see getSize

</member>
<member name="M:sf.RectangleShape.getSize" decl="true" source="c:\sfml\include\sfml\graphics\rectangleshape.hpp" line="64">
\brief Get the size of the rectangle

\return Size of the rectangle

\see setSize

</member>
<member name="M:sf.RectangleShape.getPointCount" decl="true" source="c:\sfml\include\sfml\graphics\rectangleshape.hpp" line="74">
\brief Get the number of points defining the shape

\return Number of points of the shape

</member>
<member name="M:sf.RectangleShape.getPoint(System.UInt32)" decl="true" source="c:\sfml\include\sfml\graphics\rectangleshape.hpp" line="82">
\brief Get a point of the shape

The result is undefined if \a index is out of the valid range.

\param index Index of the point to get, in range [0 .. getPointCount() - 1]

\return Index-th point of the shape

</member>
<member name="T:PauseState" decl="false" source="c:\sfml\include\sfml\graphics\rectangleshape.hpp" line="108">
\class sf::RectangleShape
\ingroup graphics

This class inherits all the functions of sf::Transformable
(position, rotation, scale, bounds, ...) as well as the
functions of sf::Shape (outline, color, texture, ...).

Usage example:
\code
sf::RectangleShape rectangle;
rectangle.setSize(sf::Vector2f(100, 50));
rectangle.setOutlineColor(sf::Color::Red);
rectangle.setOutlineThickness(5);
rectangle.setPosition(10, 20);
...
window.draw(rectangle);
\endcode

\see sf::Shape, sf::CircleShape, sf::ConvexShape

<summary>
Represents the pause state
</summary>
</member>
<member name="T:sf.Sound" decl="false" source="c:\sfml\include\sfml\audio\sound.hpp" line="42">
\brief Regular sound that can be played in the audio environment

</member>
<member name="M:sf.Sound.#ctor" decl="true" source="c:\sfml\include\sfml\audio\sound.hpp" line="50">
\brief Default constructor

</member>
<member name="M:sf.Sound.#ctor(sf.SoundBuffer!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="c:\sfml\include\sfml\audio\sound.hpp" line="56">
\brief Construct the sound with a buffer

\param buffer Sound buffer containing the audio data to play with the sound

</member>
<member name="M:sf.Sound.#ctor(sf.Sound!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="c:\sfml\include\sfml\audio\sound.hpp" line="64">
\brief Copy constructor

\param copy Instance to copy

</member>
<member name="M:sf.Sound.Dispose" decl="true" source="c:\sfml\include\sfml\audio\sound.hpp" line="72">
\brief Destructor

</member>
<member name="M:sf.Sound.play" decl="true" source="c:\sfml\include\sfml\audio\sound.hpp" line="78">
\brief Start or resume playing the sound

This function starts the stream if it was stopped, resumes
it if it was paused, and restarts it from beginning if it
was it already playing.
This function uses its own thread so that it doesn't block
the rest of the program while the sound is played.

\see pause, stop

</member>
<member name="M:sf.Sound.pause" decl="true" source="c:\sfml\include\sfml\audio\sound.hpp" line="92">
\brief Pause the sound

This function pauses the sound if it was playing,
otherwise (sound already paused or stopped) it has no effect.

\see play, stop

</member>
<member name="M:sf.Sound.stop" decl="true" source="c:\sfml\include\sfml\audio\sound.hpp" line="103">
\brief stop playing the sound

This function stops the sound if it was playing or paused,
and does nothing if it was already stopped.
It also resets the playing position (unlike pause()).

\see play, pause

</member>
<member name="M:sf.Sound.setBuffer(sf.SoundBuffer!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="c:\sfml\include\sfml\audio\sound.hpp" line="115">
\brief Set the source buffer containing the audio data to play

It is important to note that the sound buffer is not copied,
thus the sf::SoundBuffer instance must remain alive as long
as it is attached to the sound.

\param buffer Sound buffer to attach to the sound

\see getBuffer

</member>
<member name="M:sf.Sound.setLoop(System.Boolean)" decl="true" source="c:\sfml\include\sfml\audio\sound.hpp" line="129">
\brief Set whether or not the sound should loop after reaching the end

If set, the sound will restart from beginning after
reaching the end and so on, until it is stopped or
setLoop(false) is called.
The default looping state for sound is false.

\param loop True to play in loop, false to play once

\see getLoop

</member>
<member name="M:sf.Sound.setPlayingOffset(sf.Time)" decl="true" source="c:\sfml\include\sfml\audio\sound.hpp" line="144">
\brief Change the current playing position of the sound

The playing position can be changed when the sound is
either paused or playing.

\param timeOffset New playing position, from the beginning of the sound

\see getPlayingOffset

</member>
<member name="M:sf.Sound.getBuffer" decl="true" source="c:\sfml\include\sfml\audio\sound.hpp" line="157">
\brief Get the audio buffer attached to the sound

\return Sound buffer attached to the sound (can be NULL)

</member>
<member name="M:sf.Sound.getLoop" decl="true" source="c:\sfml\include\sfml\audio\sound.hpp" line="165">
\brief Tell whether or not the sound is in loop mode

\return True if the sound is looping, false otherwise

\see setLoop

</member>
<member name="M:sf.Sound.getPlayingOffset" decl="true" source="c:\sfml\include\sfml\audio\sound.hpp" line="175">
\brief Get the current playing position of the sound

\return Current playing position, from the beginning of the sound

\see setPlayingOffset

</member>
<member name="M:sf.Sound.getStatus" decl="true" source="c:\sfml\include\sfml\audio\sound.hpp" line="185">
\brief Get the current status of the sound (stopped, paused, playing)

\return Current status of the sound

</member>
<member name="M:sf.Sound.op_Assign(sf.Sound!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="c:\sfml\include\sfml\audio\sound.hpp" line="193">
\brief Overload of assignment operator

\param right Instance to assign

\return Reference to self

</member>
<member name="M:sf.Sound.resetBuffer" decl="true" source="c:\sfml\include\sfml\audio\sound.hpp" line="203">
\brief Reset the internal buffer of the sound

This function is for internal use only, you don't have
to use it. It is called by the sf::SoundBuffer that
this sound uses, when it is destroyed in order to prevent
the sound from using a dead buffer.

</member>
<member name="T:sf.SoundBuffer" decl="false" source="c:\sfml\include\sfml\audio\soundbuffer.hpp" line="49">
\brief Storage for audio samples defining a sound

</member>
<member name="M:sf.SoundBuffer.#ctor" decl="true" source="c:\sfml\include\sfml\audio\soundbuffer.hpp" line="57">
\brief Default constructor

</member>
<member name="M:sf.SoundBuffer.#ctor(sf.SoundBuffer!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="c:\sfml\include\sfml\audio\soundbuffer.hpp" line="63">
\brief Copy constructor

\param copy Instance to copy

</member>
<member name="M:sf.SoundBuffer.Dispose" decl="true" source="c:\sfml\include\sfml\audio\soundbuffer.hpp" line="71">
\brief Destructor

</member>
<member name="M:sf.SoundBuffer.loadFromFile(std.basic_string&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte,std.char_traits{System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte},std.allocator&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte&gt;&gt;!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="c:\sfml\include\sfml\audio\soundbuffer.hpp" line="77">
\brief Load the sound buffer from a file

Here is a complete list of all the supported audio formats:
ogg, wav, flac, aiff, au, raw, paf, svx, nist, voc, ircam,
w64, mat4, mat5 pvf, htk, sds, avr, sd2, caf, wve, mpc2k, rf64.

\param filename Path of the sound file to load

\return True if loading succeeded, false if it failed

\see loadFromMemory, loadFromStream, loadFromSamples, saveToFile

</member>
<member name="M:sf.SoundBuffer.loadFromMemory(System.Void!System.Runtime.CompilerServices.IsConst*,System.UInt32)" decl="true" source="c:\sfml\include\sfml\audio\soundbuffer.hpp" line="93">
\brief Load the sound buffer from a file in memory

Here is a complete list of all the supported audio formats:
ogg, wav, flac, aiff, au, raw, paf, svx, nist, voc, ircam,
w64, mat4, mat5 pvf, htk, sds, avr, sd2, caf, wve, mpc2k, rf64.

\param data        Pointer to the file data in memory
\param sizeInBytes Size of the data to load, in bytes

\return True if loading succeeded, false if it failed

\see loadFromFile, loadFromStream, loadFromSamples

</member>
<member name="M:sf.SoundBuffer.loadFromStream(sf.InputStream*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="c:\sfml\include\sfml\audio\soundbuffer.hpp" line="110">
\brief Load the sound buffer from a custom stream

Here is a complete list of all the supported audio formats:
ogg, wav, flac, aiff, au, raw, paf, svx, nist, voc, ircam,
w64, mat4, mat5 pvf, htk, sds, avr, sd2, caf, wve, mpc2k, rf64.

\param stream Source stream to read from

\return True if loading succeeded, false if it failed

\see loadFromFile, loadFromMemory, loadFromSamples

</member>
<member name="M:sf.SoundBuffer.loadFromSamples(System.Int16!System.Runtime.CompilerServices.IsConst*,System.UInt32,System.UInt32,System.UInt32)" decl="true" source="c:\sfml\include\sfml\audio\soundbuffer.hpp" line="126">
\brief Load the sound buffer from an array of audio samples

The assumed format of the audio samples is 16 bits signed integer
(sf::Int16).

\param samples      Pointer to the array of samples in memory
\param sampleCount  Number of samples in the array
\param channelCount Number of channels (1 = mono, 2 = stereo, ...)
\param sampleRate   Sample rate (number of samples to play per second)

\return True if loading succeeded, false if it failed

\see loadFromFile, loadFromMemory, saveToFile

</member>
<member name="M:sf.SoundBuffer.saveToFile(std.basic_string&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte,std.char_traits{System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte},std.allocator&lt;System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte&gt;&gt;!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="c:\sfml\include\sfml\audio\soundbuffer.hpp" line="144">
\brief Save the sound buffer to an audio file

Here is a complete list of all the supported audio formats:
ogg, wav, flac, aiff, au, raw, paf, svx, nist, voc, ircam,
w64, mat4, mat5 pvf, htk, sds, avr, sd2, caf, wve, mpc2k, rf64.

\param filename Path of the sound file to write

\return True if saving succeeded, false if it failed

\see loadFromFile, loadFromMemory, loadFromSamples

</member>
<member name="M:sf.SoundBuffer.getSamples" decl="true" source="c:\sfml\include\sfml\audio\soundbuffer.hpp" line="160">
\brief Get the array of audio samples stored in the buffer

The format of the returned samples is 16 bits signed integer
(sf::Int16). The total number of samples in this array
is given by the getSampleCount() function.

\return Read-only pointer to the array of sound samples

\see getSampleCount

</member>
<member name="M:sf.SoundBuffer.getSampleCount" decl="true" source="c:\sfml\include\sfml\audio\soundbuffer.hpp" line="174">
\brief Get the number of samples stored in the buffer

The array of samples can be accessed with the getSamples()
function.

\return Number of samples

\see getSamples

</member>
<member name="M:sf.SoundBuffer.getSampleRate" decl="true" source="c:\sfml\include\sfml\audio\soundbuffer.hpp" line="187">
\brief Get the sample rate of the sound

The sample rate is the number of samples played per second.
The higher, the better the quality (for example, 44100
samples/s is CD quality).

\return Sample rate (number of samples per second)

\see getChannelCount, getDuration

</member>
<member name="M:sf.SoundBuffer.getChannelCount" decl="true" source="c:\sfml\include\sfml\audio\soundbuffer.hpp" line="201">
\brief Get the number of channels used by the sound

If the sound is mono then the number of channels will
be 1, 2 for stereo, etc.

\return Number of channels

\see getSampleRate, getDuration

</member>
<member name="M:sf.SoundBuffer.getDuration" decl="true" source="c:\sfml\include\sfml\audio\soundbuffer.hpp" line="214">
\brief Get the total duration of the sound

\return Sound duration

\see getSampleRate, getChannelCount

</member>
<member name="M:sf.SoundBuffer.op_Assign(sf.SoundBuffer!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="c:\sfml\include\sfml\audio\soundbuffer.hpp" line="224">
\brief Overload of assignment operator

\param right Instance to assign

\return Reference to self

</member>
<member name="M:sf.SoundBuffer.initialize(sf.priv.SoundFile*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="c:\sfml\include\sfml\audio\soundbuffer.hpp" line="238">
\brief Initialize the internal state after loading a new sound

\param file Sound file providing access to the new loaded sound

\return True on succesful initialization, false on failure

</member>
<member name="M:sf.SoundBuffer.update(System.UInt32,System.UInt32)" decl="true" source="c:\sfml\include\sfml\audio\soundbuffer.hpp" line="248">
\brief Update the internal buffer with the cached audio samples

\param channelCount Number of channels
\param sampleRate   Sample rate (number of samples per second)

\return True on success, false if any error happened

</member>
<member name="M:sf.SoundBuffer.attachSound(sf.Sound*)" decl="true" source="c:\sfml\include\sfml\audio\soundbuffer.hpp" line="259">
\brief Add a sound to the list of sounds that use this buffer

\param sound Sound instance to attach

</member>
<member name="M:sf.SoundBuffer.detachSound(sf.Sound*)" decl="true" source="c:\sfml\include\sfml\audio\soundbuffer.hpp" line="267">
\brief Remove a sound from the list of sounds that use this buffer

\param sound Sound instance to detach

</member>
<member name="T:SoundPlayer" decl="false" source="d:\users\andrew\perforceworkspace\drew-deskpc\drewski's block breaker\drewski's block breaker\soundplayer.h" line="11">
<summary>
Represents the sound player
</summary>
</member>
<member name="T:ServiceLocator" decl="false" source="d:\users\andrew\perforceworkspace\drew-deskpc\drewski's block breaker\drewski's block breaker\servicelocator.h" line="8">
<summary>
Service Locator design pattern
Contains locators for Textures, Fonts, Window, and SoundPlayer
</summary>
</member>
</members>
</doc>