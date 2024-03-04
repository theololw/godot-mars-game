shader_type canvas_item;
render_mode blend_mix;   // not sure if this matters in this example

void fragment(){
  COLOR = texture(TEXTURE, UV); // Read from texture again.
  COLOR.b = 1.0; //set blue channel to 1.0
  COLOR.g = 1.0; //set blue channel to 1.0
  COLOR.r = 1.0; //set blue channel to 1.0
}