
#version 330 core
layout (location = 0) in vec4 aPos;

out vec3 outtc0;

uniform mat4 projection;
uniform mat4 view;

void main()
{
    outtc0 = aPos;
    gl_Position = projection * view * aPos;
    asm("end");
}  
