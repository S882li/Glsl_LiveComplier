#version 330 core
precision highp float;
uniform float time;
uniform vec2 resolution;
out vec4 FragColor;
const float PI = 3.141592653589793;

vec2 rotate2D(vec2 v, float angle) {
	mat2 mul = mat2(cos(angle), sin(angle), -sin(angle), cos(angle));
	return v * mul;
}

void main() {
    vec2 c = (2. * gl_FragCoord.xy - resolution) / resolution.y;
    c *= 2;
    vec2 z = vec2(0., 0.);
    float i = 0.;
    float t = 64.;
    //float t = mod(floor(time*10),64);
    for (float i = 0; i <= t && dot(z, z) < 4.; i++) {
        z = mat2(z, -z.y, z.x) * z + c;
    FragColor = vec4(vec3(i / t), 1.);
    }
}