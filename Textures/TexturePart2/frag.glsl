#version 330

out vec4 outputColor;

in vec2 texCoord;

uniform sampler2D texture0;
uniform sampler2D texture1;

void main()
{
    outputColor = mix(texture(texture0, texCoord), texture(texture1, vec2(texCoord.x, 1.0 - texCoord.y)), 0.2);
    //resté 1.0 a la coord y para que se voltee la imagen, este es la línea original:
    //outputColor = mix(texture(texture0, texCoord), texture(texture1, texCoord), 0.2);
}
