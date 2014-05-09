<?xml version="1.0"?><doc>
<members>
<member name="T:sf.Time" decl="false" source="c:\sfml\include\sfml\system\time.hpp" line="37">
\brief Represents a time value

</member>
<member name="M:sf.Time.#ctor" decl="true" source="c:\sfml\include\sfml\system\time.hpp" line="45">
\brief Default constructor

Sets the time value to zero.

</member>
<member name="M:sf.Time.asSeconds" decl="true" source="c:\sfml\include\sfml\system\time.hpp" line="53">
\brief Return the time value as a number of seconds

\return Time in seconds

\see asMilliseconds, asMicroseconds

</member>
<member name="M:sf.Time.asMilliseconds" decl="true" source="c:\sfml\include\sfml\system\time.hpp" line="63">
\brief Return the time value as a number of milliseconds

\return Time in milliseconds

\see asSeconds, asMicroseconds

</member>
<member name="M:sf.Time.asMicroseconds" decl="true" source="c:\sfml\include\sfml\system\time.hpp" line="73">
\brief Return the time value as a number of microseconds

\return Time in microseconds

\see asSeconds, asMilliseconds

</member>
<member name="M:sf.Time.#ctor(System.Int64)" decl="true" source="c:\sfml\include\sfml\system\time.hpp" line="94">
\brief Construct from a number of microseconds

This function is internal. To construct time values,
use sf::seconds, sf::milliseconds or sf::microseconds instead.

\param microseconds Number of microseconds

</member>
<member name="M:sf.seconds(System.Single)" decl="true" source="c:\sfml\include\sfml\system\time.hpp" line="113">
\relates Time
\brief Construct a time value from a number of seconds

\param amount Number of seconds

\return Time value constructed from the amount of seconds

\see milliseconds, microseconds

</member>
<member name="M:sf.milliseconds(System.Int32)" decl="true" source="c:\sfml\include\sfml\system\time.hpp" line="126">
\relates Time
\brief Construct a time value from a number of milliseconds

\param amount Number of milliseconds

\return Time value constructed from the amount of milliseconds

\see seconds, microseconds

</member>
<member name="M:sf.microseconds(System.Int64)" decl="true" source="c:\sfml\include\sfml\system\time.hpp" line="139">
\relates Time
\brief Construct a time value from a number of microseconds

\param amount Number of microseconds

\return Time value constructed from the amount of microseconds

\see seconds, milliseconds

</member>
<member name="M:sf.op_Equality(sf.Time,sf.Time)" decl="true" source="c:\sfml\include\sfml\system\time.hpp" line="152">
\relates Time
\brief Overload of == operator to compare two time values

\param left  Left operand (a time)
\param right Right operand (a time)

\return True if both time values are equal

</member>
<member name="M:sf.op_Inequality(sf.Time,sf.Time)" decl="true" source="c:\sfml\include\sfml\system\time.hpp" line="164">
\relates Time
\brief Overload of != operator to compare two time values

\param left  Left operand (a time)
\param right Right operand (a time)

\return True if both time values are different

</member>
<!-- Discarding badly formed XML document comment for member 'M:sf.op_LessThan(sf.Time,sf.Time)'. -->
<member name="M:sf.op_GreaterThan(sf.Time,sf.Time)" decl="true" source="c:\sfml\include\sfml\system\time.hpp" line="188">
\relates Time
\brief Overload of &gt; operator to compare two time values

\param left  Left operand (a time)
\param right Right operand (a time)

\return True if \a left is greater than \a right

</member>
<!-- Discarding badly formed XML document comment for member 'M:sf.op_LessThanOrEqual(sf.Time,sf.Time)'. -->
<member name="M:sf.op_GreaterThanOrEqual(sf.Time,sf.Time)" decl="true" source="c:\sfml\include\sfml\system\time.hpp" line="212">
\relates Time
\brief Overload of &gt;= operator to compare two time values

\param left  Left operand (a time)
\param right Right operand (a time)

\return True if \a left is greater or equal than \a right

</member>
<member name="M:sf.op_UnaryNegation(sf.Time)" decl="true" source="c:\sfml\include\sfml\system\time.hpp" line="224">
\relates Time
\brief Overload of unary - operator to negate a time value

\param right Right operand (a time)

\return Opposite of the time value

</member>
<member name="M:sf.op_Addition(sf.Time,sf.Time)" decl="true" source="c:\sfml\include\sfml\system\time.hpp" line="235">
\relates Time
\brief Overload of binary + operator to add two time values

\param left  Left operand (a time)
\param right Right operand (a time)

\return Sum of the two times values

</member>
<member name="M:sf.op_AdditionAssignment(sf.Time*!System.Runtime.CompilerServices.IsImplicitlyDereferenced,sf.Time)" decl="true" source="c:\sfml\include\sfml\system\time.hpp" line="247">
\relates Time
\brief Overload of binary += operator to add/assign two time values

\param left  Left operand (a time)
\param right Right operand (a time)

\return Sum of the two times values

</member>
<member name="M:sf.op_Subtraction(sf.Time,sf.Time)" decl="true" source="c:\sfml\include\sfml\system\time.hpp" line="259">
\relates Time
\brief Overload of binary - operator to subtract two time values

\param left  Left operand (a time)
\param right Right operand (a time)

\return Difference of the two times values

</member>
<member name="M:sf.op_SubtractionAssignment(sf.Time*!System.Runtime.CompilerServices.IsImplicitlyDereferenced,sf.Time)" decl="true" source="c:\sfml\include\sfml\system\time.hpp" line="271">
\relates Time
\brief Overload of binary -= operator to subtract/assign two time values

\param left  Left operand (a time)
\param right Right operand (a time)

\return Difference of the two times values

</member>
<member name="M:sf.op_Multiply(sf.Time,System.Single)" decl="true" source="c:\sfml\include\sfml\system\time.hpp" line="283">
\relates Time
\brief Overload of binary * operator to scale a time value

\param left  Left operand (a time)
\param right Right operand (a number)

\return \a left multiplied by \a right

</member>
<member name="M:sf.op_Multiply(sf.Time,System.Int64)" decl="true" source="c:\sfml\include\sfml\system\time.hpp" line="295">
\relates Time
\brief Overload of binary * operator to scale a time value

\param left  Left operand (a time)
\param right Right operand (a number)

\return \a left multiplied by \a right

</member>
<member name="M:sf.op_Multiply(System.Single,sf.Time)" decl="true" source="c:\sfml\include\sfml\system\time.hpp" line="307">
\relates Time
\brief Overload of binary * operator to scale a time value

\param left  Left operand (a number)
\param right Right operand (a time)

\return \a left multiplied by \a right

</member>
<member name="M:sf.op_Multiply(System.Int64,sf.Time)" decl="true" source="c:\sfml\include\sfml\system\time.hpp" line="319">
\relates Time
\brief Overload of binary * operator to scale a time value

\param left  Left operand (a number)
\param right Right operand (a time)

\return \a left multiplied by \a right

</member>
<member name="M:sf.op_MultiplicationAssignment(sf.Time*!System.Runtime.CompilerServices.IsImplicitlyDereferenced,System.Single)" decl="true" source="c:\sfml\include\sfml\system\time.hpp" line="331">
\relates Time
\brief Overload of binary *= operator to scale/assign a time value

\param left  Left operand (a time)
\param right Right operand (a number)

\return \a left multiplied by \a right

</member>
<member name="M:sf.op_MultiplicationAssignment(sf.Time*!System.Runtime.CompilerServices.IsImplicitlyDereferenced,System.Int64)" decl="true" source="c:\sfml\include\sfml\system\time.hpp" line="343">
\relates Time
\brief Overload of binary *= operator to scale/assign a time value

\param left  Left operand (a time)
\param right Right operand (a number)

\return \a left multiplied by \a right

</member>
<member name="M:sf.op_Division(sf.Time,System.Single)" decl="true" source="c:\sfml\include\sfml\system\time.hpp" line="355">
\relates Time
\brief Overload of binary / operator to scale a time value

\param left  Left operand (a time)
\param right Right operand (a number)

\return \a left divided by \a right

</member>
<member name="M:sf.op_Division(sf.Time,System.Int64)" decl="true" source="c:\sfml\include\sfml\system\time.hpp" line="367">
\relates Time
\brief Overload of binary / operator to scale a time value

\param left  Left operand (a time)
\param right Right operand (a number)

\return \a left divided by \a right

</member>
<member name="M:sf.op_DivisionAssignment(sf.Time*!System.Runtime.CompilerServices.IsImplicitlyDereferenced,System.Single)" decl="true" source="c:\sfml\include\sfml\system\time.hpp" line="379">
\relates Time
\brief Overload of binary /= operator to scale/assign a time value

\param left  Left operand (a time)
\param right Right operand (a number)

\return \a left divided by \a right

</member>
<member name="M:sf.op_DivisionAssignment(sf.Time*!System.Runtime.CompilerServices.IsImplicitlyDereferenced,System.Int64)" decl="true" source="c:\sfml\include\sfml\system\time.hpp" line="391">
\relates Time
\brief Overload of binary /= operator to scale/assign a time value

\param left  Left operand (a time)
\param right Right operand (a number)

\return \a left divided by \a right

</member>
<member name="M:sf.op_Division(sf.Time,sf.Time)" decl="true" source="c:\sfml\include\sfml\system\time.hpp" line="403">
\relates Time
\brief Overload of binary / operator to compute the ratio of two time values

\param left  Left operand (a time)
\param right Right operand (a time)

\return \a left divided by \a right

</member>
<member name="M:sf.op_Modulus(sf.Time,sf.Time)" decl="true" source="c:\sfml\include\sfml\system\time.hpp" line="415">
\relates Time
\brief Overload of binary % operator to compute remainder of a time value

\param left  Left operand (a time)
\param right Right operand (a time)

\return \a left modulo \a right

</member>
<member name="M:sf.op_ModulusAssignment(sf.Time*!System.Runtime.CompilerServices.IsImplicitlyDereferenced,sf.Time)" decl="true" source="c:\sfml\include\sfml\system\time.hpp" line="427">
\relates Time
\brief Overload of binary %= operator to compute/assign remainder of a time value

\param left  Left operand (a time)
\param right Right operand (a time)

\return \a left modulo \a right

</member>
<member name="T:sf.Event" decl="false" source="c:\sfml\include\sfml\window\event.hpp" line="40">
\brief Defines a system event and its parameters

</member>
<member name="T:sf.Event.SizeEvent" decl="false" source="c:\sfml\include\sfml\window\event.hpp" line="48">
\brief Size events parameters (Resized)

</member>
<member name="T:sf.Event.KeyEvent" decl="false" source="c:\sfml\include\sfml\window\event.hpp" line="58">
\brief Keyboard event parameters (KeyPressed, KeyReleased)

</member>
<member name="T:sf.Event.TextEvent" decl="false" source="c:\sfml\include\sfml\window\event.hpp" line="71">
\brief Text event parameters (TextEntered)

</member>
<member name="T:sf.Event.MouseMoveEvent" decl="false" source="c:\sfml\include\sfml\window\event.hpp" line="80">
\brief Mouse move event parameters (MouseMoved)

</member>
<member name="T:sf.Event.MouseButtonEvent" decl="false" source="c:\sfml\include\sfml\window\event.hpp" line="90">
\brief Mouse buttons events parameters
       (MouseButtonPressed, MouseButtonReleased)

</member>
<member name="T:sf.Event.MouseWheelEvent" decl="false" source="c:\sfml\include\sfml\window\event.hpp" line="102">
\brief Mouse wheel events parameters (MouseWheelMoved)

</member>
<member name="T:sf.Event.JoystickConnectEvent" decl="false" source="c:\sfml\include\sfml\window\event.hpp" line="113">
\brief Joystick connection events parameters
       (JoystickConnected, JoystickDisconnected)

</member>
<member name="T:sf.Event.JoystickMoveEvent" decl="false" source="c:\sfml\include\sfml\window\event.hpp" line="123">
\brief Joystick axis move event parameters (JoystickMoved)

</member>
<member name="T:sf.Event.JoystickButtonEvent" decl="false" source="c:\sfml\include\sfml\window\event.hpp" line="134">
\brief Joystick buttons events parameters
       (JoystickButtonPressed, JoystickButtonReleased)

</member>
<member name="T:sf.Event.EventType" decl="false" source="c:\sfml\include\sfml\window\event.hpp" line="145">
\brief Enumeration of the different types of events

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
<member name="T:Application" decl="false" source="d:\users\andrew\perforceworkspace\drew-deskpc\drewski's block breaker\drewski's block breaker\application.h" line="11">
<summary>
Initializing class for the game app
</summary>
</member>
</members>
</doc>