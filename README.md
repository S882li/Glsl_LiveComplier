# Glsl_LiveComplier
An offline complier for glsl shading language based on c++, which is an alternative to webGL online platforms such as Shadertoy.

The code is based on JoeyDeVries's [Learn OpenGl](https://learnopengl.com/), and I added features including additional uniform variables, reloading the shader after each save for efficiency. After the modification, the compiler can be an alternative to online platforms such as Shadertoy, which uses WebGL and different versions of Glsl, [which may cause problems under some specific cases](https://stackoverflow.com/questions/10383113/differences-between-glsl-and-glsl-es-2). 
