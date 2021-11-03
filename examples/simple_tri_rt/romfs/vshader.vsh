
uniform mat4 Projection;
layout (location = 0) in vec4 Position;
layout (location = 1) in vec4 v1;
//const vec4 GREEN = vec4(0.0, 0.0, 1.0, 1.0);

void main() {
  gl_Position = Projection * Position;
  gl_FrontColor = v1;
  asm("end");
}
