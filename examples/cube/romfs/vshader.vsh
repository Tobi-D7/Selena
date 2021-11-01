uniform mat4 Projection, ModelView;
// Constants
layout (location = 2) in vec4 normal;
layout (location = 3) in vec4 tangent;
layout (location = 4) in vec4 intex;
attribute vec4 Position;
attribute vec4 v1;
out outtc0;
out outtc1;
out outview;
out outnq;
//const vec4 GREEN = vec4(0.0, 0.0, 1.0, 1.0);

void main() {
  outtc0 = intex;
  outtc1 = intex;
  gl_Position = Projection * Position;
  gl_FrontColor = v1;
  asm("end");
}
