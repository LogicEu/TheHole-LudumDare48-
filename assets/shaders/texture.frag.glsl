#version 330 core

in vec2 TexCoord;

uniform sampler2D TexSampler;
uniform vec4 color;

out vec4 FragColor;

void main()
{
    FragColor = texture(TexSampler, TexCoord) * color;
}