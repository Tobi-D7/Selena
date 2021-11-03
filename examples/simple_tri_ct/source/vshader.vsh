
uniform mat4 Projection;
attribute vec4 Position;
attribute vec4 Color;
//const vec4 GREEN = vec4(0.0, 0.0, 1.0, 1.0);

void main() {
  gl_Position = Projection * Position;
  gl_FrontColor = Color;
  asm("end");
}
