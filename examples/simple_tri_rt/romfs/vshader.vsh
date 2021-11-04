
uniform mat4 Projection;
attribute vec4 Position;
attribute vec4 v1;
//const vec4 GREEN = vec4(0.0, 0.0, 1.0, 1.0);

void main() {
  NS_Position = Projection * Position;
  NS_FrontColor = v1;
  asm("end");
}
