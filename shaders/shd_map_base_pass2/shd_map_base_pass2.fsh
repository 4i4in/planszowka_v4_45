varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying vec4 v_xyzw_position;

uniform sampler2D alpha_texture;
uniform sampler2D color_texture;
uniform sampler2D lines_texture;

uniform float dgw;
uniform float dgh;
uniform float fake_z;

uniform float cam_xref;
uniform float cam_yref;
uniform float shd_big_sqr_size;
uniform float shd_med_sqr_size;
void main()
{
	vec4 alpha_texture_color = texture2D( alpha_texture, v_vTexcoord );

	if (alpha_texture_color.a > 0.9)	//tile markers; like mountains fe
		{
			vec4 _take_color = texture2D(color_texture, 
										vec2(	(mod(gl_FragCoord.x + cam_xref,shd_big_sqr_size) /shd_big_sqr_size),
												(mod(gl_FragCoord.y + cam_yref,shd_big_sqr_size) /shd_big_sqr_size)
												));
			gl_FragData[0] = vec4(_take_color.rgb,alpha_texture_color.a);
			
			vec4 lines_texture_color = texture2D( lines_texture, v_vTexcoord );
			if (lines_texture_color.a < 0.25)
				{
					gl_FragData[1] = vec4(1.,1.,1.,1.);
				}
			else
				{
					//gl_FragData[1] = vec4(lines_texture_color.rgb,alpha_texture_color.a);
					gl_FragData[1] = lines_texture_color;
				}
		}
	else discard;
}
