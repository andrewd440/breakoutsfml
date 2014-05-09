<?xml version="1.0"?><doc>
<members>
<member name="T:sf.Sprite" decl="false" source="c:\sfml\include\sfml\graphics\sprite.hpp" line="43">
\brief Drawable representation of a texture, with its
       own transformations, color, etc.

</member>
<member name="M:sf.Sprite.#ctor" decl="true" source="c:\sfml\include\sfml\graphics\sprite.hpp" line="52">
\brief Default constructor

Creates an empty sprite with no source texture.

</member>
<member name="M:sf.Sprite.#ctor(sf.Texture!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="c:\sfml\include\sfml\graphics\sprite.hpp" line="60">
\brief Construct the sprite from a source texture

\param texture Source texture

\see setTexture

</member>
<member name="M:sf.Sprite.#ctor(sf.Texture!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced,sf.Rect&lt;System.Int32&gt;!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="c:\sfml\include\sfml\graphics\sprite.hpp" line="70">
\brief Construct the sprite from a sub-rectangle of a source texture

\param texture   Source texture
\param rectangle Sub-rectangle of the texture to assign to the sprite

\see setTexture, setTextureRect

</member>
<member name="M:sf.Sprite.setTexture(sf.Texture!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced,System.Boolean)" decl="true" source="c:\sfml\include\sfml\graphics\sprite.hpp" line="81">
\brief Change the source texture of the sprite

The \a texture argument refers to a texture that must
exist as long as the sprite uses it. Indeed, the sprite
doesn't store its own copy of the texture, but rather keeps
a pointer to the one that you passed to this function.
If the source texture is destroyed and the sprite tries to
use it, the behaviour is undefined.
If \a resetRect is true, the TextureRect property of
the sprite is automatically adjusted to the size of the new
texture. If it is false, the texture rect is left unchanged.

\param texture   New texture
\param resetRect Should the texture rect be reset to the size of the new texture?

\see getTexture, setTextureRect

</member>
<member name="M:sf.Sprite.setTextureRect(sf.Rect&lt;System.Int32&gt;!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="c:\sfml\include\sfml\graphics\sprite.hpp" line="102">
\brief Set the sub-rectangle of the texture that the sprite will display

The texture rect is useful when you don't want to display
the whole texture, but rather a part of it.
By default, the texture rect covers the entire texture.

\param rectangle Rectangle defining the region of the texture to display

\see getTextureRect, setTexture

</member>
<member name="M:sf.Sprite.setColor(sf.Color!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="c:\sfml\include\sfml\graphics\sprite.hpp" line="116">
\brief Set the global color of the sprite

This color is modulated (multiplied) with the sprite's
texture. It can be used to colorize the sprite, or change
its global opacity.
By default, the sprite's color is opaque white.

\param color New color of the sprite

\see getColor

</member>
<member name="M:sf.Sprite.getTexture" decl="true" source="c:\sfml\include\sfml\graphics\sprite.hpp" line="131">
\brief Get the source texture of the sprite

If the sprite has no source texture, a NULL pointer is returned.
The returned pointer is const, which means that you can't
modify the texture when you retrieve it with this function.

\return Pointer to the sprite's texture

\see setTexture

</member>
<member name="M:sf.Sprite.getTextureRect" decl="true" source="c:\sfml\include\sfml\graphics\sprite.hpp" line="145">
\brief Get the sub-rectangle of the texture displayed by the sprite

\return Texture rectangle of the sprite

\see setTextureRect

</member>
<member name="M:sf.Sprite.getColor" decl="true" source="c:\sfml\include\sfml\graphics\sprite.hpp" line="155">
\brief Get the global color of the sprite

\return Global color of the sprite

\see setColor

</member>
<member name="M:sf.Sprite.getLocalBounds" decl="true" source="c:\sfml\include\sfml\graphics\sprite.hpp" line="165">
\brief Get the local bounding rectangle of the entity

The returned rectangle is in local coordinates, which means
that it ignores the transformations (translation, rotation,
scale, ...) that are applied to the entity.
In other words, this function returns the bounds of the
entity in the entity's coordinate system.

\return Local bounding rectangle of the entity

</member>
<member name="M:sf.Sprite.getGlobalBounds" decl="true" source="c:\sfml\include\sfml\graphics\sprite.hpp" line="179">
\brief Get the global bounding rectangle of the entity

The returned rectangle is in global coordinates, which means
that it takes in account the transformations (translation,
rotation, scale, ...) that are applied to the entity.
In other words, this function returns the bounds of the
sprite in the global 2D world's coordinate system.

\return Global bounding rectangle of the entity

</member>
<member name="M:sf.Sprite.draw(sf.RenderTarget*!System.Runtime.CompilerServices.IsImplicitlyDereferenced,sf.RenderStates)" decl="true" source="c:\sfml\include\sfml\graphics\sprite.hpp" line="195">
\brief Draw the sprite to a render target

\param target Render target to draw to
\param states Current render states

</member>
<member name="M:sf.Sprite.updatePositions" decl="true" source="c:\sfml\include\sfml\graphics\sprite.hpp" line="204">
\brief Update the vertices' positions

</member>
<member name="M:sf.Sprite.updateTexCoords" decl="true" source="c:\sfml\include\sfml\graphics\sprite.hpp" line="210">
\brief Update the vertices' texture coordinates

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
<member name="M:centerOrigin(sf.Sprite*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="c:\sfml\include\sfml\graphics\text.hpp" line="302">
\class sf::Text
\ingroup graphics

sf::Text is a drawable class that allows to easily display
some text with custom style and color on a render target.

It inherits all the functions from sf::Transformable:
position, rotation, scale, origin. It also adds text-specific
properties such as the font to use, the character size,
the font style (bold, italic, underlined), the global color
and the text to display of course.
It also provides convenience functions to calculate the
graphical size of the text, or to get the global position
of a given character.

sf::Text works in combination with the sf::Font class, which
loads and provides the glyphs (visual characters) of a given font.

The separation of sf::Font and sf::Text allows more flexibility
and better performances: indeed a sf::Font is a heavy resource,
and any operation on it is slow (often too slow for real-time
applications). On the other side, a sf::Text is a lightweight
object which can combine the glyphs data and metrics of a sf::Font
to display any text on a render target.

It is important to note that the sf::Text instance doesn't
copy the font that it uses, it only keeps a reference to it.
Thus, a sf::Font must not be destructed while it is
used by a sf::Text (i.e. never write a function that
uses a local sf::Font instance for creating a text).

Usage example:
\code
// Declare and load a font
sf::Font font;
font.loadFromFile("arial.ttf");

// Create a text
sf::Text text("hello", font);
text.setCharacterSize(30);
text.setStyle(sf::Text::Bold);
text.setColor(sf::Color::Red);

// Draw it
window.draw(text);
\endcode

\see sf::Font, sf::Transformable

</member>
<member name="M:toRadian(System.Single)" decl="false" source="d:\users\andrew\perforceworkspace\drew-deskpc\drewski's block breaker\drewski's block breaker\utilities.cpp" line="19">
<summary>
Convert degrees to radians.
</summary>
<param name="degrees">The degrees.</param>
<returns></returns>
</member>
<member name="M:randomInt(System.Int32)" decl="false" source="d:\users\andrew\perforceworkspace\drew-deskpc\drewski's block breaker\drewski's block breaker\utilities.cpp" line="40">
<summary>
Produces a random integer.
</summary>
<param name="exclusiveMax">The exclusive maximum.</param>
<returns></returns>
</member>
</members>
</doc>