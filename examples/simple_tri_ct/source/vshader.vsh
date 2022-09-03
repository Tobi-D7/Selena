uniform mat4 Projection;
attribute vec4 Position;
attribute vec4 Color;

void main() {
  NS_Position = Projection * Position;
  NS_Color = Color;
  asm("end");
}
