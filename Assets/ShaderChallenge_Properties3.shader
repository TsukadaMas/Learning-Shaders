Shader "Custom/ShaderChallenge_Properties3"
{
    Properties
    {
        _texture ("Texture", 2D) = "white" {} 
    }
    SubShader
    {
        CGPROGRAM

		    #pragma surface surf Lambert

            sampler2D _texture;


            struct Input {
			float2 uv_myTex;
            float worldRefl;
			};
		
		    void surf (Input IN, inout SurfaceOutput o){
                float4 green = float(0,1,0,1);
                o.Albedo = (tex2D(_texture, IN.uv_myTex) * green).rgb;
			}


		ENDCG
    }
    FallBack "Diffuse"
}
