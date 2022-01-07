
#version 330 core

attribute vec3 aPos;
varying vec4 Col (layout = "result.color");
uniform mat4 projection;
uniform mat4 view;

void main()
{
    //NS_Texcoord0 = vec2(aPos.x, aPos.y);
    //NS_Texcoord0w = vec3(1.0, 1.0, 1.0);
    Col = aPos;
    NS_Position = projection * view * vec4(aPos, 1.0);
    asm("end");
}  
