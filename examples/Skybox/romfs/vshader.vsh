
#version 330 core

attribute vec3 aPos;

layout (location = 4) out vec4 outtc0;

uniform mat4 projection;
uniform mat4 view;

void main()
{
    outtc0 = vec4(aPos, 1.0);
    gl_Position = projection * view * vec4(aPos, 1.0);
    asm("end");
}  
