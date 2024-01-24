varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform sampler2D base_surface;
uniform sampler2D outline_surface;

void main()
{
	vec4 _base_color = texture2D(base_surface, v_vTexcoord );
	vec4 _outline_color = texture2D(outline_surface, v_vTexcoord );
	
		
	if (_outline_color == vec4(0.,0.,0.,1.)	)
		{
			gl_FragColor = _outline_color;
		}
	else if (_outline_color.a >  0.	)
		{
			vec3 _color0 = vec3(
									mix(_base_color.r,_outline_color.r,_outline_color.a),
									mix(_base_color.g,_outline_color.g,_outline_color.a),
									mix(_base_color.b,_outline_color.b,_outline_color.a)
								);
			_color0 = clamp(_color0,0.,1.);
			gl_FragColor = vec4(_color0,1.);
			//gl_FragColor = _outline_color;
		}
	else
		{
			gl_FragColor = _base_color;
		}
	
	
}
