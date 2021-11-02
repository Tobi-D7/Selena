
#version 330 core
layout (location = 0) in vec3 aPos;

out vec3 outtc0;

uniform mat4 projection;
uniform mat4 view;

void main()
{
    outtc0 = vec4(aPos, 1.0);
    gl_Position = projection * view * vec4(aPos, 1.0);
    asm("end");
}  
