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
<member name="T:_exception" decl="false" source="c:\sfml\include\sfml\audio\sound.hpp" line="228">
\class sf::Sound
\ingroup audio

sf::Sound is the class to use to play sounds.
It provides:
\li Control (play, pause, stop)
\li Ability to modify output parameters in real-time (pitch, volume, ...)
\li 3D spatial features (position, attenuation, ...).

sf::Sound is perfect for playing short sounds that can
fit in memory and require no latency, like foot steps or
gun shots. For longer sounds, like background musics
or long speeches, rather see sf::Music (which is based
on streaming).

In order to work, a sound must be given a buffer of audio
data to play. Audio data (samples) is stored in sf::SoundBuffer,
and attached to a sound with the setBuffer() function.
The buffer object attached to a sound must remain alive
as long as the sound uses it. Note that multiple sounds
can use the same sound buffer at the same time.

Usage example:
\code
sf::SoundBuffer buffer;
buffer.loadFromFile("sound.wav");

sf::Sound sound;
sound.setBuffer(buffer);
sound.play();
\endcode

\see sf::SoundBuffer, sf::Music

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
<member name="T:sf.Listener" decl="false" source="c:\sfml\include\sfml\audio\listener.hpp" line="38">
\brief The audio listener is the point in the scene
       from where all the sounds are heard

</member>
<member name="M:sf.Listener.setGlobalVolume(System.Single)" decl="true" source="c:\sfml\include\sfml\audio\listener.hpp" line="47">
\brief Change the global volume of all the sounds and musics

The volume is a number between 0 and 100; it is combined with
the individual volume of each sound / music.
The default value for the volume is 100 (maximum).

\param volume New global volume, in the range [0, 100]

\see getGlobalVolume

</member>
<member name="M:sf.Listener.getGlobalVolume" decl="true" source="c:\sfml\include\sfml\audio\listener.hpp" line="61">
\brief Get the current value of the global volume

\return Current global volume, in the range [0, 100]

\see setGlobalVolume

</member>
<member name="M:sf.Listener.setPosition(System.Single,System.Single,System.Single)" decl="true" source="c:\sfml\include\sfml\audio\listener.hpp" line="71">
\brief Set the position of the listener in the scene

The default listener's position is (0, 0, 0).

\param x X coordinate of the listener's position
\param y Y coordinate of the listener's position
\param z Z coordinate of the listener's position

\see getPosition, setDirection

</member>
<member name="M:sf.Listener.setPosition(sf.Vector3&lt;System.Single&gt;!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="c:\sfml\include\sfml\audio\listener.hpp" line="85">
\brief Set the position of the listener in the scene

The default listener's position is (0, 0, 0).

\param position New listener's position

\see getPosition, setDirection

</member>
<member name="M:sf.Listener.getPosition" decl="true" source="c:\sfml\include\sfml\audio\listener.hpp" line="97">
\brief Get the current position of the listener in the scene

\return Listener's position

\see setPosition

</member>
<member name="M:sf.Listener.setDirection(System.Single,System.Single,System.Single)" decl="true" source="c:\sfml\include\sfml\audio\listener.hpp" line="107">
\brief Set the orientation of the listener in the scene

The orientation defines the 3D axes of the listener
(left, up, front) in the scene. The orientation vector
doesn't have to be normalized.
The default listener's orientation is (0, 0, -1).

\param x X coordinate of the listener's orientation
\param y Y coordinate of the listener's orientation
\param z Z coordinate of the listener's orientation

\see getDirection, setPosition

</member>
<member name="M:sf.Listener.setDirection(sf.Vector3&lt;System.Single&gt;!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="c:\sfml\include\sfml\audio\listener.hpp" line="124">
\brief Set the orientation of the listener in the scene

The orientation defines the 3D axes of the listener
(left, up, front) in the scene. The orientation vector
doesn't have to be normalized.
The default listener's orientation is (0, 0, -1).

\param direction New listener's orientation

\see getDirection, setPosition

</member>
<member name="M:sf.Listener.getDirection" decl="true" source="c:\sfml\include\sfml\audio\listener.hpp" line="139">
\brief Get the current orientation of the listener in the scene

\return Listener's orientation

\see setDirection

</member>
<member name="M:SoundPlayer.#ctor" decl="false" source="c:\sfml\include\sfml\audio\listener.hpp" line="156">
\class sf::Listener
\ingroup audio

The audio listener defines the global properties of the
audio environment, it defines where and how sounds and musics
are heard. If sf::View is the eyes of the user, then sf::Listener
is his ears (by the way, they are often linked together --
same position, orientation, etc.). 

sf::Listener is a simple interface, which allows to setup the
listener in the 3D audio environment (position and direction),
and to adjust the global volume.

Because the listener is unique in the scene, sf::Listener only
contains static functions and doesn't have to be instanciated.

Usage example:
\code
// Move the listener to the position (1, 0, -5)
sf::Listener::setPosition(1, 0, -5);

// Make it face the right axis (1, 0, 0)
sf::Listener::setDirection(1, 0, 0);

// Reduce the global volume
sf::Listener::setGlobalVolume(50);
\endcode

</member>
<member name="M:SoundPlayer.play(Sounds.ID)" decl="false" source="d:\users\andrew\perforceworkspace\drew-deskpc\drewski's block breaker\drewski's block breaker\soundplayer.cpp" line="18">
<summary>
Plays the specified effect.
</summary>
<param name="effect">The effect.</param>
</member>
<member name="M:SoundPlayer.removeInactiveSounds" decl="false" source="d:\users\andrew\perforceworkspace\drew-deskpc\drewski's block breaker\drewski's block breaker\soundplayer.cpp" line="33">
<summary>
Removes the inactive sounds.
</summary>
</member>
</members>
</doc>