Shader "LKWD/Opaque/VertexBlend4WorldUV" {
	Properties {
		_MainTex ("Texture 1 (Black) - WorldUV", 2D) = "white" {}
		_Texture2 ("Texture 2 (Red) - WorldUV", 2D) = "white" {}
		_Texture3 ("Texture 3 (Green)", 2D) = "white" {}
		_Texture4 ("Texture 4 (Blue)", 2D) = "white" {}
	}
	SubShader {
		Tags { "RenderType" = "Opaque" }
		Pass {
			Tags { "RenderType" = "Opaque" }
			GpuProgramID 51218
			Program "vp" {
				SubProgram "gles hw_tier00 " {
					"!!GLES
					#version 100
					
					#ifdef VERTEX
					attribute vec4 _glesVertex;
					attribute vec4 _glesColor;
					attribute vec4 _glesMultiTexCoord0;
					uniform highp mat4 unity_ObjectToWorld;
					uniform highp mat4 unity_MatrixVP;
					uniform highp vec4 _MainTex_ST;
					uniform highp vec4 _Texture2_ST;
					uniform highp vec4 _Texture3_ST;
					uniform highp vec4 _Texture4_ST;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp vec2 xlv_TEXCOORD1;
					varying highp vec2 xlv_TEXCOORD2;
					varying highp vec2 xlv_TEXCOORD3;
					varying lowp vec4 xlv_TEXCOORD4;
					void main ()
					{
					  highp vec4 tmpvar_1;
					  tmpvar_1 = _glesColor;
					  mediump vec2 worldVertUV_2;
					  lowp vec4 tmpvar_3;
					  highp vec4 tmpvar_4;
					  tmpvar_4.w = 1.0;
					  tmpvar_4.xyz = _glesVertex.xyz;
					  highp vec2 tmpvar_5;
					  tmpvar_5 = (unity_ObjectToWorld * _glesVertex).xz;
					  worldVertUV_2 = tmpvar_5;
					  tmpvar_3 = tmpvar_1;
					  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_4));
					  xlv_TEXCOORD0 = ((worldVertUV_2 * _MainTex_ST.xy) + _MainTex_ST.zw);
					  xlv_TEXCOORD1 = ((worldVertUV_2 * _Texture2_ST.xy) + _Texture2_ST.zw);
					  xlv_TEXCOORD2 = ((_glesMultiTexCoord0.xy * _Texture3_ST.xy) + _Texture3_ST.zw);
					  xlv_TEXCOORD3 = ((_glesMultiTexCoord0.xy * _Texture4_ST.xy) + _Texture4_ST.zw);
					  xlv_TEXCOORD4 = tmpvar_3;
					}
					
					
					#endif
					#ifdef FRAGMENT
					uniform sampler2D _MainTex;
					uniform sampler2D _Texture2;
					uniform sampler2D _Texture3;
					uniform sampler2D _Texture4;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp vec2 xlv_TEXCOORD1;
					varying highp vec2 xlv_TEXCOORD2;
					varying highp vec2 xlv_TEXCOORD3;
					varying lowp vec4 xlv_TEXCOORD4;
					void main ()
					{
					  lowp vec4 tmpvar_1;
					  tmpvar_1 = mix (mix (mix (texture2D (_MainTex, xlv_TEXCOORD0), texture2D (_Texture2, xlv_TEXCOORD1), xlv_TEXCOORD4.xxxx), texture2D (_Texture3, xlv_TEXCOORD2), xlv_TEXCOORD4.yyyy), texture2D (_Texture4, xlv_TEXCOORD3), xlv_TEXCOORD4.zzzz);
					  gl_FragData[0] = tmpvar_1;
					}
					
					
					#endif"
				}
				SubProgram "gles hw_tier01 " {
					"!!GLES
					#version 100
					
					#ifdef VERTEX
					attribute vec4 _glesVertex;
					attribute vec4 _glesColor;
					attribute vec4 _glesMultiTexCoord0;
					uniform highp mat4 unity_ObjectToWorld;
					uniform highp mat4 unity_MatrixVP;
					uniform highp vec4 _MainTex_ST;
					uniform highp vec4 _Texture2_ST;
					uniform highp vec4 _Texture3_ST;
					uniform highp vec4 _Texture4_ST;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp vec2 xlv_TEXCOORD1;
					varying highp vec2 xlv_TEXCOORD2;
					varying highp vec2 xlv_TEXCOORD3;
					varying lowp vec4 xlv_TEXCOORD4;
					void main ()
					{
					  highp vec4 tmpvar_1;
					  tmpvar_1 = _glesColor;
					  mediump vec2 worldVertUV_2;
					  lowp vec4 tmpvar_3;
					  highp vec4 tmpvar_4;
					  tmpvar_4.w = 1.0;
					  tmpvar_4.xyz = _glesVertex.xyz;
					  highp vec2 tmpvar_5;
					  tmpvar_5 = (unity_ObjectToWorld * _glesVertex).xz;
					  worldVertUV_2 = tmpvar_5;
					  tmpvar_3 = tmpvar_1;
					  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_4));
					  xlv_TEXCOORD0 = ((worldVertUV_2 * _MainTex_ST.xy) + _MainTex_ST.zw);
					  xlv_TEXCOORD1 = ((worldVertUV_2 * _Texture2_ST.xy) + _Texture2_ST.zw);
					  xlv_TEXCOORD2 = ((_glesMultiTexCoord0.xy * _Texture3_ST.xy) + _Texture3_ST.zw);
					  xlv_TEXCOORD3 = ((_glesMultiTexCoord0.xy * _Texture4_ST.xy) + _Texture4_ST.zw);
					  xlv_TEXCOORD4 = tmpvar_3;
					}
					
					
					#endif
					#ifdef FRAGMENT
					uniform sampler2D _MainTex;
					uniform sampler2D _Texture2;
					uniform sampler2D _Texture3;
					uniform sampler2D _Texture4;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp vec2 xlv_TEXCOORD1;
					varying highp vec2 xlv_TEXCOORD2;
					varying highp vec2 xlv_TEXCOORD3;
					varying lowp vec4 xlv_TEXCOORD4;
					void main ()
					{
					  lowp vec4 tmpvar_1;
					  tmpvar_1 = mix (mix (mix (texture2D (_MainTex, xlv_TEXCOORD0), texture2D (_Texture2, xlv_TEXCOORD1), xlv_TEXCOORD4.xxxx), texture2D (_Texture3, xlv_TEXCOORD2), xlv_TEXCOORD4.yyyy), texture2D (_Texture4, xlv_TEXCOORD3), xlv_TEXCOORD4.zzzz);
					  gl_FragData[0] = tmpvar_1;
					}
					
					
					#endif"
				}
				SubProgram "gles hw_tier02 " {
					"!!GLES
					#version 100
					
					#ifdef VERTEX
					attribute vec4 _glesVertex;
					attribute vec4 _glesColor;
					attribute vec4 _glesMultiTexCoord0;
					uniform highp mat4 unity_ObjectToWorld;
					uniform highp mat4 unity_MatrixVP;
					uniform highp vec4 _MainTex_ST;
					uniform highp vec4 _Texture2_ST;
					uniform highp vec4 _Texture3_ST;
					uniform highp vec4 _Texture4_ST;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp vec2 xlv_TEXCOORD1;
					varying highp vec2 xlv_TEXCOORD2;
					varying highp vec2 xlv_TEXCOORD3;
					varying lowp vec4 xlv_TEXCOORD4;
					void main ()
					{
					  highp vec4 tmpvar_1;
					  tmpvar_1 = _glesColor;
					  mediump vec2 worldVertUV_2;
					  lowp vec4 tmpvar_3;
					  highp vec4 tmpvar_4;
					  tmpvar_4.w = 1.0;
					  tmpvar_4.xyz = _glesVertex.xyz;
					  highp vec2 tmpvar_5;
					  tmpvar_5 = (unity_ObjectToWorld * _glesVertex).xz;
					  worldVertUV_2 = tmpvar_5;
					  tmpvar_3 = tmpvar_1;
					  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_4));
					  xlv_TEXCOORD0 = ((worldVertUV_2 * _MainTex_ST.xy) + _MainTex_ST.zw);
					  xlv_TEXCOORD1 = ((worldVertUV_2 * _Texture2_ST.xy) + _Texture2_ST.zw);
					  xlv_TEXCOORD2 = ((_glesMultiTexCoord0.xy * _Texture3_ST.xy) + _Texture3_ST.zw);
					  xlv_TEXCOORD3 = ((_glesMultiTexCoord0.xy * _Texture4_ST.xy) + _Texture4_ST.zw);
					  xlv_TEXCOORD4 = tmpvar_3;
					}
					
					
					#endif
					#ifdef FRAGMENT
					uniform sampler2D _MainTex;
					uniform sampler2D _Texture2;
					uniform sampler2D _Texture3;
					uniform sampler2D _Texture4;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp vec2 xlv_TEXCOORD1;
					varying highp vec2 xlv_TEXCOORD2;
					varying highp vec2 xlv_TEXCOORD3;
					varying lowp vec4 xlv_TEXCOORD4;
					void main ()
					{
					  lowp vec4 tmpvar_1;
					  tmpvar_1 = mix (mix (mix (texture2D (_MainTex, xlv_TEXCOORD0), texture2D (_Texture2, xlv_TEXCOORD1), xlv_TEXCOORD4.xxxx), texture2D (_Texture3, xlv_TEXCOORD2), xlv_TEXCOORD4.yyyy), texture2D (_Texture4, xlv_TEXCOORD3), xlv_TEXCOORD4.zzzz);
					  gl_FragData[0] = tmpvar_1;
					}
					
					
					#endif"
				}
				SubProgram "gles hw_tier00 " {
					Keywords { "FOG_LINEAR" }
					"!!GLES
					#version 100
					
					#ifdef VERTEX
					attribute vec4 _glesVertex;
					attribute vec4 _glesColor;
					attribute vec4 _glesMultiTexCoord0;
					uniform highp mat4 unity_ObjectToWorld;
					uniform highp mat4 unity_MatrixVP;
					uniform highp vec4 unity_FogParams;
					uniform highp vec4 _MainTex_ST;
					uniform highp vec4 _Texture2_ST;
					uniform highp vec4 _Texture3_ST;
					uniform highp vec4 _Texture4_ST;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp vec2 xlv_TEXCOORD1;
					varying highp vec2 xlv_TEXCOORD2;
					varying highp vec2 xlv_TEXCOORD3;
					varying lowp vec4 xlv_TEXCOORD4;
					varying highp float xlv_TEXCOORD5;
					void main ()
					{
					  highp vec4 tmpvar_1;
					  tmpvar_1 = _glesColor;
					  mediump vec2 worldVertUV_2;
					  lowp vec4 tmpvar_3;
					  highp vec4 tmpvar_4;
					  highp vec4 tmpvar_5;
					  tmpvar_5.w = 1.0;
					  tmpvar_5.xyz = _glesVertex.xyz;
					  tmpvar_4 = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_5));
					  highp vec2 tmpvar_6;
					  tmpvar_6 = (unity_ObjectToWorld * _glesVertex).xz;
					  worldVertUV_2 = tmpvar_6;
					  tmpvar_3 = tmpvar_1;
					  gl_Position = tmpvar_4;
					  xlv_TEXCOORD0 = ((worldVertUV_2 * _MainTex_ST.xy) + _MainTex_ST.zw);
					  xlv_TEXCOORD1 = ((worldVertUV_2 * _Texture2_ST.xy) + _Texture2_ST.zw);
					  xlv_TEXCOORD2 = ((_glesMultiTexCoord0.xy * _Texture3_ST.xy) + _Texture3_ST.zw);
					  xlv_TEXCOORD3 = ((_glesMultiTexCoord0.xy * _Texture4_ST.xy) + _Texture4_ST.zw);
					  xlv_TEXCOORD4 = tmpvar_3;
					  xlv_TEXCOORD5 = ((tmpvar_4.z * unity_FogParams.z) + unity_FogParams.w);
					}
					
					
					#endif
					#ifdef FRAGMENT
					uniform lowp vec4 unity_FogColor;
					uniform sampler2D _MainTex;
					uniform sampler2D _Texture2;
					uniform sampler2D _Texture3;
					uniform sampler2D _Texture4;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp vec2 xlv_TEXCOORD1;
					varying highp vec2 xlv_TEXCOORD2;
					varying highp vec2 xlv_TEXCOORD3;
					varying lowp vec4 xlv_TEXCOORD4;
					varying highp float xlv_TEXCOORD5;
					void main ()
					{
					  lowp vec4 final_1;
					  lowp vec4 tmpvar_2;
					  tmpvar_2 = mix (mix (mix (texture2D (_MainTex, xlv_TEXCOORD0), texture2D (_Texture2, xlv_TEXCOORD1), xlv_TEXCOORD4.xxxx), texture2D (_Texture3, xlv_TEXCOORD2), xlv_TEXCOORD4.yyyy), texture2D (_Texture4, xlv_TEXCOORD3), xlv_TEXCOORD4.zzzz);
					  final_1.w = tmpvar_2.w;
					  highp float tmpvar_3;
					  tmpvar_3 = clamp (xlv_TEXCOORD5, 0.0, 1.0);
					  final_1.xyz = mix (unity_FogColor.xyz, tmpvar_2.xyz, vec3(tmpvar_3));
					  gl_FragData[0] = final_1;
					}
					
					
					#endif"
				}
				SubProgram "gles hw_tier01 " {
					Keywords { "FOG_LINEAR" }
					"!!GLES
					#version 100
					
					#ifdef VERTEX
					attribute vec4 _glesVertex;
					attribute vec4 _glesColor;
					attribute vec4 _glesMultiTexCoord0;
					uniform highp mat4 unity_ObjectToWorld;
					uniform highp mat4 unity_MatrixVP;
					uniform highp vec4 unity_FogParams;
					uniform highp vec4 _MainTex_ST;
					uniform highp vec4 _Texture2_ST;
					uniform highp vec4 _Texture3_ST;
					uniform highp vec4 _Texture4_ST;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp vec2 xlv_TEXCOORD1;
					varying highp vec2 xlv_TEXCOORD2;
					varying highp vec2 xlv_TEXCOORD3;
					varying lowp vec4 xlv_TEXCOORD4;
					varying highp float xlv_TEXCOORD5;
					void main ()
					{
					  highp vec4 tmpvar_1;
					  tmpvar_1 = _glesColor;
					  mediump vec2 worldVertUV_2;
					  lowp vec4 tmpvar_3;
					  highp vec4 tmpvar_4;
					  highp vec4 tmpvar_5;
					  tmpvar_5.w = 1.0;
					  tmpvar_5.xyz = _glesVertex.xyz;
					  tmpvar_4 = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_5));
					  highp vec2 tmpvar_6;
					  tmpvar_6 = (unity_ObjectToWorld * _glesVertex).xz;
					  worldVertUV_2 = tmpvar_6;
					  tmpvar_3 = tmpvar_1;
					  gl_Position = tmpvar_4;
					  xlv_TEXCOORD0 = ((worldVertUV_2 * _MainTex_ST.xy) + _MainTex_ST.zw);
					  xlv_TEXCOORD1 = ((worldVertUV_2 * _Texture2_ST.xy) + _Texture2_ST.zw);
					  xlv_TEXCOORD2 = ((_glesMultiTexCoord0.xy * _Texture3_ST.xy) + _Texture3_ST.zw);
					  xlv_TEXCOORD3 = ((_glesMultiTexCoord0.xy * _Texture4_ST.xy) + _Texture4_ST.zw);
					  xlv_TEXCOORD4 = tmpvar_3;
					  xlv_TEXCOORD5 = ((tmpvar_4.z * unity_FogParams.z) + unity_FogParams.w);
					}
					
					
					#endif
					#ifdef FRAGMENT
					uniform lowp vec4 unity_FogColor;
					uniform sampler2D _MainTex;
					uniform sampler2D _Texture2;
					uniform sampler2D _Texture3;
					uniform sampler2D _Texture4;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp vec2 xlv_TEXCOORD1;
					varying highp vec2 xlv_TEXCOORD2;
					varying highp vec2 xlv_TEXCOORD3;
					varying lowp vec4 xlv_TEXCOORD4;
					varying highp float xlv_TEXCOORD5;
					void main ()
					{
					  lowp vec4 final_1;
					  lowp vec4 tmpvar_2;
					  tmpvar_2 = mix (mix (mix (texture2D (_MainTex, xlv_TEXCOORD0), texture2D (_Texture2, xlv_TEXCOORD1), xlv_TEXCOORD4.xxxx), texture2D (_Texture3, xlv_TEXCOORD2), xlv_TEXCOORD4.yyyy), texture2D (_Texture4, xlv_TEXCOORD3), xlv_TEXCOORD4.zzzz);
					  final_1.w = tmpvar_2.w;
					  highp float tmpvar_3;
					  tmpvar_3 = clamp (xlv_TEXCOORD5, 0.0, 1.0);
					  final_1.xyz = mix (unity_FogColor.xyz, tmpvar_2.xyz, vec3(tmpvar_3));
					  gl_FragData[0] = final_1;
					}
					
					
					#endif"
				}
				SubProgram "gles hw_tier02 " {
					Keywords { "FOG_LINEAR" }
					"!!GLES
					#version 100
					
					#ifdef VERTEX
					attribute vec4 _glesVertex;
					attribute vec4 _glesColor;
					attribute vec4 _glesMultiTexCoord0;
					uniform highp mat4 unity_ObjectToWorld;
					uniform highp mat4 unity_MatrixVP;
					uniform highp vec4 unity_FogParams;
					uniform highp vec4 _MainTex_ST;
					uniform highp vec4 _Texture2_ST;
					uniform highp vec4 _Texture3_ST;
					uniform highp vec4 _Texture4_ST;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp vec2 xlv_TEXCOORD1;
					varying highp vec2 xlv_TEXCOORD2;
					varying highp vec2 xlv_TEXCOORD3;
					varying lowp vec4 xlv_TEXCOORD4;
					varying highp float xlv_TEXCOORD5;
					void main ()
					{
					  highp vec4 tmpvar_1;
					  tmpvar_1 = _glesColor;
					  mediump vec2 worldVertUV_2;
					  lowp vec4 tmpvar_3;
					  highp vec4 tmpvar_4;
					  highp vec4 tmpvar_5;
					  tmpvar_5.w = 1.0;
					  tmpvar_5.xyz = _glesVertex.xyz;
					  tmpvar_4 = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_5));
					  highp vec2 tmpvar_6;
					  tmpvar_6 = (unity_ObjectToWorld * _glesVertex).xz;
					  worldVertUV_2 = tmpvar_6;
					  tmpvar_3 = tmpvar_1;
					  gl_Position = tmpvar_4;
					  xlv_TEXCOORD0 = ((worldVertUV_2 * _MainTex_ST.xy) + _MainTex_ST.zw);
					  xlv_TEXCOORD1 = ((worldVertUV_2 * _Texture2_ST.xy) + _Texture2_ST.zw);
					  xlv_TEXCOORD2 = ((_glesMultiTexCoord0.xy * _Texture3_ST.xy) + _Texture3_ST.zw);
					  xlv_TEXCOORD3 = ((_glesMultiTexCoord0.xy * _Texture4_ST.xy) + _Texture4_ST.zw);
					  xlv_TEXCOORD4 = tmpvar_3;
					  xlv_TEXCOORD5 = ((tmpvar_4.z * unity_FogParams.z) + unity_FogParams.w);
					}
					
					
					#endif
					#ifdef FRAGMENT
					uniform lowp vec4 unity_FogColor;
					uniform sampler2D _MainTex;
					uniform sampler2D _Texture2;
					uniform sampler2D _Texture3;
					uniform sampler2D _Texture4;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp vec2 xlv_TEXCOORD1;
					varying highp vec2 xlv_TEXCOORD2;
					varying highp vec2 xlv_TEXCOORD3;
					varying lowp vec4 xlv_TEXCOORD4;
					varying highp float xlv_TEXCOORD5;
					void main ()
					{
					  lowp vec4 final_1;
					  lowp vec4 tmpvar_2;
					  tmpvar_2 = mix (mix (mix (texture2D (_MainTex, xlv_TEXCOORD0), texture2D (_Texture2, xlv_TEXCOORD1), xlv_TEXCOORD4.xxxx), texture2D (_Texture3, xlv_TEXCOORD2), xlv_TEXCOORD4.yyyy), texture2D (_Texture4, xlv_TEXCOORD3), xlv_TEXCOORD4.zzzz);
					  final_1.w = tmpvar_2.w;
					  highp float tmpvar_3;
					  tmpvar_3 = clamp (xlv_TEXCOORD5, 0.0, 1.0);
					  final_1.xyz = mix (unity_FogColor.xyz, tmpvar_2.xyz, vec3(tmpvar_3));
					  gl_FragData[0] = final_1;
					}
					
					
					#endif"
				}
				SubProgram "gles hw_tier00 " {
					Keywords { "FOG_EXP" }
					"!!GLES
					#version 100
					
					#ifdef VERTEX
					attribute vec4 _glesVertex;
					attribute vec4 _glesColor;
					attribute vec4 _glesMultiTexCoord0;
					uniform highp mat4 unity_ObjectToWorld;
					uniform highp mat4 unity_MatrixVP;
					uniform highp vec4 unity_FogParams;
					uniform highp vec4 _MainTex_ST;
					uniform highp vec4 _Texture2_ST;
					uniform highp vec4 _Texture3_ST;
					uniform highp vec4 _Texture4_ST;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp vec2 xlv_TEXCOORD1;
					varying highp vec2 xlv_TEXCOORD2;
					varying highp vec2 xlv_TEXCOORD3;
					varying lowp vec4 xlv_TEXCOORD4;
					varying highp float xlv_TEXCOORD5;
					void main ()
					{
					  highp vec4 tmpvar_1;
					  tmpvar_1 = _glesColor;
					  mediump vec2 worldVertUV_2;
					  lowp vec4 tmpvar_3;
					  highp vec4 tmpvar_4;
					  highp vec4 tmpvar_5;
					  tmpvar_5.w = 1.0;
					  tmpvar_5.xyz = _glesVertex.xyz;
					  tmpvar_4 = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_5));
					  highp vec2 tmpvar_6;
					  tmpvar_6 = (unity_ObjectToWorld * _glesVertex).xz;
					  worldVertUV_2 = tmpvar_6;
					  tmpvar_3 = tmpvar_1;
					  gl_Position = tmpvar_4;
					  xlv_TEXCOORD0 = ((worldVertUV_2 * _MainTex_ST.xy) + _MainTex_ST.zw);
					  xlv_TEXCOORD1 = ((worldVertUV_2 * _Texture2_ST.xy) + _Texture2_ST.zw);
					  xlv_TEXCOORD2 = ((_glesMultiTexCoord0.xy * _Texture3_ST.xy) + _Texture3_ST.zw);
					  xlv_TEXCOORD3 = ((_glesMultiTexCoord0.xy * _Texture4_ST.xy) + _Texture4_ST.zw);
					  xlv_TEXCOORD4 = tmpvar_3;
					  xlv_TEXCOORD5 = exp2(-((unity_FogParams.y * tmpvar_4.z)));
					}
					
					
					#endif
					#ifdef FRAGMENT
					uniform lowp vec4 unity_FogColor;
					uniform sampler2D _MainTex;
					uniform sampler2D _Texture2;
					uniform sampler2D _Texture3;
					uniform sampler2D _Texture4;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp vec2 xlv_TEXCOORD1;
					varying highp vec2 xlv_TEXCOORD2;
					varying highp vec2 xlv_TEXCOORD3;
					varying lowp vec4 xlv_TEXCOORD4;
					varying highp float xlv_TEXCOORD5;
					void main ()
					{
					  lowp vec4 final_1;
					  lowp vec4 tmpvar_2;
					  tmpvar_2 = mix (mix (mix (texture2D (_MainTex, xlv_TEXCOORD0), texture2D (_Texture2, xlv_TEXCOORD1), xlv_TEXCOORD4.xxxx), texture2D (_Texture3, xlv_TEXCOORD2), xlv_TEXCOORD4.yyyy), texture2D (_Texture4, xlv_TEXCOORD3), xlv_TEXCOORD4.zzzz);
					  final_1.w = tmpvar_2.w;
					  highp float tmpvar_3;
					  tmpvar_3 = clamp (xlv_TEXCOORD5, 0.0, 1.0);
					  final_1.xyz = mix (unity_FogColor.xyz, tmpvar_2.xyz, vec3(tmpvar_3));
					  gl_FragData[0] = final_1;
					}
					
					
					#endif"
				}
				SubProgram "gles hw_tier01 " {
					Keywords { "FOG_EXP" }
					"!!GLES
					#version 100
					
					#ifdef VERTEX
					attribute vec4 _glesVertex;
					attribute vec4 _glesColor;
					attribute vec4 _glesMultiTexCoord0;
					uniform highp mat4 unity_ObjectToWorld;
					uniform highp mat4 unity_MatrixVP;
					uniform highp vec4 unity_FogParams;
					uniform highp vec4 _MainTex_ST;
					uniform highp vec4 _Texture2_ST;
					uniform highp vec4 _Texture3_ST;
					uniform highp vec4 _Texture4_ST;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp vec2 xlv_TEXCOORD1;
					varying highp vec2 xlv_TEXCOORD2;
					varying highp vec2 xlv_TEXCOORD3;
					varying lowp vec4 xlv_TEXCOORD4;
					varying highp float xlv_TEXCOORD5;
					void main ()
					{
					  highp vec4 tmpvar_1;
					  tmpvar_1 = _glesColor;
					  mediump vec2 worldVertUV_2;
					  lowp vec4 tmpvar_3;
					  highp vec4 tmpvar_4;
					  highp vec4 tmpvar_5;
					  tmpvar_5.w = 1.0;
					  tmpvar_5.xyz = _glesVertex.xyz;
					  tmpvar_4 = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_5));
					  highp vec2 tmpvar_6;
					  tmpvar_6 = (unity_ObjectToWorld * _glesVertex).xz;
					  worldVertUV_2 = tmpvar_6;
					  tmpvar_3 = tmpvar_1;
					  gl_Position = tmpvar_4;
					  xlv_TEXCOORD0 = ((worldVertUV_2 * _MainTex_ST.xy) + _MainTex_ST.zw);
					  xlv_TEXCOORD1 = ((worldVertUV_2 * _Texture2_ST.xy) + _Texture2_ST.zw);
					  xlv_TEXCOORD2 = ((_glesMultiTexCoord0.xy * _Texture3_ST.xy) + _Texture3_ST.zw);
					  xlv_TEXCOORD3 = ((_glesMultiTexCoord0.xy * _Texture4_ST.xy) + _Texture4_ST.zw);
					  xlv_TEXCOORD4 = tmpvar_3;
					  xlv_TEXCOORD5 = exp2(-((unity_FogParams.y * tmpvar_4.z)));
					}
					
					
					#endif
					#ifdef FRAGMENT
					uniform lowp vec4 unity_FogColor;
					uniform sampler2D _MainTex;
					uniform sampler2D _Texture2;
					uniform sampler2D _Texture3;
					uniform sampler2D _Texture4;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp vec2 xlv_TEXCOORD1;
					varying highp vec2 xlv_TEXCOORD2;
					varying highp vec2 xlv_TEXCOORD3;
					varying lowp vec4 xlv_TEXCOORD4;
					varying highp float xlv_TEXCOORD5;
					void main ()
					{
					  lowp vec4 final_1;
					  lowp vec4 tmpvar_2;
					  tmpvar_2 = mix (mix (mix (texture2D (_MainTex, xlv_TEXCOORD0), texture2D (_Texture2, xlv_TEXCOORD1), xlv_TEXCOORD4.xxxx), texture2D (_Texture3, xlv_TEXCOORD2), xlv_TEXCOORD4.yyyy), texture2D (_Texture4, xlv_TEXCOORD3), xlv_TEXCOORD4.zzzz);
					  final_1.w = tmpvar_2.w;
					  highp float tmpvar_3;
					  tmpvar_3 = clamp (xlv_TEXCOORD5, 0.0, 1.0);
					  final_1.xyz = mix (unity_FogColor.xyz, tmpvar_2.xyz, vec3(tmpvar_3));
					  gl_FragData[0] = final_1;
					}
					
					
					#endif"
				}
				SubProgram "gles hw_tier02 " {
					Keywords { "FOG_EXP" }
					"!!GLES
					#version 100
					
					#ifdef VERTEX
					attribute vec4 _glesVertex;
					attribute vec4 _glesColor;
					attribute vec4 _glesMultiTexCoord0;
					uniform highp mat4 unity_ObjectToWorld;
					uniform highp mat4 unity_MatrixVP;
					uniform highp vec4 unity_FogParams;
					uniform highp vec4 _MainTex_ST;
					uniform highp vec4 _Texture2_ST;
					uniform highp vec4 _Texture3_ST;
					uniform highp vec4 _Texture4_ST;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp vec2 xlv_TEXCOORD1;
					varying highp vec2 xlv_TEXCOORD2;
					varying highp vec2 xlv_TEXCOORD3;
					varying lowp vec4 xlv_TEXCOORD4;
					varying highp float xlv_TEXCOORD5;
					void main ()
					{
					  highp vec4 tmpvar_1;
					  tmpvar_1 = _glesColor;
					  mediump vec2 worldVertUV_2;
					  lowp vec4 tmpvar_3;
					  highp vec4 tmpvar_4;
					  highp vec4 tmpvar_5;
					  tmpvar_5.w = 1.0;
					  tmpvar_5.xyz = _glesVertex.xyz;
					  tmpvar_4 = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_5));
					  highp vec2 tmpvar_6;
					  tmpvar_6 = (unity_ObjectToWorld * _glesVertex).xz;
					  worldVertUV_2 = tmpvar_6;
					  tmpvar_3 = tmpvar_1;
					  gl_Position = tmpvar_4;
					  xlv_TEXCOORD0 = ((worldVertUV_2 * _MainTex_ST.xy) + _MainTex_ST.zw);
					  xlv_TEXCOORD1 = ((worldVertUV_2 * _Texture2_ST.xy) + _Texture2_ST.zw);
					  xlv_TEXCOORD2 = ((_glesMultiTexCoord0.xy * _Texture3_ST.xy) + _Texture3_ST.zw);
					  xlv_TEXCOORD3 = ((_glesMultiTexCoord0.xy * _Texture4_ST.xy) + _Texture4_ST.zw);
					  xlv_TEXCOORD4 = tmpvar_3;
					  xlv_TEXCOORD5 = exp2(-((unity_FogParams.y * tmpvar_4.z)));
					}
					
					
					#endif
					#ifdef FRAGMENT
					uniform lowp vec4 unity_FogColor;
					uniform sampler2D _MainTex;
					uniform sampler2D _Texture2;
					uniform sampler2D _Texture3;
					uniform sampler2D _Texture4;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp vec2 xlv_TEXCOORD1;
					varying highp vec2 xlv_TEXCOORD2;
					varying highp vec2 xlv_TEXCOORD3;
					varying lowp vec4 xlv_TEXCOORD4;
					varying highp float xlv_TEXCOORD5;
					void main ()
					{
					  lowp vec4 final_1;
					  lowp vec4 tmpvar_2;
					  tmpvar_2 = mix (mix (mix (texture2D (_MainTex, xlv_TEXCOORD0), texture2D (_Texture2, xlv_TEXCOORD1), xlv_TEXCOORD4.xxxx), texture2D (_Texture3, xlv_TEXCOORD2), xlv_TEXCOORD4.yyyy), texture2D (_Texture4, xlv_TEXCOORD3), xlv_TEXCOORD4.zzzz);
					  final_1.w = tmpvar_2.w;
					  highp float tmpvar_3;
					  tmpvar_3 = clamp (xlv_TEXCOORD5, 0.0, 1.0);
					  final_1.xyz = mix (unity_FogColor.xyz, tmpvar_2.xyz, vec3(tmpvar_3));
					  gl_FragData[0] = final_1;
					}
					
					
					#endif"
				}
				SubProgram "gles hw_tier00 " {
					Keywords { "FOG_EXP2" }
					"!!GLES
					#version 100
					
					#ifdef VERTEX
					attribute vec4 _glesVertex;
					attribute vec4 _glesColor;
					attribute vec4 _glesMultiTexCoord0;
					uniform highp mat4 unity_ObjectToWorld;
					uniform highp mat4 unity_MatrixVP;
					uniform highp vec4 unity_FogParams;
					uniform highp vec4 _MainTex_ST;
					uniform highp vec4 _Texture2_ST;
					uniform highp vec4 _Texture3_ST;
					uniform highp vec4 _Texture4_ST;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp vec2 xlv_TEXCOORD1;
					varying highp vec2 xlv_TEXCOORD2;
					varying highp vec2 xlv_TEXCOORD3;
					varying lowp vec4 xlv_TEXCOORD4;
					varying highp float xlv_TEXCOORD5;
					void main ()
					{
					  highp vec4 tmpvar_1;
					  tmpvar_1 = _glesColor;
					  mediump vec2 worldVertUV_2;
					  lowp vec4 tmpvar_3;
					  highp vec4 tmpvar_4;
					  highp vec4 tmpvar_5;
					  tmpvar_5.w = 1.0;
					  tmpvar_5.xyz = _glesVertex.xyz;
					  tmpvar_4 = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_5));
					  highp vec2 tmpvar_6;
					  tmpvar_6 = (unity_ObjectToWorld * _glesVertex).xz;
					  worldVertUV_2 = tmpvar_6;
					  highp float tmpvar_7;
					  tmpvar_7 = (unity_FogParams.x * tmpvar_4.z);
					  tmpvar_3 = tmpvar_1;
					  gl_Position = tmpvar_4;
					  xlv_TEXCOORD0 = ((worldVertUV_2 * _MainTex_ST.xy) + _MainTex_ST.zw);
					  xlv_TEXCOORD1 = ((worldVertUV_2 * _Texture2_ST.xy) + _Texture2_ST.zw);
					  xlv_TEXCOORD2 = ((_glesMultiTexCoord0.xy * _Texture3_ST.xy) + _Texture3_ST.zw);
					  xlv_TEXCOORD3 = ((_glesMultiTexCoord0.xy * _Texture4_ST.xy) + _Texture4_ST.zw);
					  xlv_TEXCOORD4 = tmpvar_3;
					  xlv_TEXCOORD5 = exp2((-(tmpvar_7) * tmpvar_7));
					}
					
					
					#endif
					#ifdef FRAGMENT
					uniform lowp vec4 unity_FogColor;
					uniform sampler2D _MainTex;
					uniform sampler2D _Texture2;
					uniform sampler2D _Texture3;
					uniform sampler2D _Texture4;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp vec2 xlv_TEXCOORD1;
					varying highp vec2 xlv_TEXCOORD2;
					varying highp vec2 xlv_TEXCOORD3;
					varying lowp vec4 xlv_TEXCOORD4;
					varying highp float xlv_TEXCOORD5;
					void main ()
					{
					  lowp vec4 final_1;
					  lowp vec4 tmpvar_2;
					  tmpvar_2 = mix (mix (mix (texture2D (_MainTex, xlv_TEXCOORD0), texture2D (_Texture2, xlv_TEXCOORD1), xlv_TEXCOORD4.xxxx), texture2D (_Texture3, xlv_TEXCOORD2), xlv_TEXCOORD4.yyyy), texture2D (_Texture4, xlv_TEXCOORD3), xlv_TEXCOORD4.zzzz);
					  final_1.w = tmpvar_2.w;
					  highp float tmpvar_3;
					  tmpvar_3 = clamp (xlv_TEXCOORD5, 0.0, 1.0);
					  final_1.xyz = mix (unity_FogColor.xyz, tmpvar_2.xyz, vec3(tmpvar_3));
					  gl_FragData[0] = final_1;
					}
					
					
					#endif"
				}
				SubProgram "gles hw_tier01 " {
					Keywords { "FOG_EXP2" }
					"!!GLES
					#version 100
					
					#ifdef VERTEX
					attribute vec4 _glesVertex;
					attribute vec4 _glesColor;
					attribute vec4 _glesMultiTexCoord0;
					uniform highp mat4 unity_ObjectToWorld;
					uniform highp mat4 unity_MatrixVP;
					uniform highp vec4 unity_FogParams;
					uniform highp vec4 _MainTex_ST;
					uniform highp vec4 _Texture2_ST;
					uniform highp vec4 _Texture3_ST;
					uniform highp vec4 _Texture4_ST;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp vec2 xlv_TEXCOORD1;
					varying highp vec2 xlv_TEXCOORD2;
					varying highp vec2 xlv_TEXCOORD3;
					varying lowp vec4 xlv_TEXCOORD4;
					varying highp float xlv_TEXCOORD5;
					void main ()
					{
					  highp vec4 tmpvar_1;
					  tmpvar_1 = _glesColor;
					  mediump vec2 worldVertUV_2;
					  lowp vec4 tmpvar_3;
					  highp vec4 tmpvar_4;
					  highp vec4 tmpvar_5;
					  tmpvar_5.w = 1.0;
					  tmpvar_5.xyz = _glesVertex.xyz;
					  tmpvar_4 = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_5));
					  highp vec2 tmpvar_6;
					  tmpvar_6 = (unity_ObjectToWorld * _glesVertex).xz;
					  worldVertUV_2 = tmpvar_6;
					  highp float tmpvar_7;
					  tmpvar_7 = (unity_FogParams.x * tmpvar_4.z);
					  tmpvar_3 = tmpvar_1;
					  gl_Position = tmpvar_4;
					  xlv_TEXCOORD0 = ((worldVertUV_2 * _MainTex_ST.xy) + _MainTex_ST.zw);
					  xlv_TEXCOORD1 = ((worldVertUV_2 * _Texture2_ST.xy) + _Texture2_ST.zw);
					  xlv_TEXCOORD2 = ((_glesMultiTexCoord0.xy * _Texture3_ST.xy) + _Texture3_ST.zw);
					  xlv_TEXCOORD3 = ((_glesMultiTexCoord0.xy * _Texture4_ST.xy) + _Texture4_ST.zw);
					  xlv_TEXCOORD4 = tmpvar_3;
					  xlv_TEXCOORD5 = exp2((-(tmpvar_7) * tmpvar_7));
					}
					
					
					#endif
					#ifdef FRAGMENT
					uniform lowp vec4 unity_FogColor;
					uniform sampler2D _MainTex;
					uniform sampler2D _Texture2;
					uniform sampler2D _Texture3;
					uniform sampler2D _Texture4;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp vec2 xlv_TEXCOORD1;
					varying highp vec2 xlv_TEXCOORD2;
					varying highp vec2 xlv_TEXCOORD3;
					varying lowp vec4 xlv_TEXCOORD4;
					varying highp float xlv_TEXCOORD5;
					void main ()
					{
					  lowp vec4 final_1;
					  lowp vec4 tmpvar_2;
					  tmpvar_2 = mix (mix (mix (texture2D (_MainTex, xlv_TEXCOORD0), texture2D (_Texture2, xlv_TEXCOORD1), xlv_TEXCOORD4.xxxx), texture2D (_Texture3, xlv_TEXCOORD2), xlv_TEXCOORD4.yyyy), texture2D (_Texture4, xlv_TEXCOORD3), xlv_TEXCOORD4.zzzz);
					  final_1.w = tmpvar_2.w;
					  highp float tmpvar_3;
					  tmpvar_3 = clamp (xlv_TEXCOORD5, 0.0, 1.0);
					  final_1.xyz = mix (unity_FogColor.xyz, tmpvar_2.xyz, vec3(tmpvar_3));
					  gl_FragData[0] = final_1;
					}
					
					
					#endif"
				}
				SubProgram "gles hw_tier02 " {
					Keywords { "FOG_EXP2" }
					"!!GLES
					#version 100
					
					#ifdef VERTEX
					attribute vec4 _glesVertex;
					attribute vec4 _glesColor;
					attribute vec4 _glesMultiTexCoord0;
					uniform highp mat4 unity_ObjectToWorld;
					uniform highp mat4 unity_MatrixVP;
					uniform highp vec4 unity_FogParams;
					uniform highp vec4 _MainTex_ST;
					uniform highp vec4 _Texture2_ST;
					uniform highp vec4 _Texture3_ST;
					uniform highp vec4 _Texture4_ST;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp vec2 xlv_TEXCOORD1;
					varying highp vec2 xlv_TEXCOORD2;
					varying highp vec2 xlv_TEXCOORD3;
					varying lowp vec4 xlv_TEXCOORD4;
					varying highp float xlv_TEXCOORD5;
					void main ()
					{
					  highp vec4 tmpvar_1;
					  tmpvar_1 = _glesColor;
					  mediump vec2 worldVertUV_2;
					  lowp vec4 tmpvar_3;
					  highp vec4 tmpvar_4;
					  highp vec4 tmpvar_5;
					  tmpvar_5.w = 1.0;
					  tmpvar_5.xyz = _glesVertex.xyz;
					  tmpvar_4 = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_5));
					  highp vec2 tmpvar_6;
					  tmpvar_6 = (unity_ObjectToWorld * _glesVertex).xz;
					  worldVertUV_2 = tmpvar_6;
					  highp float tmpvar_7;
					  tmpvar_7 = (unity_FogParams.x * tmpvar_4.z);
					  tmpvar_3 = tmpvar_1;
					  gl_Position = tmpvar_4;
					  xlv_TEXCOORD0 = ((worldVertUV_2 * _MainTex_ST.xy) + _MainTex_ST.zw);
					  xlv_TEXCOORD1 = ((worldVertUV_2 * _Texture2_ST.xy) + _Texture2_ST.zw);
					  xlv_TEXCOORD2 = ((_glesMultiTexCoord0.xy * _Texture3_ST.xy) + _Texture3_ST.zw);
					  xlv_TEXCOORD3 = ((_glesMultiTexCoord0.xy * _Texture4_ST.xy) + _Texture4_ST.zw);
					  xlv_TEXCOORD4 = tmpvar_3;
					  xlv_TEXCOORD5 = exp2((-(tmpvar_7) * tmpvar_7));
					}
					
					
					#endif
					#ifdef FRAGMENT
					uniform lowp vec4 unity_FogColor;
					uniform sampler2D _MainTex;
					uniform sampler2D _Texture2;
					uniform sampler2D _Texture3;
					uniform sampler2D _Texture4;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp vec2 xlv_TEXCOORD1;
					varying highp vec2 xlv_TEXCOORD2;
					varying highp vec2 xlv_TEXCOORD3;
					varying lowp vec4 xlv_TEXCOORD4;
					varying highp float xlv_TEXCOORD5;
					void main ()
					{
					  lowp vec4 final_1;
					  lowp vec4 tmpvar_2;
					  tmpvar_2 = mix (mix (mix (texture2D (_MainTex, xlv_TEXCOORD0), texture2D (_Texture2, xlv_TEXCOORD1), xlv_TEXCOORD4.xxxx), texture2D (_Texture3, xlv_TEXCOORD2), xlv_TEXCOORD4.yyyy), texture2D (_Texture4, xlv_TEXCOORD3), xlv_TEXCOORD4.zzzz);
					  final_1.w = tmpvar_2.w;
					  highp float tmpvar_3;
					  tmpvar_3 = clamp (xlv_TEXCOORD5, 0.0, 1.0);
					  final_1.xyz = mix (unity_FogColor.xyz, tmpvar_2.xyz, vec3(tmpvar_3));
					  gl_FragData[0] = final_1;
					}
					
					
					#endif"
				}
				SubProgram "gles hw_tier00 " {
					Keywords { "LIGHTMAP_ON" }
					"!!GLES
					#version 100
					
					#ifdef VERTEX
					attribute vec4 _glesVertex;
					attribute vec4 _glesColor;
					attribute vec4 _glesMultiTexCoord0;
					attribute vec4 _glesMultiTexCoord1;
					uniform highp mat4 unity_ObjectToWorld;
					uniform highp mat4 unity_MatrixVP;
					uniform highp vec4 unity_LightmapST;
					uniform highp vec4 _MainTex_ST;
					uniform highp vec4 _Texture2_ST;
					uniform highp vec4 _Texture3_ST;
					uniform highp vec4 _Texture4_ST;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp vec2 xlv_TEXCOORD1;
					varying highp vec2 xlv_TEXCOORD2;
					varying highp vec2 xlv_TEXCOORD3;
					varying lowp vec4 xlv_TEXCOORD4;
					varying highp vec2 xlv_TEXCOORD5;
					void main ()
					{
					  highp vec4 tmpvar_1;
					  tmpvar_1 = _glesColor;
					  mediump vec2 worldVertUV_2;
					  lowp vec4 tmpvar_3;
					  highp vec4 tmpvar_4;
					  tmpvar_4.w = 1.0;
					  tmpvar_4.xyz = _glesVertex.xyz;
					  highp vec2 tmpvar_5;
					  tmpvar_5 = (unity_ObjectToWorld * _glesVertex).xz;
					  worldVertUV_2 = tmpvar_5;
					  tmpvar_3 = tmpvar_1;
					  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_4));
					  xlv_TEXCOORD0 = ((worldVertUV_2 * _MainTex_ST.xy) + _MainTex_ST.zw);
					  xlv_TEXCOORD1 = ((worldVertUV_2 * _Texture2_ST.xy) + _Texture2_ST.zw);
					  xlv_TEXCOORD2 = ((_glesMultiTexCoord0.xy * _Texture3_ST.xy) + _Texture3_ST.zw);
					  xlv_TEXCOORD3 = ((_glesMultiTexCoord0.xy * _Texture4_ST.xy) + _Texture4_ST.zw);
					  xlv_TEXCOORD4 = tmpvar_3;
					  xlv_TEXCOORD5 = ((_glesMultiTexCoord1.xy * unity_LightmapST.xy) + unity_LightmapST.zw);
					}
					
					
					#endif
					#ifdef FRAGMENT
					uniform mediump sampler2D unity_Lightmap;
					uniform mediump vec4 unity_Lightmap_HDR;
					uniform sampler2D _MainTex;
					uniform sampler2D _Texture2;
					uniform sampler2D _Texture3;
					uniform sampler2D _Texture4;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp vec2 xlv_TEXCOORD1;
					varying highp vec2 xlv_TEXCOORD2;
					varying highp vec2 xlv_TEXCOORD3;
					varying lowp vec4 xlv_TEXCOORD4;
					varying highp vec2 xlv_TEXCOORD5;
					void main ()
					{
					  lowp vec3 lightmap_1;
					  lowp vec4 final_2;
					  lowp vec4 tmpvar_3;
					  tmpvar_3 = mix (mix (mix (texture2D (_MainTex, xlv_TEXCOORD0), texture2D (_Texture2, xlv_TEXCOORD1), xlv_TEXCOORD4.xxxx), texture2D (_Texture3, xlv_TEXCOORD2), xlv_TEXCOORD4.yyyy), texture2D (_Texture4, xlv_TEXCOORD3), xlv_TEXCOORD4.zzzz);
					  final_2.w = tmpvar_3.w;
					  mediump vec4 tmpvar_4;
					  tmpvar_4 = texture2D (unity_Lightmap, xlv_TEXCOORD5);
					  lowp vec4 color_5;
					  color_5 = tmpvar_4;
					  mediump vec3 tmpvar_6;
					  tmpvar_6 = (unity_Lightmap_HDR.x * color_5.xyz);
					  lightmap_1 = tmpvar_6;
					  final_2.xyz = (tmpvar_3.xyz * lightmap_1);
					  gl_FragData[0] = final_2;
					}
					
					
					#endif"
				}
				SubProgram "gles hw_tier01 " {
					Keywords { "LIGHTMAP_ON" }
					"!!GLES
					#version 100
					
					#ifdef VERTEX
					attribute vec4 _glesVertex;
					attribute vec4 _glesColor;
					attribute vec4 _glesMultiTexCoord0;
					attribute vec4 _glesMultiTexCoord1;
					uniform highp mat4 unity_ObjectToWorld;
					uniform highp mat4 unity_MatrixVP;
					uniform highp vec4 unity_LightmapST;
					uniform highp vec4 _MainTex_ST;
					uniform highp vec4 _Texture2_ST;
					uniform highp vec4 _Texture3_ST;
					uniform highp vec4 _Texture4_ST;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp vec2 xlv_TEXCOORD1;
					varying highp vec2 xlv_TEXCOORD2;
					varying highp vec2 xlv_TEXCOORD3;
					varying lowp vec4 xlv_TEXCOORD4;
					varying highp vec2 xlv_TEXCOORD5;
					void main ()
					{
					  highp vec4 tmpvar_1;
					  tmpvar_1 = _glesColor;
					  mediump vec2 worldVertUV_2;
					  lowp vec4 tmpvar_3;
					  highp vec4 tmpvar_4;
					  tmpvar_4.w = 1.0;
					  tmpvar_4.xyz = _glesVertex.xyz;
					  highp vec2 tmpvar_5;
					  tmpvar_5 = (unity_ObjectToWorld * _glesVertex).xz;
					  worldVertUV_2 = tmpvar_5;
					  tmpvar_3 = tmpvar_1;
					  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_4));
					  xlv_TEXCOORD0 = ((worldVertUV_2 * _MainTex_ST.xy) + _MainTex_ST.zw);
					  xlv_TEXCOORD1 = ((worldVertUV_2 * _Texture2_ST.xy) + _Texture2_ST.zw);
					  xlv_TEXCOORD2 = ((_glesMultiTexCoord0.xy * _Texture3_ST.xy) + _Texture3_ST.zw);
					  xlv_TEXCOORD3 = ((_glesMultiTexCoord0.xy * _Texture4_ST.xy) + _Texture4_ST.zw);
					  xlv_TEXCOORD4 = tmpvar_3;
					  xlv_TEXCOORD5 = ((_glesMultiTexCoord1.xy * unity_LightmapST.xy) + unity_LightmapST.zw);
					}
					
					
					#endif
					#ifdef FRAGMENT
					uniform mediump sampler2D unity_Lightmap;
					uniform mediump vec4 unity_Lightmap_HDR;
					uniform sampler2D _MainTex;
					uniform sampler2D _Texture2;
					uniform sampler2D _Texture3;
					uniform sampler2D _Texture4;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp vec2 xlv_TEXCOORD1;
					varying highp vec2 xlv_TEXCOORD2;
					varying highp vec2 xlv_TEXCOORD3;
					varying lowp vec4 xlv_TEXCOORD4;
					varying highp vec2 xlv_TEXCOORD5;
					void main ()
					{
					  lowp vec3 lightmap_1;
					  lowp vec4 final_2;
					  lowp vec4 tmpvar_3;
					  tmpvar_3 = mix (mix (mix (texture2D (_MainTex, xlv_TEXCOORD0), texture2D (_Texture2, xlv_TEXCOORD1), xlv_TEXCOORD4.xxxx), texture2D (_Texture3, xlv_TEXCOORD2), xlv_TEXCOORD4.yyyy), texture2D (_Texture4, xlv_TEXCOORD3), xlv_TEXCOORD4.zzzz);
					  final_2.w = tmpvar_3.w;
					  mediump vec4 tmpvar_4;
					  tmpvar_4 = texture2D (unity_Lightmap, xlv_TEXCOORD5);
					  lowp vec4 color_5;
					  color_5 = tmpvar_4;
					  mediump vec3 tmpvar_6;
					  tmpvar_6 = (unity_Lightmap_HDR.x * color_5.xyz);
					  lightmap_1 = tmpvar_6;
					  final_2.xyz = (tmpvar_3.xyz * lightmap_1);
					  gl_FragData[0] = final_2;
					}
					
					
					#endif"
				}
				SubProgram "gles hw_tier02 " {
					Keywords { "LIGHTMAP_ON" }
					"!!GLES
					#version 100
					
					#ifdef VERTEX
					attribute vec4 _glesVertex;
					attribute vec4 _glesColor;
					attribute vec4 _glesMultiTexCoord0;
					attribute vec4 _glesMultiTexCoord1;
					uniform highp mat4 unity_ObjectToWorld;
					uniform highp mat4 unity_MatrixVP;
					uniform highp vec4 unity_LightmapST;
					uniform highp vec4 _MainTex_ST;
					uniform highp vec4 _Texture2_ST;
					uniform highp vec4 _Texture3_ST;
					uniform highp vec4 _Texture4_ST;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp vec2 xlv_TEXCOORD1;
					varying highp vec2 xlv_TEXCOORD2;
					varying highp vec2 xlv_TEXCOORD3;
					varying lowp vec4 xlv_TEXCOORD4;
					varying highp vec2 xlv_TEXCOORD5;
					void main ()
					{
					  highp vec4 tmpvar_1;
					  tmpvar_1 = _glesColor;
					  mediump vec2 worldVertUV_2;
					  lowp vec4 tmpvar_3;
					  highp vec4 tmpvar_4;
					  tmpvar_4.w = 1.0;
					  tmpvar_4.xyz = _glesVertex.xyz;
					  highp vec2 tmpvar_5;
					  tmpvar_5 = (unity_ObjectToWorld * _glesVertex).xz;
					  worldVertUV_2 = tmpvar_5;
					  tmpvar_3 = tmpvar_1;
					  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_4));
					  xlv_TEXCOORD0 = ((worldVertUV_2 * _MainTex_ST.xy) + _MainTex_ST.zw);
					  xlv_TEXCOORD1 = ((worldVertUV_2 * _Texture2_ST.xy) + _Texture2_ST.zw);
					  xlv_TEXCOORD2 = ((_glesMultiTexCoord0.xy * _Texture3_ST.xy) + _Texture3_ST.zw);
					  xlv_TEXCOORD3 = ((_glesMultiTexCoord0.xy * _Texture4_ST.xy) + _Texture4_ST.zw);
					  xlv_TEXCOORD4 = tmpvar_3;
					  xlv_TEXCOORD5 = ((_glesMultiTexCoord1.xy * unity_LightmapST.xy) + unity_LightmapST.zw);
					}
					
					
					#endif
					#ifdef FRAGMENT
					uniform mediump sampler2D unity_Lightmap;
					uniform mediump vec4 unity_Lightmap_HDR;
					uniform sampler2D _MainTex;
					uniform sampler2D _Texture2;
					uniform sampler2D _Texture3;
					uniform sampler2D _Texture4;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp vec2 xlv_TEXCOORD1;
					varying highp vec2 xlv_TEXCOORD2;
					varying highp vec2 xlv_TEXCOORD3;
					varying lowp vec4 xlv_TEXCOORD4;
					varying highp vec2 xlv_TEXCOORD5;
					void main ()
					{
					  lowp vec3 lightmap_1;
					  lowp vec4 final_2;
					  lowp vec4 tmpvar_3;
					  tmpvar_3 = mix (mix (mix (texture2D (_MainTex, xlv_TEXCOORD0), texture2D (_Texture2, xlv_TEXCOORD1), xlv_TEXCOORD4.xxxx), texture2D (_Texture3, xlv_TEXCOORD2), xlv_TEXCOORD4.yyyy), texture2D (_Texture4, xlv_TEXCOORD3), xlv_TEXCOORD4.zzzz);
					  final_2.w = tmpvar_3.w;
					  mediump vec4 tmpvar_4;
					  tmpvar_4 = texture2D (unity_Lightmap, xlv_TEXCOORD5);
					  lowp vec4 color_5;
					  color_5 = tmpvar_4;
					  mediump vec3 tmpvar_6;
					  tmpvar_6 = (unity_Lightmap_HDR.x * color_5.xyz);
					  lightmap_1 = tmpvar_6;
					  final_2.xyz = (tmpvar_3.xyz * lightmap_1);
					  gl_FragData[0] = final_2;
					}
					
					
					#endif"
				}
				SubProgram "gles hw_tier00 " {
					Keywords { "LIGHTMAP_ON" "FOG_LINEAR" }
					"!!GLES
					#version 100
					
					#ifdef VERTEX
					attribute vec4 _glesVertex;
					attribute vec4 _glesColor;
					attribute vec4 _glesMultiTexCoord0;
					attribute vec4 _glesMultiTexCoord1;
					uniform highp mat4 unity_ObjectToWorld;
					uniform highp mat4 unity_MatrixVP;
					uniform highp vec4 unity_FogParams;
					uniform highp vec4 unity_LightmapST;
					uniform highp vec4 _MainTex_ST;
					uniform highp vec4 _Texture2_ST;
					uniform highp vec4 _Texture3_ST;
					uniform highp vec4 _Texture4_ST;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp vec2 xlv_TEXCOORD1;
					varying highp vec2 xlv_TEXCOORD2;
					varying highp vec2 xlv_TEXCOORD3;
					varying lowp vec4 xlv_TEXCOORD4;
					varying highp vec2 xlv_TEXCOORD5;
					varying highp float xlv_TEXCOORD6;
					void main ()
					{
					  highp vec4 tmpvar_1;
					  tmpvar_1 = _glesColor;
					  mediump vec2 worldVertUV_2;
					  lowp vec4 tmpvar_3;
					  highp vec4 tmpvar_4;
					  highp vec4 tmpvar_5;
					  tmpvar_5.w = 1.0;
					  tmpvar_5.xyz = _glesVertex.xyz;
					  tmpvar_4 = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_5));
					  highp vec2 tmpvar_6;
					  tmpvar_6 = (unity_ObjectToWorld * _glesVertex).xz;
					  worldVertUV_2 = tmpvar_6;
					  tmpvar_3 = tmpvar_1;
					  gl_Position = tmpvar_4;
					  xlv_TEXCOORD0 = ((worldVertUV_2 * _MainTex_ST.xy) + _MainTex_ST.zw);
					  xlv_TEXCOORD1 = ((worldVertUV_2 * _Texture2_ST.xy) + _Texture2_ST.zw);
					  xlv_TEXCOORD2 = ((_glesMultiTexCoord0.xy * _Texture3_ST.xy) + _Texture3_ST.zw);
					  xlv_TEXCOORD3 = ((_glesMultiTexCoord0.xy * _Texture4_ST.xy) + _Texture4_ST.zw);
					  xlv_TEXCOORD4 = tmpvar_3;
					  xlv_TEXCOORD5 = ((_glesMultiTexCoord1.xy * unity_LightmapST.xy) + unity_LightmapST.zw);
					  xlv_TEXCOORD6 = ((tmpvar_4.z * unity_FogParams.z) + unity_FogParams.w);
					}
					
					
					#endif
					#ifdef FRAGMENT
					uniform lowp vec4 unity_FogColor;
					uniform mediump sampler2D unity_Lightmap;
					uniform mediump vec4 unity_Lightmap_HDR;
					uniform sampler2D _MainTex;
					uniform sampler2D _Texture2;
					uniform sampler2D _Texture3;
					uniform sampler2D _Texture4;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp vec2 xlv_TEXCOORD1;
					varying highp vec2 xlv_TEXCOORD2;
					varying highp vec2 xlv_TEXCOORD3;
					varying lowp vec4 xlv_TEXCOORD4;
					varying highp vec2 xlv_TEXCOORD5;
					varying highp float xlv_TEXCOORD6;
					void main ()
					{
					  lowp vec3 lightmap_1;
					  lowp vec4 final_2;
					  lowp vec4 tmpvar_3;
					  tmpvar_3 = mix (mix (mix (texture2D (_MainTex, xlv_TEXCOORD0), texture2D (_Texture2, xlv_TEXCOORD1), xlv_TEXCOORD4.xxxx), texture2D (_Texture3, xlv_TEXCOORD2), xlv_TEXCOORD4.yyyy), texture2D (_Texture4, xlv_TEXCOORD3), xlv_TEXCOORD4.zzzz);
					  final_2.w = tmpvar_3.w;
					  mediump vec4 tmpvar_4;
					  tmpvar_4 = texture2D (unity_Lightmap, xlv_TEXCOORD5);
					  lowp vec4 color_5;
					  color_5 = tmpvar_4;
					  mediump vec3 tmpvar_6;
					  tmpvar_6 = (unity_Lightmap_HDR.x * color_5.xyz);
					  lightmap_1 = tmpvar_6;
					  final_2.xyz = (tmpvar_3.xyz * lightmap_1);
					  highp float tmpvar_7;
					  tmpvar_7 = clamp (xlv_TEXCOORD6, 0.0, 1.0);
					  final_2.xyz = mix (unity_FogColor.xyz, final_2.xyz, vec3(tmpvar_7));
					  gl_FragData[0] = final_2;
					}
					
					
					#endif"
				}
				SubProgram "gles hw_tier01 " {
					Keywords { "LIGHTMAP_ON" "FOG_LINEAR" }
					"!!GLES
					#version 100
					
					#ifdef VERTEX
					attribute vec4 _glesVertex;
					attribute vec4 _glesColor;
					attribute vec4 _glesMultiTexCoord0;
					attribute vec4 _glesMultiTexCoord1;
					uniform highp mat4 unity_ObjectToWorld;
					uniform highp mat4 unity_MatrixVP;
					uniform highp vec4 unity_FogParams;
					uniform highp vec4 unity_LightmapST;
					uniform highp vec4 _MainTex_ST;
					uniform highp vec4 _Texture2_ST;
					uniform highp vec4 _Texture3_ST;
					uniform highp vec4 _Texture4_ST;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp vec2 xlv_TEXCOORD1;
					varying highp vec2 xlv_TEXCOORD2;
					varying highp vec2 xlv_TEXCOORD3;
					varying lowp vec4 xlv_TEXCOORD4;
					varying highp vec2 xlv_TEXCOORD5;
					varying highp float xlv_TEXCOORD6;
					void main ()
					{
					  highp vec4 tmpvar_1;
					  tmpvar_1 = _glesColor;
					  mediump vec2 worldVertUV_2;
					  lowp vec4 tmpvar_3;
					  highp vec4 tmpvar_4;
					  highp vec4 tmpvar_5;
					  tmpvar_5.w = 1.0;
					  tmpvar_5.xyz = _glesVertex.xyz;
					  tmpvar_4 = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_5));
					  highp vec2 tmpvar_6;
					  tmpvar_6 = (unity_ObjectToWorld * _glesVertex).xz;
					  worldVertUV_2 = tmpvar_6;
					  tmpvar_3 = tmpvar_1;
					  gl_Position = tmpvar_4;
					  xlv_TEXCOORD0 = ((worldVertUV_2 * _MainTex_ST.xy) + _MainTex_ST.zw);
					  xlv_TEXCOORD1 = ((worldVertUV_2 * _Texture2_ST.xy) + _Texture2_ST.zw);
					  xlv_TEXCOORD2 = ((_glesMultiTexCoord0.xy * _Texture3_ST.xy) + _Texture3_ST.zw);
					  xlv_TEXCOORD3 = ((_glesMultiTexCoord0.xy * _Texture4_ST.xy) + _Texture4_ST.zw);
					  xlv_TEXCOORD4 = tmpvar_3;
					  xlv_TEXCOORD5 = ((_glesMultiTexCoord1.xy * unity_LightmapST.xy) + unity_LightmapST.zw);
					  xlv_TEXCOORD6 = ((tmpvar_4.z * unity_FogParams.z) + unity_FogParams.w);
					}
					
					
					#endif
					#ifdef FRAGMENT
					uniform lowp vec4 unity_FogColor;
					uniform mediump sampler2D unity_Lightmap;
					uniform mediump vec4 unity_Lightmap_HDR;
					uniform sampler2D _MainTex;
					uniform sampler2D _Texture2;
					uniform sampler2D _Texture3;
					uniform sampler2D _Texture4;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp vec2 xlv_TEXCOORD1;
					varying highp vec2 xlv_TEXCOORD2;
					varying highp vec2 xlv_TEXCOORD3;
					varying lowp vec4 xlv_TEXCOORD4;
					varying highp vec2 xlv_TEXCOORD5;
					varying highp float xlv_TEXCOORD6;
					void main ()
					{
					  lowp vec3 lightmap_1;
					  lowp vec4 final_2;
					  lowp vec4 tmpvar_3;
					  tmpvar_3 = mix (mix (mix (texture2D (_MainTex, xlv_TEXCOORD0), texture2D (_Texture2, xlv_TEXCOORD1), xlv_TEXCOORD4.xxxx), texture2D (_Texture3, xlv_TEXCOORD2), xlv_TEXCOORD4.yyyy), texture2D (_Texture4, xlv_TEXCOORD3), xlv_TEXCOORD4.zzzz);
					  final_2.w = tmpvar_3.w;
					  mediump vec4 tmpvar_4;
					  tmpvar_4 = texture2D (unity_Lightmap, xlv_TEXCOORD5);
					  lowp vec4 color_5;
					  color_5 = tmpvar_4;
					  mediump vec3 tmpvar_6;
					  tmpvar_6 = (unity_Lightmap_HDR.x * color_5.xyz);
					  lightmap_1 = tmpvar_6;
					  final_2.xyz = (tmpvar_3.xyz * lightmap_1);
					  highp float tmpvar_7;
					  tmpvar_7 = clamp (xlv_TEXCOORD6, 0.0, 1.0);
					  final_2.xyz = mix (unity_FogColor.xyz, final_2.xyz, vec3(tmpvar_7));
					  gl_FragData[0] = final_2;
					}
					
					
					#endif"
				}
				SubProgram "gles hw_tier02 " {
					Keywords { "LIGHTMAP_ON" "FOG_LINEAR" }
					"!!GLES
					#version 100
					
					#ifdef VERTEX
					attribute vec4 _glesVertex;
					attribute vec4 _glesColor;
					attribute vec4 _glesMultiTexCoord0;
					attribute vec4 _glesMultiTexCoord1;
					uniform highp mat4 unity_ObjectToWorld;
					uniform highp mat4 unity_MatrixVP;
					uniform highp vec4 unity_FogParams;
					uniform highp vec4 unity_LightmapST;
					uniform highp vec4 _MainTex_ST;
					uniform highp vec4 _Texture2_ST;
					uniform highp vec4 _Texture3_ST;
					uniform highp vec4 _Texture4_ST;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp vec2 xlv_TEXCOORD1;
					varying highp vec2 xlv_TEXCOORD2;
					varying highp vec2 xlv_TEXCOORD3;
					varying lowp vec4 xlv_TEXCOORD4;
					varying highp vec2 xlv_TEXCOORD5;
					varying highp float xlv_TEXCOORD6;
					void main ()
					{
					  highp vec4 tmpvar_1;
					  tmpvar_1 = _glesColor;
					  mediump vec2 worldVertUV_2;
					  lowp vec4 tmpvar_3;
					  highp vec4 tmpvar_4;
					  highp vec4 tmpvar_5;
					  tmpvar_5.w = 1.0;
					  tmpvar_5.xyz = _glesVertex.xyz;
					  tmpvar_4 = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_5));
					  highp vec2 tmpvar_6;
					  tmpvar_6 = (unity_ObjectToWorld * _glesVertex).xz;
					  worldVertUV_2 = tmpvar_6;
					  tmpvar_3 = tmpvar_1;
					  gl_Position = tmpvar_4;
					  xlv_TEXCOORD0 = ((worldVertUV_2 * _MainTex_ST.xy) + _MainTex_ST.zw);
					  xlv_TEXCOORD1 = ((worldVertUV_2 * _Texture2_ST.xy) + _Texture2_ST.zw);
					  xlv_TEXCOORD2 = ((_glesMultiTexCoord0.xy * _Texture3_ST.xy) + _Texture3_ST.zw);
					  xlv_TEXCOORD3 = ((_glesMultiTexCoord0.xy * _Texture4_ST.xy) + _Texture4_ST.zw);
					  xlv_TEXCOORD4 = tmpvar_3;
					  xlv_TEXCOORD5 = ((_glesMultiTexCoord1.xy * unity_LightmapST.xy) + unity_LightmapST.zw);
					  xlv_TEXCOORD6 = ((tmpvar_4.z * unity_FogParams.z) + unity_FogParams.w);
					}
					
					
					#endif
					#ifdef FRAGMENT
					uniform lowp vec4 unity_FogColor;
					uniform mediump sampler2D unity_Lightmap;
					uniform mediump vec4 unity_Lightmap_HDR;
					uniform sampler2D _MainTex;
					uniform sampler2D _Texture2;
					uniform sampler2D _Texture3;
					uniform sampler2D _Texture4;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp vec2 xlv_TEXCOORD1;
					varying highp vec2 xlv_TEXCOORD2;
					varying highp vec2 xlv_TEXCOORD3;
					varying lowp vec4 xlv_TEXCOORD4;
					varying highp vec2 xlv_TEXCOORD5;
					varying highp float xlv_TEXCOORD6;
					void main ()
					{
					  lowp vec3 lightmap_1;
					  lowp vec4 final_2;
					  lowp vec4 tmpvar_3;
					  tmpvar_3 = mix (mix (mix (texture2D (_MainTex, xlv_TEXCOORD0), texture2D (_Texture2, xlv_TEXCOORD1), xlv_TEXCOORD4.xxxx), texture2D (_Texture3, xlv_TEXCOORD2), xlv_TEXCOORD4.yyyy), texture2D (_Texture4, xlv_TEXCOORD3), xlv_TEXCOORD4.zzzz);
					  final_2.w = tmpvar_3.w;
					  mediump vec4 tmpvar_4;
					  tmpvar_4 = texture2D (unity_Lightmap, xlv_TEXCOORD5);
					  lowp vec4 color_5;
					  color_5 = tmpvar_4;
					  mediump vec3 tmpvar_6;
					  tmpvar_6 = (unity_Lightmap_HDR.x * color_5.xyz);
					  lightmap_1 = tmpvar_6;
					  final_2.xyz = (tmpvar_3.xyz * lightmap_1);
					  highp float tmpvar_7;
					  tmpvar_7 = clamp (xlv_TEXCOORD6, 0.0, 1.0);
					  final_2.xyz = mix (unity_FogColor.xyz, final_2.xyz, vec3(tmpvar_7));
					  gl_FragData[0] = final_2;
					}
					
					
					#endif"
				}
				SubProgram "gles hw_tier00 " {
					Keywords { "LIGHTMAP_ON" "FOG_EXP" }
					"!!GLES
					#version 100
					
					#ifdef VERTEX
					attribute vec4 _glesVertex;
					attribute vec4 _glesColor;
					attribute vec4 _glesMultiTexCoord0;
					attribute vec4 _glesMultiTexCoord1;
					uniform highp mat4 unity_ObjectToWorld;
					uniform highp mat4 unity_MatrixVP;
					uniform highp vec4 unity_FogParams;
					uniform highp vec4 unity_LightmapST;
					uniform highp vec4 _MainTex_ST;
					uniform highp vec4 _Texture2_ST;
					uniform highp vec4 _Texture3_ST;
					uniform highp vec4 _Texture4_ST;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp vec2 xlv_TEXCOORD1;
					varying highp vec2 xlv_TEXCOORD2;
					varying highp vec2 xlv_TEXCOORD3;
					varying lowp vec4 xlv_TEXCOORD4;
					varying highp vec2 xlv_TEXCOORD5;
					varying highp float xlv_TEXCOORD6;
					void main ()
					{
					  highp vec4 tmpvar_1;
					  tmpvar_1 = _glesColor;
					  mediump vec2 worldVertUV_2;
					  lowp vec4 tmpvar_3;
					  highp vec4 tmpvar_4;
					  highp vec4 tmpvar_5;
					  tmpvar_5.w = 1.0;
					  tmpvar_5.xyz = _glesVertex.xyz;
					  tmpvar_4 = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_5));
					  highp vec2 tmpvar_6;
					  tmpvar_6 = (unity_ObjectToWorld * _glesVertex).xz;
					  worldVertUV_2 = tmpvar_6;
					  tmpvar_3 = tmpvar_1;
					  gl_Position = tmpvar_4;
					  xlv_TEXCOORD0 = ((worldVertUV_2 * _MainTex_ST.xy) + _MainTex_ST.zw);
					  xlv_TEXCOORD1 = ((worldVertUV_2 * _Texture2_ST.xy) + _Texture2_ST.zw);
					  xlv_TEXCOORD2 = ((_glesMultiTexCoord0.xy * _Texture3_ST.xy) + _Texture3_ST.zw);
					  xlv_TEXCOORD3 = ((_glesMultiTexCoord0.xy * _Texture4_ST.xy) + _Texture4_ST.zw);
					  xlv_TEXCOORD4 = tmpvar_3;
					  xlv_TEXCOORD5 = ((_glesMultiTexCoord1.xy * unity_LightmapST.xy) + unity_LightmapST.zw);
					  xlv_TEXCOORD6 = exp2(-((unity_FogParams.y * tmpvar_4.z)));
					}
					
					
					#endif
					#ifdef FRAGMENT
					uniform lowp vec4 unity_FogColor;
					uniform mediump sampler2D unity_Lightmap;
					uniform mediump vec4 unity_Lightmap_HDR;
					uniform sampler2D _MainTex;
					uniform sampler2D _Texture2;
					uniform sampler2D _Texture3;
					uniform sampler2D _Texture4;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp vec2 xlv_TEXCOORD1;
					varying highp vec2 xlv_TEXCOORD2;
					varying highp vec2 xlv_TEXCOORD3;
					varying lowp vec4 xlv_TEXCOORD4;
					varying highp vec2 xlv_TEXCOORD5;
					varying highp float xlv_TEXCOORD6;
					void main ()
					{
					  lowp vec3 lightmap_1;
					  lowp vec4 final_2;
					  lowp vec4 tmpvar_3;
					  tmpvar_3 = mix (mix (mix (texture2D (_MainTex, xlv_TEXCOORD0), texture2D (_Texture2, xlv_TEXCOORD1), xlv_TEXCOORD4.xxxx), texture2D (_Texture3, xlv_TEXCOORD2), xlv_TEXCOORD4.yyyy), texture2D (_Texture4, xlv_TEXCOORD3), xlv_TEXCOORD4.zzzz);
					  final_2.w = tmpvar_3.w;
					  mediump vec4 tmpvar_4;
					  tmpvar_4 = texture2D (unity_Lightmap, xlv_TEXCOORD5);
					  lowp vec4 color_5;
					  color_5 = tmpvar_4;
					  mediump vec3 tmpvar_6;
					  tmpvar_6 = (unity_Lightmap_HDR.x * color_5.xyz);
					  lightmap_1 = tmpvar_6;
					  final_2.xyz = (tmpvar_3.xyz * lightmap_1);
					  highp float tmpvar_7;
					  tmpvar_7 = clamp (xlv_TEXCOORD6, 0.0, 1.0);
					  final_2.xyz = mix (unity_FogColor.xyz, final_2.xyz, vec3(tmpvar_7));
					  gl_FragData[0] = final_2;
					}
					
					
					#endif"
				}
				SubProgram "gles hw_tier01 " {
					Keywords { "LIGHTMAP_ON" "FOG_EXP" }
					"!!GLES
					#version 100
					
					#ifdef VERTEX
					attribute vec4 _glesVertex;
					attribute vec4 _glesColor;
					attribute vec4 _glesMultiTexCoord0;
					attribute vec4 _glesMultiTexCoord1;
					uniform highp mat4 unity_ObjectToWorld;
					uniform highp mat4 unity_MatrixVP;
					uniform highp vec4 unity_FogParams;
					uniform highp vec4 unity_LightmapST;
					uniform highp vec4 _MainTex_ST;
					uniform highp vec4 _Texture2_ST;
					uniform highp vec4 _Texture3_ST;
					uniform highp vec4 _Texture4_ST;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp vec2 xlv_TEXCOORD1;
					varying highp vec2 xlv_TEXCOORD2;
					varying highp vec2 xlv_TEXCOORD3;
					varying lowp vec4 xlv_TEXCOORD4;
					varying highp vec2 xlv_TEXCOORD5;
					varying highp float xlv_TEXCOORD6;
					void main ()
					{
					  highp vec4 tmpvar_1;
					  tmpvar_1 = _glesColor;
					  mediump vec2 worldVertUV_2;
					  lowp vec4 tmpvar_3;
					  highp vec4 tmpvar_4;
					  highp vec4 tmpvar_5;
					  tmpvar_5.w = 1.0;
					  tmpvar_5.xyz = _glesVertex.xyz;
					  tmpvar_4 = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_5));
					  highp vec2 tmpvar_6;
					  tmpvar_6 = (unity_ObjectToWorld * _glesVertex).xz;
					  worldVertUV_2 = tmpvar_6;
					  tmpvar_3 = tmpvar_1;
					  gl_Position = tmpvar_4;
					  xlv_TEXCOORD0 = ((worldVertUV_2 * _MainTex_ST.xy) + _MainTex_ST.zw);
					  xlv_TEXCOORD1 = ((worldVertUV_2 * _Texture2_ST.xy) + _Texture2_ST.zw);
					  xlv_TEXCOORD2 = ((_glesMultiTexCoord0.xy * _Texture3_ST.xy) + _Texture3_ST.zw);
					  xlv_TEXCOORD3 = ((_glesMultiTexCoord0.xy * _Texture4_ST.xy) + _Texture4_ST.zw);
					  xlv_TEXCOORD4 = tmpvar_3;
					  xlv_TEXCOORD5 = ((_glesMultiTexCoord1.xy * unity_LightmapST.xy) + unity_LightmapST.zw);
					  xlv_TEXCOORD6 = exp2(-((unity_FogParams.y * tmpvar_4.z)));
					}
					
					
					#endif
					#ifdef FRAGMENT
					uniform lowp vec4 unity_FogColor;
					uniform mediump sampler2D unity_Lightmap;
					uniform mediump vec4 unity_Lightmap_HDR;
					uniform sampler2D _MainTex;
					uniform sampler2D _Texture2;
					uniform sampler2D _Texture3;
					uniform sampler2D _Texture4;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp vec2 xlv_TEXCOORD1;
					varying highp vec2 xlv_TEXCOORD2;
					varying highp vec2 xlv_TEXCOORD3;
					varying lowp vec4 xlv_TEXCOORD4;
					varying highp vec2 xlv_TEXCOORD5;
					varying highp float xlv_TEXCOORD6;
					void main ()
					{
					  lowp vec3 lightmap_1;
					  lowp vec4 final_2;
					  lowp vec4 tmpvar_3;
					  tmpvar_3 = mix (mix (mix (texture2D (_MainTex, xlv_TEXCOORD0), texture2D (_Texture2, xlv_TEXCOORD1), xlv_TEXCOORD4.xxxx), texture2D (_Texture3, xlv_TEXCOORD2), xlv_TEXCOORD4.yyyy), texture2D (_Texture4, xlv_TEXCOORD3), xlv_TEXCOORD4.zzzz);
					  final_2.w = tmpvar_3.w;
					  mediump vec4 tmpvar_4;
					  tmpvar_4 = texture2D (unity_Lightmap, xlv_TEXCOORD5);
					  lowp vec4 color_5;
					  color_5 = tmpvar_4;
					  mediump vec3 tmpvar_6;
					  tmpvar_6 = (unity_Lightmap_HDR.x * color_5.xyz);
					  lightmap_1 = tmpvar_6;
					  final_2.xyz = (tmpvar_3.xyz * lightmap_1);
					  highp float tmpvar_7;
					  tmpvar_7 = clamp (xlv_TEXCOORD6, 0.0, 1.0);
					  final_2.xyz = mix (unity_FogColor.xyz, final_2.xyz, vec3(tmpvar_7));
					  gl_FragData[0] = final_2;
					}
					
					
					#endif"
				}
				SubProgram "gles hw_tier02 " {
					Keywords { "LIGHTMAP_ON" "FOG_EXP" }
					"!!GLES
					#version 100
					
					#ifdef VERTEX
					attribute vec4 _glesVertex;
					attribute vec4 _glesColor;
					attribute vec4 _glesMultiTexCoord0;
					attribute vec4 _glesMultiTexCoord1;
					uniform highp mat4 unity_ObjectToWorld;
					uniform highp mat4 unity_MatrixVP;
					uniform highp vec4 unity_FogParams;
					uniform highp vec4 unity_LightmapST;
					uniform highp vec4 _MainTex_ST;
					uniform highp vec4 _Texture2_ST;
					uniform highp vec4 _Texture3_ST;
					uniform highp vec4 _Texture4_ST;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp vec2 xlv_TEXCOORD1;
					varying highp vec2 xlv_TEXCOORD2;
					varying highp vec2 xlv_TEXCOORD3;
					varying lowp vec4 xlv_TEXCOORD4;
					varying highp vec2 xlv_TEXCOORD5;
					varying highp float xlv_TEXCOORD6;
					void main ()
					{
					  highp vec4 tmpvar_1;
					  tmpvar_1 = _glesColor;
					  mediump vec2 worldVertUV_2;
					  lowp vec4 tmpvar_3;
					  highp vec4 tmpvar_4;
					  highp vec4 tmpvar_5;
					  tmpvar_5.w = 1.0;
					  tmpvar_5.xyz = _glesVertex.xyz;
					  tmpvar_4 = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_5));
					  highp vec2 tmpvar_6;
					  tmpvar_6 = (unity_ObjectToWorld * _glesVertex).xz;
					  worldVertUV_2 = tmpvar_6;
					  tmpvar_3 = tmpvar_1;
					  gl_Position = tmpvar_4;
					  xlv_TEXCOORD0 = ((worldVertUV_2 * _MainTex_ST.xy) + _MainTex_ST.zw);
					  xlv_TEXCOORD1 = ((worldVertUV_2 * _Texture2_ST.xy) + _Texture2_ST.zw);
					  xlv_TEXCOORD2 = ((_glesMultiTexCoord0.xy * _Texture3_ST.xy) + _Texture3_ST.zw);
					  xlv_TEXCOORD3 = ((_glesMultiTexCoord0.xy * _Texture4_ST.xy) + _Texture4_ST.zw);
					  xlv_TEXCOORD4 = tmpvar_3;
					  xlv_TEXCOORD5 = ((_glesMultiTexCoord1.xy * unity_LightmapST.xy) + unity_LightmapST.zw);
					  xlv_TEXCOORD6 = exp2(-((unity_FogParams.y * tmpvar_4.z)));
					}
					
					
					#endif
					#ifdef FRAGMENT
					uniform lowp vec4 unity_FogColor;
					uniform mediump sampler2D unity_Lightmap;
					uniform mediump vec4 unity_Lightmap_HDR;
					uniform sampler2D _MainTex;
					uniform sampler2D _Texture2;
					uniform sampler2D _Texture3;
					uniform sampler2D _Texture4;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp vec2 xlv_TEXCOORD1;
					varying highp vec2 xlv_TEXCOORD2;
					varying highp vec2 xlv_TEXCOORD3;
					varying lowp vec4 xlv_TEXCOORD4;
					varying highp vec2 xlv_TEXCOORD5;
					varying highp float xlv_TEXCOORD6;
					void main ()
					{
					  lowp vec3 lightmap_1;
					  lowp vec4 final_2;
					  lowp vec4 tmpvar_3;
					  tmpvar_3 = mix (mix (mix (texture2D (_MainTex, xlv_TEXCOORD0), texture2D (_Texture2, xlv_TEXCOORD1), xlv_TEXCOORD4.xxxx), texture2D (_Texture3, xlv_TEXCOORD2), xlv_TEXCOORD4.yyyy), texture2D (_Texture4, xlv_TEXCOORD3), xlv_TEXCOORD4.zzzz);
					  final_2.w = tmpvar_3.w;
					  mediump vec4 tmpvar_4;
					  tmpvar_4 = texture2D (unity_Lightmap, xlv_TEXCOORD5);
					  lowp vec4 color_5;
					  color_5 = tmpvar_4;
					  mediump vec3 tmpvar_6;
					  tmpvar_6 = (unity_Lightmap_HDR.x * color_5.xyz);
					  lightmap_1 = tmpvar_6;
					  final_2.xyz = (tmpvar_3.xyz * lightmap_1);
					  highp float tmpvar_7;
					  tmpvar_7 = clamp (xlv_TEXCOORD6, 0.0, 1.0);
					  final_2.xyz = mix (unity_FogColor.xyz, final_2.xyz, vec3(tmpvar_7));
					  gl_FragData[0] = final_2;
					}
					
					
					#endif"
				}
				SubProgram "gles hw_tier00 " {
					Keywords { "LIGHTMAP_ON" "FOG_EXP2" }
					"!!GLES
					#version 100
					
					#ifdef VERTEX
					attribute vec4 _glesVertex;
					attribute vec4 _glesColor;
					attribute vec4 _glesMultiTexCoord0;
					attribute vec4 _glesMultiTexCoord1;
					uniform highp mat4 unity_ObjectToWorld;
					uniform highp mat4 unity_MatrixVP;
					uniform highp vec4 unity_FogParams;
					uniform highp vec4 unity_LightmapST;
					uniform highp vec4 _MainTex_ST;
					uniform highp vec4 _Texture2_ST;
					uniform highp vec4 _Texture3_ST;
					uniform highp vec4 _Texture4_ST;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp vec2 xlv_TEXCOORD1;
					varying highp vec2 xlv_TEXCOORD2;
					varying highp vec2 xlv_TEXCOORD3;
					varying lowp vec4 xlv_TEXCOORD4;
					varying highp vec2 xlv_TEXCOORD5;
					varying highp float xlv_TEXCOORD6;
					void main ()
					{
					  highp vec4 tmpvar_1;
					  tmpvar_1 = _glesColor;
					  mediump vec2 worldVertUV_2;
					  lowp vec4 tmpvar_3;
					  highp vec4 tmpvar_4;
					  highp vec4 tmpvar_5;
					  tmpvar_5.w = 1.0;
					  tmpvar_5.xyz = _glesVertex.xyz;
					  tmpvar_4 = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_5));
					  highp vec2 tmpvar_6;
					  tmpvar_6 = (unity_ObjectToWorld * _glesVertex).xz;
					  worldVertUV_2 = tmpvar_6;
					  highp float tmpvar_7;
					  tmpvar_7 = (unity_FogParams.x * tmpvar_4.z);
					  tmpvar_3 = tmpvar_1;
					  gl_Position = tmpvar_4;
					  xlv_TEXCOORD0 = ((worldVertUV_2 * _MainTex_ST.xy) + _MainTex_ST.zw);
					  xlv_TEXCOORD1 = ((worldVertUV_2 * _Texture2_ST.xy) + _Texture2_ST.zw);
					  xlv_TEXCOORD2 = ((_glesMultiTexCoord0.xy * _Texture3_ST.xy) + _Texture3_ST.zw);
					  xlv_TEXCOORD3 = ((_glesMultiTexCoord0.xy * _Texture4_ST.xy) + _Texture4_ST.zw);
					  xlv_TEXCOORD4 = tmpvar_3;
					  xlv_TEXCOORD5 = ((_glesMultiTexCoord1.xy * unity_LightmapST.xy) + unity_LightmapST.zw);
					  xlv_TEXCOORD6 = exp2((-(tmpvar_7) * tmpvar_7));
					}
					
					
					#endif
					#ifdef FRAGMENT
					uniform lowp vec4 unity_FogColor;
					uniform mediump sampler2D unity_Lightmap;
					uniform mediump vec4 unity_Lightmap_HDR;
					uniform sampler2D _MainTex;
					uniform sampler2D _Texture2;
					uniform sampler2D _Texture3;
					uniform sampler2D _Texture4;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp vec2 xlv_TEXCOORD1;
					varying highp vec2 xlv_TEXCOORD2;
					varying highp vec2 xlv_TEXCOORD3;
					varying lowp vec4 xlv_TEXCOORD4;
					varying highp vec2 xlv_TEXCOORD5;
					varying highp float xlv_TEXCOORD6;
					void main ()
					{
					  lowp vec3 lightmap_1;
					  lowp vec4 final_2;
					  lowp vec4 tmpvar_3;
					  tmpvar_3 = mix (mix (mix (texture2D (_MainTex, xlv_TEXCOORD0), texture2D (_Texture2, xlv_TEXCOORD1), xlv_TEXCOORD4.xxxx), texture2D (_Texture3, xlv_TEXCOORD2), xlv_TEXCOORD4.yyyy), texture2D (_Texture4, xlv_TEXCOORD3), xlv_TEXCOORD4.zzzz);
					  final_2.w = tmpvar_3.w;
					  mediump vec4 tmpvar_4;
					  tmpvar_4 = texture2D (unity_Lightmap, xlv_TEXCOORD5);
					  lowp vec4 color_5;
					  color_5 = tmpvar_4;
					  mediump vec3 tmpvar_6;
					  tmpvar_6 = (unity_Lightmap_HDR.x * color_5.xyz);
					  lightmap_1 = tmpvar_6;
					  final_2.xyz = (tmpvar_3.xyz * lightmap_1);
					  highp float tmpvar_7;
					  tmpvar_7 = clamp (xlv_TEXCOORD6, 0.0, 1.0);
					  final_2.xyz = mix (unity_FogColor.xyz, final_2.xyz, vec3(tmpvar_7));
					  gl_FragData[0] = final_2;
					}
					
					
					#endif"
				}
				SubProgram "gles hw_tier01 " {
					Keywords { "LIGHTMAP_ON" "FOG_EXP2" }
					"!!GLES
					#version 100
					
					#ifdef VERTEX
					attribute vec4 _glesVertex;
					attribute vec4 _glesColor;
					attribute vec4 _glesMultiTexCoord0;
					attribute vec4 _glesMultiTexCoord1;
					uniform highp mat4 unity_ObjectToWorld;
					uniform highp mat4 unity_MatrixVP;
					uniform highp vec4 unity_FogParams;
					uniform highp vec4 unity_LightmapST;
					uniform highp vec4 _MainTex_ST;
					uniform highp vec4 _Texture2_ST;
					uniform highp vec4 _Texture3_ST;
					uniform highp vec4 _Texture4_ST;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp vec2 xlv_TEXCOORD1;
					varying highp vec2 xlv_TEXCOORD2;
					varying highp vec2 xlv_TEXCOORD3;
					varying lowp vec4 xlv_TEXCOORD4;
					varying highp vec2 xlv_TEXCOORD5;
					varying highp float xlv_TEXCOORD6;
					void main ()
					{
					  highp vec4 tmpvar_1;
					  tmpvar_1 = _glesColor;
					  mediump vec2 worldVertUV_2;
					  lowp vec4 tmpvar_3;
					  highp vec4 tmpvar_4;
					  highp vec4 tmpvar_5;
					  tmpvar_5.w = 1.0;
					  tmpvar_5.xyz = _glesVertex.xyz;
					  tmpvar_4 = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_5));
					  highp vec2 tmpvar_6;
					  tmpvar_6 = (unity_ObjectToWorld * _glesVertex).xz;
					  worldVertUV_2 = tmpvar_6;
					  highp float tmpvar_7;
					  tmpvar_7 = (unity_FogParams.x * tmpvar_4.z);
					  tmpvar_3 = tmpvar_1;
					  gl_Position = tmpvar_4;
					  xlv_TEXCOORD0 = ((worldVertUV_2 * _MainTex_ST.xy) + _MainTex_ST.zw);
					  xlv_TEXCOORD1 = ((worldVertUV_2 * _Texture2_ST.xy) + _Texture2_ST.zw);
					  xlv_TEXCOORD2 = ((_glesMultiTexCoord0.xy * _Texture3_ST.xy) + _Texture3_ST.zw);
					  xlv_TEXCOORD3 = ((_glesMultiTexCoord0.xy * _Texture4_ST.xy) + _Texture4_ST.zw);
					  xlv_TEXCOORD4 = tmpvar_3;
					  xlv_TEXCOORD5 = ((_glesMultiTexCoord1.xy * unity_LightmapST.xy) + unity_LightmapST.zw);
					  xlv_TEXCOORD6 = exp2((-(tmpvar_7) * tmpvar_7));
					}
					
					
					#endif
					#ifdef FRAGMENT
					uniform lowp vec4 unity_FogColor;
					uniform mediump sampler2D unity_Lightmap;
					uniform mediump vec4 unity_Lightmap_HDR;
					uniform sampler2D _MainTex;
					uniform sampler2D _Texture2;
					uniform sampler2D _Texture3;
					uniform sampler2D _Texture4;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp vec2 xlv_TEXCOORD1;
					varying highp vec2 xlv_TEXCOORD2;
					varying highp vec2 xlv_TEXCOORD3;
					varying lowp vec4 xlv_TEXCOORD4;
					varying highp vec2 xlv_TEXCOORD5;
					varying highp float xlv_TEXCOORD6;
					void main ()
					{
					  lowp vec3 lightmap_1;
					  lowp vec4 final_2;
					  lowp vec4 tmpvar_3;
					  tmpvar_3 = mix (mix (mix (texture2D (_MainTex, xlv_TEXCOORD0), texture2D (_Texture2, xlv_TEXCOORD1), xlv_TEXCOORD4.xxxx), texture2D (_Texture3, xlv_TEXCOORD2), xlv_TEXCOORD4.yyyy), texture2D (_Texture4, xlv_TEXCOORD3), xlv_TEXCOORD4.zzzz);
					  final_2.w = tmpvar_3.w;
					  mediump vec4 tmpvar_4;
					  tmpvar_4 = texture2D (unity_Lightmap, xlv_TEXCOORD5);
					  lowp vec4 color_5;
					  color_5 = tmpvar_4;
					  mediump vec3 tmpvar_6;
					  tmpvar_6 = (unity_Lightmap_HDR.x * color_5.xyz);
					  lightmap_1 = tmpvar_6;
					  final_2.xyz = (tmpvar_3.xyz * lightmap_1);
					  highp float tmpvar_7;
					  tmpvar_7 = clamp (xlv_TEXCOORD6, 0.0, 1.0);
					  final_2.xyz = mix (unity_FogColor.xyz, final_2.xyz, vec3(tmpvar_7));
					  gl_FragData[0] = final_2;
					}
					
					
					#endif"
				}
				SubProgram "gles hw_tier02 " {
					Keywords { "LIGHTMAP_ON" "FOG_EXP2" }
					"!!GLES
					#version 100
					
					#ifdef VERTEX
					attribute vec4 _glesVertex;
					attribute vec4 _glesColor;
					attribute vec4 _glesMultiTexCoord0;
					attribute vec4 _glesMultiTexCoord1;
					uniform highp mat4 unity_ObjectToWorld;
					uniform highp mat4 unity_MatrixVP;
					uniform highp vec4 unity_FogParams;
					uniform highp vec4 unity_LightmapST;
					uniform highp vec4 _MainTex_ST;
					uniform highp vec4 _Texture2_ST;
					uniform highp vec4 _Texture3_ST;
					uniform highp vec4 _Texture4_ST;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp vec2 xlv_TEXCOORD1;
					varying highp vec2 xlv_TEXCOORD2;
					varying highp vec2 xlv_TEXCOORD3;
					varying lowp vec4 xlv_TEXCOORD4;
					varying highp vec2 xlv_TEXCOORD5;
					varying highp float xlv_TEXCOORD6;
					void main ()
					{
					  highp vec4 tmpvar_1;
					  tmpvar_1 = _glesColor;
					  mediump vec2 worldVertUV_2;
					  lowp vec4 tmpvar_3;
					  highp vec4 tmpvar_4;
					  highp vec4 tmpvar_5;
					  tmpvar_5.w = 1.0;
					  tmpvar_5.xyz = _glesVertex.xyz;
					  tmpvar_4 = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_5));
					  highp vec2 tmpvar_6;
					  tmpvar_6 = (unity_ObjectToWorld * _glesVertex).xz;
					  worldVertUV_2 = tmpvar_6;
					  highp float tmpvar_7;
					  tmpvar_7 = (unity_FogParams.x * tmpvar_4.z);
					  tmpvar_3 = tmpvar_1;
					  gl_Position = tmpvar_4;
					  xlv_TEXCOORD0 = ((worldVertUV_2 * _MainTex_ST.xy) + _MainTex_ST.zw);
					  xlv_TEXCOORD1 = ((worldVertUV_2 * _Texture2_ST.xy) + _Texture2_ST.zw);
					  xlv_TEXCOORD2 = ((_glesMultiTexCoord0.xy * _Texture3_ST.xy) + _Texture3_ST.zw);
					  xlv_TEXCOORD3 = ((_glesMultiTexCoord0.xy * _Texture4_ST.xy) + _Texture4_ST.zw);
					  xlv_TEXCOORD4 = tmpvar_3;
					  xlv_TEXCOORD5 = ((_glesMultiTexCoord1.xy * unity_LightmapST.xy) + unity_LightmapST.zw);
					  xlv_TEXCOORD6 = exp2((-(tmpvar_7) * tmpvar_7));
					}
					
					
					#endif
					#ifdef FRAGMENT
					uniform lowp vec4 unity_FogColor;
					uniform mediump sampler2D unity_Lightmap;
					uniform mediump vec4 unity_Lightmap_HDR;
					uniform sampler2D _MainTex;
					uniform sampler2D _Texture2;
					uniform sampler2D _Texture3;
					uniform sampler2D _Texture4;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp vec2 xlv_TEXCOORD1;
					varying highp vec2 xlv_TEXCOORD2;
					varying highp vec2 xlv_TEXCOORD3;
					varying lowp vec4 xlv_TEXCOORD4;
					varying highp vec2 xlv_TEXCOORD5;
					varying highp float xlv_TEXCOORD6;
					void main ()
					{
					  lowp vec3 lightmap_1;
					  lowp vec4 final_2;
					  lowp vec4 tmpvar_3;
					  tmpvar_3 = mix (mix (mix (texture2D (_MainTex, xlv_TEXCOORD0), texture2D (_Texture2, xlv_TEXCOORD1), xlv_TEXCOORD4.xxxx), texture2D (_Texture3, xlv_TEXCOORD2), xlv_TEXCOORD4.yyyy), texture2D (_Texture4, xlv_TEXCOORD3), xlv_TEXCOORD4.zzzz);
					  final_2.w = tmpvar_3.w;
					  mediump vec4 tmpvar_4;
					  tmpvar_4 = texture2D (unity_Lightmap, xlv_TEXCOORD5);
					  lowp vec4 color_5;
					  color_5 = tmpvar_4;
					  mediump vec3 tmpvar_6;
					  tmpvar_6 = (unity_Lightmap_HDR.x * color_5.xyz);
					  lightmap_1 = tmpvar_6;
					  final_2.xyz = (tmpvar_3.xyz * lightmap_1);
					  highp float tmpvar_7;
					  tmpvar_7 = clamp (xlv_TEXCOORD6, 0.0, 1.0);
					  final_2.xyz = mix (unity_FogColor.xyz, final_2.xyz, vec3(tmpvar_7));
					  gl_FragData[0] = final_2;
					}
					
					
					#endif"
				}
			}
			Program "fp" {
				SubProgram "gles hw_tier00 " {
					"!!GLES"
				}
				SubProgram "gles hw_tier01 " {
					"!!GLES"
				}
				SubProgram "gles hw_tier02 " {
					"!!GLES"
				}
				SubProgram "gles hw_tier00 " {
					Keywords { "FOG_LINEAR" }
					"!!GLES"
				}
				SubProgram "gles hw_tier01 " {
					Keywords { "FOG_LINEAR" }
					"!!GLES"
				}
				SubProgram "gles hw_tier02 " {
					Keywords { "FOG_LINEAR" }
					"!!GLES"
				}
				SubProgram "gles hw_tier00 " {
					Keywords { "FOG_EXP" }
					"!!GLES"
				}
				SubProgram "gles hw_tier01 " {
					Keywords { "FOG_EXP" }
					"!!GLES"
				}
				SubProgram "gles hw_tier02 " {
					Keywords { "FOG_EXP" }
					"!!GLES"
				}
				SubProgram "gles hw_tier00 " {
					Keywords { "FOG_EXP2" }
					"!!GLES"
				}
				SubProgram "gles hw_tier01 " {
					Keywords { "FOG_EXP2" }
					"!!GLES"
				}
				SubProgram "gles hw_tier02 " {
					Keywords { "FOG_EXP2" }
					"!!GLES"
				}
				SubProgram "gles hw_tier00 " {
					Keywords { "LIGHTMAP_ON" }
					"!!GLES"
				}
				SubProgram "gles hw_tier01 " {
					Keywords { "LIGHTMAP_ON" }
					"!!GLES"
				}
				SubProgram "gles hw_tier02 " {
					Keywords { "LIGHTMAP_ON" }
					"!!GLES"
				}
				SubProgram "gles hw_tier00 " {
					Keywords { "LIGHTMAP_ON" "FOG_LINEAR" }
					"!!GLES"
				}
				SubProgram "gles hw_tier01 " {
					Keywords { "LIGHTMAP_ON" "FOG_LINEAR" }
					"!!GLES"
				}
				SubProgram "gles hw_tier02 " {
					Keywords { "LIGHTMAP_ON" "FOG_LINEAR" }
					"!!GLES"
				}
				SubProgram "gles hw_tier00 " {
					Keywords { "LIGHTMAP_ON" "FOG_EXP" }
					"!!GLES"
				}
				SubProgram "gles hw_tier01 " {
					Keywords { "LIGHTMAP_ON" "FOG_EXP" }
					"!!GLES"
				}
				SubProgram "gles hw_tier02 " {
					Keywords { "LIGHTMAP_ON" "FOG_EXP" }
					"!!GLES"
				}
				SubProgram "gles hw_tier00 " {
					Keywords { "LIGHTMAP_ON" "FOG_EXP2" }
					"!!GLES"
				}
				SubProgram "gles hw_tier01 " {
					Keywords { "LIGHTMAP_ON" "FOG_EXP2" }
					"!!GLES"
				}
				SubProgram "gles hw_tier02 " {
					Keywords { "LIGHTMAP_ON" "FOG_EXP2" }
					"!!GLES"
				}
			}
		}
		Pass {
			Name "META"
			Tags { "LIGHTMODE" = "META" "RenderType" = "Opaque" }
			Cull Off
			GpuProgramID 114803
			Program "vp" {
				SubProgram "gles hw_tier00 " {
					"!!GLES
					#version 100
					
					#ifdef VERTEX
					attribute vec4 _glesVertex;
					attribute vec4 _glesColor;
					attribute vec4 _glesMultiTexCoord0;
					attribute vec4 _glesMultiTexCoord1;
					attribute vec4 _glesMultiTexCoord2;
					uniform highp mat4 unity_ObjectToWorld;
					uniform highp mat4 unity_MatrixVP;
					uniform highp vec4 unity_LightmapST;
					uniform highp vec4 unity_DynamicLightmapST;
					uniform bvec4 unity_MetaVertexControl;
					uniform highp vec4 _MainTex_ST;
					uniform highp vec4 _Texture2_ST;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp vec2 xlv_TEXCOORD1;
					varying highp vec2 xlv_TEXCOORD2;
					varying highp vec2 xlv_TEXCOORD3;
					varying mediump vec4 xlv_COLOR0;
					void main ()
					{
					  highp vec4 tmpvar_1;
					  tmpvar_1 = _glesColor;
					  mediump vec4 tmpvar_2;
					  highp vec4 vertex_3;
					  vertex_3 = _glesVertex;
					  if (unity_MetaVertexControl.x) {
					    vertex_3.xy = ((_glesMultiTexCoord1.xy * unity_LightmapST.xy) + unity_LightmapST.zw);
					    highp float tmpvar_4;
					    if ((_glesVertex.z > 0.0)) {
					      tmpvar_4 = 0.0001;
					    } else {
					      tmpvar_4 = 0.0;
					    };
					    vertex_3.z = tmpvar_4;
					  };
					  if (unity_MetaVertexControl.y) {
					    vertex_3.xy = ((_glesMultiTexCoord2.xy * unity_DynamicLightmapST.xy) + unity_DynamicLightmapST.zw);
					    highp float tmpvar_5;
					    if ((vertex_3.z > 0.0)) {
					      tmpvar_5 = 0.0001;
					    } else {
					      tmpvar_5 = 0.0;
					    };
					    vertex_3.z = tmpvar_5;
					  };
					  highp vec4 tmpvar_6;
					  tmpvar_6.w = 1.0;
					  tmpvar_6.xyz = vertex_3.xyz;
					  tmpvar_2 = tmpvar_1;
					  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_6));
					  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
					  xlv_TEXCOORD1 = ((_glesMultiTexCoord0.xy * _Texture2_ST.xy) + _Texture2_ST.zw);
					  xlv_TEXCOORD2 = vec2(0.0, 0.0);
					  xlv_TEXCOORD3 = vec2(0.0, 0.0);
					  xlv_COLOR0 = tmpvar_2;
					}
					
					
					#endif
					#ifdef FRAGMENT
					uniform bvec4 unity_MetaFragmentControl;
					uniform highp float unity_OneOverOutputBoost;
					uniform highp float unity_MaxOutputValue;
					uniform highp float unity_UseLinearSpace;
					uniform sampler2D _MainTex;
					uniform sampler2D _Texture2;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp vec2 xlv_TEXCOORD1;
					varying mediump vec4 xlv_COLOR0;
					void main ()
					{
					  lowp vec4 col_1;
					  mediump vec3 tmpvar_2;
					  mediump vec3 tmpvar_3;
					  lowp vec4 tmpvar_4;
					  tmpvar_4 = texture2D (_MainTex, xlv_TEXCOORD0);
					  lowp vec4 tmpvar_5;
					  tmpvar_5 = texture2D (_Texture2, xlv_TEXCOORD1);
					  mediump vec4 tmpvar_6;
					  tmpvar_6.w = 1.0;
					  tmpvar_6.xyz = mix (tmpvar_5.xyz, tmpvar_4.xyz, xlv_COLOR0.www);
					  col_1 = tmpvar_6;
					  tmpvar_2 = col_1.xyz;
					  mediump vec4 res_7;
					  res_7 = vec4(0.0, 0.0, 0.0, 0.0);
					  if (unity_MetaFragmentControl.x) {
					    mediump vec4 tmpvar_8;
					    tmpvar_8.w = 1.0;
					    tmpvar_8.xyz = tmpvar_2;
					    res_7.w = tmpvar_8.w;
					    highp vec3 tmpvar_9;
					    tmpvar_9 = clamp (pow (tmpvar_2, vec3(clamp (unity_OneOverOutputBoost, 0.0, 1.0))), vec3(0.0, 0.0, 0.0), vec3(unity_MaxOutputValue));
					    res_7.xyz = tmpvar_9;
					  };
					  if (unity_MetaFragmentControl.y) {
					    mediump vec3 emission_10;
					    if (bool(unity_UseLinearSpace)) {
					      emission_10 = tmpvar_3;
					    } else {
					      emission_10 = (tmpvar_3 * ((tmpvar_3 * 
					        ((tmpvar_3 * 0.305306) + 0.6821711)
					      ) + 0.01252288));
					    };
					    mediump vec4 tmpvar_11;
					    tmpvar_11.w = 1.0;
					    tmpvar_11.xyz = emission_10;
					    res_7 = tmpvar_11;
					  };
					  gl_FragData[0] = res_7;
					}
					
					
					#endif"
				}
				SubProgram "gles hw_tier01 " {
					"!!GLES
					#version 100
					
					#ifdef VERTEX
					attribute vec4 _glesVertex;
					attribute vec4 _glesColor;
					attribute vec4 _glesMultiTexCoord0;
					attribute vec4 _glesMultiTexCoord1;
					attribute vec4 _glesMultiTexCoord2;
					uniform highp mat4 unity_ObjectToWorld;
					uniform highp mat4 unity_MatrixVP;
					uniform highp vec4 unity_LightmapST;
					uniform highp vec4 unity_DynamicLightmapST;
					uniform bvec4 unity_MetaVertexControl;
					uniform highp vec4 _MainTex_ST;
					uniform highp vec4 _Texture2_ST;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp vec2 xlv_TEXCOORD1;
					varying highp vec2 xlv_TEXCOORD2;
					varying highp vec2 xlv_TEXCOORD3;
					varying mediump vec4 xlv_COLOR0;
					void main ()
					{
					  highp vec4 tmpvar_1;
					  tmpvar_1 = _glesColor;
					  mediump vec4 tmpvar_2;
					  highp vec4 vertex_3;
					  vertex_3 = _glesVertex;
					  if (unity_MetaVertexControl.x) {
					    vertex_3.xy = ((_glesMultiTexCoord1.xy * unity_LightmapST.xy) + unity_LightmapST.zw);
					    highp float tmpvar_4;
					    if ((_glesVertex.z > 0.0)) {
					      tmpvar_4 = 0.0001;
					    } else {
					      tmpvar_4 = 0.0;
					    };
					    vertex_3.z = tmpvar_4;
					  };
					  if (unity_MetaVertexControl.y) {
					    vertex_3.xy = ((_glesMultiTexCoord2.xy * unity_DynamicLightmapST.xy) + unity_DynamicLightmapST.zw);
					    highp float tmpvar_5;
					    if ((vertex_3.z > 0.0)) {
					      tmpvar_5 = 0.0001;
					    } else {
					      tmpvar_5 = 0.0;
					    };
					    vertex_3.z = tmpvar_5;
					  };
					  highp vec4 tmpvar_6;
					  tmpvar_6.w = 1.0;
					  tmpvar_6.xyz = vertex_3.xyz;
					  tmpvar_2 = tmpvar_1;
					  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_6));
					  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
					  xlv_TEXCOORD1 = ((_glesMultiTexCoord0.xy * _Texture2_ST.xy) + _Texture2_ST.zw);
					  xlv_TEXCOORD2 = vec2(0.0, 0.0);
					  xlv_TEXCOORD3 = vec2(0.0, 0.0);
					  xlv_COLOR0 = tmpvar_2;
					}
					
					
					#endif
					#ifdef FRAGMENT
					uniform bvec4 unity_MetaFragmentControl;
					uniform highp float unity_OneOverOutputBoost;
					uniform highp float unity_MaxOutputValue;
					uniform highp float unity_UseLinearSpace;
					uniform sampler2D _MainTex;
					uniform sampler2D _Texture2;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp vec2 xlv_TEXCOORD1;
					varying mediump vec4 xlv_COLOR0;
					void main ()
					{
					  lowp vec4 col_1;
					  mediump vec3 tmpvar_2;
					  mediump vec3 tmpvar_3;
					  lowp vec4 tmpvar_4;
					  tmpvar_4 = texture2D (_MainTex, xlv_TEXCOORD0);
					  lowp vec4 tmpvar_5;
					  tmpvar_5 = texture2D (_Texture2, xlv_TEXCOORD1);
					  mediump vec4 tmpvar_6;
					  tmpvar_6.w = 1.0;
					  tmpvar_6.xyz = mix (tmpvar_5.xyz, tmpvar_4.xyz, xlv_COLOR0.www);
					  col_1 = tmpvar_6;
					  tmpvar_2 = col_1.xyz;
					  mediump vec4 res_7;
					  res_7 = vec4(0.0, 0.0, 0.0, 0.0);
					  if (unity_MetaFragmentControl.x) {
					    mediump vec4 tmpvar_8;
					    tmpvar_8.w = 1.0;
					    tmpvar_8.xyz = tmpvar_2;
					    res_7.w = tmpvar_8.w;
					    highp vec3 tmpvar_9;
					    tmpvar_9 = clamp (pow (tmpvar_2, vec3(clamp (unity_OneOverOutputBoost, 0.0, 1.0))), vec3(0.0, 0.0, 0.0), vec3(unity_MaxOutputValue));
					    res_7.xyz = tmpvar_9;
					  };
					  if (unity_MetaFragmentControl.y) {
					    mediump vec3 emission_10;
					    if (bool(unity_UseLinearSpace)) {
					      emission_10 = tmpvar_3;
					    } else {
					      emission_10 = (tmpvar_3 * ((tmpvar_3 * 
					        ((tmpvar_3 * 0.305306) + 0.6821711)
					      ) + 0.01252288));
					    };
					    mediump vec4 tmpvar_11;
					    tmpvar_11.w = 1.0;
					    tmpvar_11.xyz = emission_10;
					    res_7 = tmpvar_11;
					  };
					  gl_FragData[0] = res_7;
					}
					
					
					#endif"
				}
				SubProgram "gles hw_tier02 " {
					"!!GLES
					#version 100
					
					#ifdef VERTEX
					attribute vec4 _glesVertex;
					attribute vec4 _glesColor;
					attribute vec4 _glesMultiTexCoord0;
					attribute vec4 _glesMultiTexCoord1;
					attribute vec4 _glesMultiTexCoord2;
					uniform highp mat4 unity_ObjectToWorld;
					uniform highp mat4 unity_MatrixVP;
					uniform highp vec4 unity_LightmapST;
					uniform highp vec4 unity_DynamicLightmapST;
					uniform bvec4 unity_MetaVertexControl;
					uniform highp vec4 _MainTex_ST;
					uniform highp vec4 _Texture2_ST;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp vec2 xlv_TEXCOORD1;
					varying highp vec2 xlv_TEXCOORD2;
					varying highp vec2 xlv_TEXCOORD3;
					varying mediump vec4 xlv_COLOR0;
					void main ()
					{
					  highp vec4 tmpvar_1;
					  tmpvar_1 = _glesColor;
					  mediump vec4 tmpvar_2;
					  highp vec4 vertex_3;
					  vertex_3 = _glesVertex;
					  if (unity_MetaVertexControl.x) {
					    vertex_3.xy = ((_glesMultiTexCoord1.xy * unity_LightmapST.xy) + unity_LightmapST.zw);
					    highp float tmpvar_4;
					    if ((_glesVertex.z > 0.0)) {
					      tmpvar_4 = 0.0001;
					    } else {
					      tmpvar_4 = 0.0;
					    };
					    vertex_3.z = tmpvar_4;
					  };
					  if (unity_MetaVertexControl.y) {
					    vertex_3.xy = ((_glesMultiTexCoord2.xy * unity_DynamicLightmapST.xy) + unity_DynamicLightmapST.zw);
					    highp float tmpvar_5;
					    if ((vertex_3.z > 0.0)) {
					      tmpvar_5 = 0.0001;
					    } else {
					      tmpvar_5 = 0.0;
					    };
					    vertex_3.z = tmpvar_5;
					  };
					  highp vec4 tmpvar_6;
					  tmpvar_6.w = 1.0;
					  tmpvar_6.xyz = vertex_3.xyz;
					  tmpvar_2 = tmpvar_1;
					  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_6));
					  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
					  xlv_TEXCOORD1 = ((_glesMultiTexCoord0.xy * _Texture2_ST.xy) + _Texture2_ST.zw);
					  xlv_TEXCOORD2 = vec2(0.0, 0.0);
					  xlv_TEXCOORD3 = vec2(0.0, 0.0);
					  xlv_COLOR0 = tmpvar_2;
					}
					
					
					#endif
					#ifdef FRAGMENT
					uniform bvec4 unity_MetaFragmentControl;
					uniform highp float unity_OneOverOutputBoost;
					uniform highp float unity_MaxOutputValue;
					uniform highp float unity_UseLinearSpace;
					uniform sampler2D _MainTex;
					uniform sampler2D _Texture2;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp vec2 xlv_TEXCOORD1;
					varying mediump vec4 xlv_COLOR0;
					void main ()
					{
					  lowp vec4 col_1;
					  mediump vec3 tmpvar_2;
					  mediump vec3 tmpvar_3;
					  lowp vec4 tmpvar_4;
					  tmpvar_4 = texture2D (_MainTex, xlv_TEXCOORD0);
					  lowp vec4 tmpvar_5;
					  tmpvar_5 = texture2D (_Texture2, xlv_TEXCOORD1);
					  mediump vec4 tmpvar_6;
					  tmpvar_6.w = 1.0;
					  tmpvar_6.xyz = mix (tmpvar_5.xyz, tmpvar_4.xyz, xlv_COLOR0.www);
					  col_1 = tmpvar_6;
					  tmpvar_2 = col_1.xyz;
					  mediump vec4 res_7;
					  res_7 = vec4(0.0, 0.0, 0.0, 0.0);
					  if (unity_MetaFragmentControl.x) {
					    mediump vec4 tmpvar_8;
					    tmpvar_8.w = 1.0;
					    tmpvar_8.xyz = tmpvar_2;
					    res_7.w = tmpvar_8.w;
					    highp vec3 tmpvar_9;
					    tmpvar_9 = clamp (pow (tmpvar_2, vec3(clamp (unity_OneOverOutputBoost, 0.0, 1.0))), vec3(0.0, 0.0, 0.0), vec3(unity_MaxOutputValue));
					    res_7.xyz = tmpvar_9;
					  };
					  if (unity_MetaFragmentControl.y) {
					    mediump vec3 emission_10;
					    if (bool(unity_UseLinearSpace)) {
					      emission_10 = tmpvar_3;
					    } else {
					      emission_10 = (tmpvar_3 * ((tmpvar_3 * 
					        ((tmpvar_3 * 0.305306) + 0.6821711)
					      ) + 0.01252288));
					    };
					    mediump vec4 tmpvar_11;
					    tmpvar_11.w = 1.0;
					    tmpvar_11.xyz = emission_10;
					    res_7 = tmpvar_11;
					  };
					  gl_FragData[0] = res_7;
					}
					
					
					#endif"
				}
			}
			Program "fp" {
				SubProgram "gles hw_tier00 " {
					"!!GLES"
				}
				SubProgram "gles hw_tier01 " {
					"!!GLES"
				}
				SubProgram "gles hw_tier02 " {
					"!!GLES"
				}
			}
		}
	}
	Fallback "LKWD/Opaque/Diffuse"
}