Shader "Custom/ShaderChallenge_Properties2"
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
			   o.Albedo = tex2D(_texture, IN.uv_myTex);
               o.Albedo.g = 1;
			}


		ENDCG
    }
    FallBack "Diffuse"
}
