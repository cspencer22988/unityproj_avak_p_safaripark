Shader "LKWD/Opaque/Diffuse Masked Brighten" {
	Properties {
		[HDR] _BaseColor ("Base color", Vector) = (1,1,1,1)
		_MainTex ("Base (RGB)", 2D) = "white" {}
	}
	SubShader {
		Pass {
			GpuProgramID 971
			Program "vp" {
				SubProgram "gles hw_tier00 " {
					"!!GLES
					#version 100
					
					#ifdef VERTEX
					attribute vec4 _glesVertex;
					attribute vec4 _glesMultiTexCoord0;
					uniform highp mat4 unity_ObjectToWorld;
					uniform highp mat4 unity_MatrixVP;
					uniform highp vec4 _MainTex_ST;
					varying highp vec2 xlv_TEXCOORD0;
					void main ()
					{
					  highp vec4 tmpvar_1;
					  tmpvar_1.w = 1.0;
					  tmpvar_1.xyz = _glesVertex.xyz;
					  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_1));
					  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
					}
					
					
					#endif
					#ifdef FRAGMENT
					uniform sampler2D _MainTex;
					uniform lowp vec4 _BaseColor;
					varying highp vec2 xlv_TEXCOORD0;
					void main ()
					{
					  lowp vec4 tmpvar_1;
					  tmpvar_1 = (texture2D (_MainTex, xlv_TEXCOORD0) * _BaseColor);
					  gl_FragData[0] = tmpvar_1;
					}
					
					
					#endif"
				}
				SubProgram "gles hw_tier01 " {
					"!!GLES
					#version 100
					
					#ifdef VERTEX
					attribute vec4 _glesVertex;
					attribute vec4 _glesMultiTexCoord0;
					uniform highp mat4 unity_ObjectToWorld;
					uniform highp mat4 unity_MatrixVP;
					uniform highp vec4 _MainTex_ST;
					varying highp vec2 xlv_TEXCOORD0;
					void main ()
					{
					  highp vec4 tmpvar_1;
					  tmpvar_1.w = 1.0;
					  tmpvar_1.xyz = _glesVertex.xyz;
					  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_1));
					  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
					}
					
					
					#endif
					#ifdef FRAGMENT
					uniform sampler2D _MainTex;
					uniform lowp vec4 _BaseColor;
					varying highp vec2 xlv_TEXCOORD0;
					void main ()
					{
					  lowp vec4 tmpvar_1;
					  tmpvar_1 = (texture2D (_MainTex, xlv_TEXCOORD0) * _BaseColor);
					  gl_FragData[0] = tmpvar_1;
					}
					
					
					#endif"
				}
				SubProgram "gles hw_tier02 " {
					"!!GLES
					#version 100
					
					#ifdef VERTEX
					attribute vec4 _glesVertex;
					attribute vec4 _glesMultiTexCoord0;
					uniform highp mat4 unity_ObjectToWorld;
					uniform highp mat4 unity_MatrixVP;
					uniform highp vec4 _MainTex_ST;
					varying highp vec2 xlv_TEXCOORD0;
					void main ()
					{
					  highp vec4 tmpvar_1;
					  tmpvar_1.w = 1.0;
					  tmpvar_1.xyz = _glesVertex.xyz;
					  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_1));
					  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
					}
					
					
					#endif
					#ifdef FRAGMENT
					uniform sampler2D _MainTex;
					uniform lowp vec4 _BaseColor;
					varying highp vec2 xlv_TEXCOORD0;
					void main ()
					{
					  lowp vec4 tmpvar_1;
					  tmpvar_1 = (texture2D (_MainTex, xlv_TEXCOORD0) * _BaseColor);
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
					attribute vec4 _glesMultiTexCoord0;
					uniform highp mat4 unity_ObjectToWorld;
					uniform highp mat4 unity_MatrixVP;
					uniform highp vec4 unity_FogParams;
					uniform highp vec4 _MainTex_ST;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp float xlv_TEXCOORD1;
					void main ()
					{
					  highp vec4 tmpvar_1;
					  highp vec4 tmpvar_2;
					  tmpvar_2.w = 1.0;
					  tmpvar_2.xyz = _glesVertex.xyz;
					  tmpvar_1 = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_2));
					  gl_Position = tmpvar_1;
					  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
					  xlv_TEXCOORD1 = ((tmpvar_1.z * unity_FogParams.z) + unity_FogParams.w);
					}
					
					
					#endif
					#ifdef FRAGMENT
					uniform lowp vec4 unity_FogColor;
					uniform sampler2D _MainTex;
					uniform lowp vec4 _BaseColor;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp float xlv_TEXCOORD1;
					void main ()
					{
					  lowp vec4 final_1;
					  final_1 = (texture2D (_MainTex, xlv_TEXCOORD0) * _BaseColor);
					  highp float tmpvar_2;
					  tmpvar_2 = clamp (xlv_TEXCOORD1, 0.0, 1.0);
					  final_1.xyz = mix (unity_FogColor.xyz, final_1.xyz, vec3(tmpvar_2));
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
					attribute vec4 _glesMultiTexCoord0;
					uniform highp mat4 unity_ObjectToWorld;
					uniform highp mat4 unity_MatrixVP;
					uniform highp vec4 unity_FogParams;
					uniform highp vec4 _MainTex_ST;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp float xlv_TEXCOORD1;
					void main ()
					{
					  highp vec4 tmpvar_1;
					  highp vec4 tmpvar_2;
					  tmpvar_2.w = 1.0;
					  tmpvar_2.xyz = _glesVertex.xyz;
					  tmpvar_1 = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_2));
					  gl_Position = tmpvar_1;
					  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
					  xlv_TEXCOORD1 = ((tmpvar_1.z * unity_FogParams.z) + unity_FogParams.w);
					}
					
					
					#endif
					#ifdef FRAGMENT
					uniform lowp vec4 unity_FogColor;
					uniform sampler2D _MainTex;
					uniform lowp vec4 _BaseColor;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp float xlv_TEXCOORD1;
					void main ()
					{
					  lowp vec4 final_1;
					  final_1 = (texture2D (_MainTex, xlv_TEXCOORD0) * _BaseColor);
					  highp float tmpvar_2;
					  tmpvar_2 = clamp (xlv_TEXCOORD1, 0.0, 1.0);
					  final_1.xyz = mix (unity_FogColor.xyz, final_1.xyz, vec3(tmpvar_2));
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
					attribute vec4 _glesMultiTexCoord0;
					uniform highp mat4 unity_ObjectToWorld;
					uniform highp mat4 unity_MatrixVP;
					uniform highp vec4 unity_FogParams;
					uniform highp vec4 _MainTex_ST;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp float xlv_TEXCOORD1;
					void main ()
					{
					  highp vec4 tmpvar_1;
					  highp vec4 tmpvar_2;
					  tmpvar_2.w = 1.0;
					  tmpvar_2.xyz = _glesVertex.xyz;
					  tmpvar_1 = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_2));
					  gl_Position = tmpvar_1;
					  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
					  xlv_TEXCOORD1 = ((tmpvar_1.z * unity_FogParams.z) + unity_FogParams.w);
					}
					
					
					#endif
					#ifdef FRAGMENT
					uniform lowp vec4 unity_FogColor;
					uniform sampler2D _MainTex;
					uniform lowp vec4 _BaseColor;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp float xlv_TEXCOORD1;
					void main ()
					{
					  lowp vec4 final_1;
					  final_1 = (texture2D (_MainTex, xlv_TEXCOORD0) * _BaseColor);
					  highp float tmpvar_2;
					  tmpvar_2 = clamp (xlv_TEXCOORD1, 0.0, 1.0);
					  final_1.xyz = mix (unity_FogColor.xyz, final_1.xyz, vec3(tmpvar_2));
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
					attribute vec4 _glesMultiTexCoord0;
					uniform highp mat4 unity_ObjectToWorld;
					uniform highp mat4 unity_MatrixVP;
					uniform highp vec4 unity_FogParams;
					uniform highp vec4 _MainTex_ST;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp float xlv_TEXCOORD1;
					void main ()
					{
					  highp vec4 tmpvar_1;
					  highp vec4 tmpvar_2;
					  tmpvar_2.w = 1.0;
					  tmpvar_2.xyz = _glesVertex.xyz;
					  tmpvar_1 = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_2));
					  gl_Position = tmpvar_1;
					  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
					  xlv_TEXCOORD1 = exp2(-((unity_FogParams.y * tmpvar_1.z)));
					}
					
					
					#endif
					#ifdef FRAGMENT
					uniform lowp vec4 unity_FogColor;
					uniform sampler2D _MainTex;
					uniform lowp vec4 _BaseColor;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp float xlv_TEXCOORD1;
					void main ()
					{
					  lowp vec4 final_1;
					  final_1 = (texture2D (_MainTex, xlv_TEXCOORD0) * _BaseColor);
					  highp float tmpvar_2;
					  tmpvar_2 = clamp (xlv_TEXCOORD1, 0.0, 1.0);
					  final_1.xyz = mix (unity_FogColor.xyz, final_1.xyz, vec3(tmpvar_2));
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
					attribute vec4 _glesMultiTexCoord0;
					uniform highp mat4 unity_ObjectToWorld;
					uniform highp mat4 unity_MatrixVP;
					uniform highp vec4 unity_FogParams;
					uniform highp vec4 _MainTex_ST;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp float xlv_TEXCOORD1;
					void main ()
					{
					  highp vec4 tmpvar_1;
					  highp vec4 tmpvar_2;
					  tmpvar_2.w = 1.0;
					  tmpvar_2.xyz = _glesVertex.xyz;
					  tmpvar_1 = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_2));
					  gl_Position = tmpvar_1;
					  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
					  xlv_TEXCOORD1 = exp2(-((unity_FogParams.y * tmpvar_1.z)));
					}
					
					
					#endif
					#ifdef FRAGMENT
					uniform lowp vec4 unity_FogColor;
					uniform sampler2D _MainTex;
					uniform lowp vec4 _BaseColor;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp float xlv_TEXCOORD1;
					void main ()
					{
					  lowp vec4 final_1;
					  final_1 = (texture2D (_MainTex, xlv_TEXCOORD0) * _BaseColor);
					  highp float tmpvar_2;
					  tmpvar_2 = clamp (xlv_TEXCOORD1, 0.0, 1.0);
					  final_1.xyz = mix (unity_FogColor.xyz, final_1.xyz, vec3(tmpvar_2));
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
					attribute vec4 _glesMultiTexCoord0;
					uniform highp mat4 unity_ObjectToWorld;
					uniform highp mat4 unity_MatrixVP;
					uniform highp vec4 unity_FogParams;
					uniform highp vec4 _MainTex_ST;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp float xlv_TEXCOORD1;
					void main ()
					{
					  highp vec4 tmpvar_1;
					  highp vec4 tmpvar_2;
					  tmpvar_2.w = 1.0;
					  tmpvar_2.xyz = _glesVertex.xyz;
					  tmpvar_1 = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_2));
					  gl_Position = tmpvar_1;
					  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
					  xlv_TEXCOORD1 = exp2(-((unity_FogParams.y * tmpvar_1.z)));
					}
					
					
					#endif
					#ifdef FRAGMENT
					uniform lowp vec4 unity_FogColor;
					uniform sampler2D _MainTex;
					uniform lowp vec4 _BaseColor;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp float xlv_TEXCOORD1;
					void main ()
					{
					  lowp vec4 final_1;
					  final_1 = (texture2D (_MainTex, xlv_TEXCOORD0) * _BaseColor);
					  highp float tmpvar_2;
					  tmpvar_2 = clamp (xlv_TEXCOORD1, 0.0, 1.0);
					  final_1.xyz = mix (unity_FogColor.xyz, final_1.xyz, vec3(tmpvar_2));
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
					attribute vec4 _glesMultiTexCoord0;
					uniform highp mat4 unity_ObjectToWorld;
					uniform highp mat4 unity_MatrixVP;
					uniform highp vec4 unity_FogParams;
					uniform highp vec4 _MainTex_ST;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp float xlv_TEXCOORD1;
					void main ()
					{
					  highp vec4 tmpvar_1;
					  highp vec4 tmpvar_2;
					  tmpvar_2.w = 1.0;
					  tmpvar_2.xyz = _glesVertex.xyz;
					  tmpvar_1 = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_2));
					  highp float tmpvar_3;
					  tmpvar_3 = (unity_FogParams.x * tmpvar_1.z);
					  gl_Position = tmpvar_1;
					  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
					  xlv_TEXCOORD1 = exp2((-(tmpvar_3) * tmpvar_3));
					}
					
					
					#endif
					#ifdef FRAGMENT
					uniform lowp vec4 unity_FogColor;
					uniform sampler2D _MainTex;
					uniform lowp vec4 _BaseColor;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp float xlv_TEXCOORD1;
					void main ()
					{
					  lowp vec4 final_1;
					  final_1 = (texture2D (_MainTex, xlv_TEXCOORD0) * _BaseColor);
					  highp float tmpvar_2;
					  tmpvar_2 = clamp (xlv_TEXCOORD1, 0.0, 1.0);
					  final_1.xyz = mix (unity_FogColor.xyz, final_1.xyz, vec3(tmpvar_2));
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
					attribute vec4 _glesMultiTexCoord0;
					uniform highp mat4 unity_ObjectToWorld;
					uniform highp mat4 unity_MatrixVP;
					uniform highp vec4 unity_FogParams;
					uniform highp vec4 _MainTex_ST;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp float xlv_TEXCOORD1;
					void main ()
					{
					  highp vec4 tmpvar_1;
					  highp vec4 tmpvar_2;
					  tmpvar_2.w = 1.0;
					  tmpvar_2.xyz = _glesVertex.xyz;
					  tmpvar_1 = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_2));
					  highp float tmpvar_3;
					  tmpvar_3 = (unity_FogParams.x * tmpvar_1.z);
					  gl_Position = tmpvar_1;
					  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
					  xlv_TEXCOORD1 = exp2((-(tmpvar_3) * tmpvar_3));
					}
					
					
					#endif
					#ifdef FRAGMENT
					uniform lowp vec4 unity_FogColor;
					uniform sampler2D _MainTex;
					uniform lowp vec4 _BaseColor;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp float xlv_TEXCOORD1;
					void main ()
					{
					  lowp vec4 final_1;
					  final_1 = (texture2D (_MainTex, xlv_TEXCOORD0) * _BaseColor);
					  highp float tmpvar_2;
					  tmpvar_2 = clamp (xlv_TEXCOORD1, 0.0, 1.0);
					  final_1.xyz = mix (unity_FogColor.xyz, final_1.xyz, vec3(tmpvar_2));
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
					attribute vec4 _glesMultiTexCoord0;
					uniform highp mat4 unity_ObjectToWorld;
					uniform highp mat4 unity_MatrixVP;
					uniform highp vec4 unity_FogParams;
					uniform highp vec4 _MainTex_ST;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp float xlv_TEXCOORD1;
					void main ()
					{
					  highp vec4 tmpvar_1;
					  highp vec4 tmpvar_2;
					  tmpvar_2.w = 1.0;
					  tmpvar_2.xyz = _glesVertex.xyz;
					  tmpvar_1 = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_2));
					  highp float tmpvar_3;
					  tmpvar_3 = (unity_FogParams.x * tmpvar_1.z);
					  gl_Position = tmpvar_1;
					  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
					  xlv_TEXCOORD1 = exp2((-(tmpvar_3) * tmpvar_3));
					}
					
					
					#endif
					#ifdef FRAGMENT
					uniform lowp vec4 unity_FogColor;
					uniform sampler2D _MainTex;
					uniform lowp vec4 _BaseColor;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp float xlv_TEXCOORD1;
					void main ()
					{
					  lowp vec4 final_1;
					  final_1 = (texture2D (_MainTex, xlv_TEXCOORD0) * _BaseColor);
					  highp float tmpvar_2;
					  tmpvar_2 = clamp (xlv_TEXCOORD1, 0.0, 1.0);
					  final_1.xyz = mix (unity_FogColor.xyz, final_1.xyz, vec3(tmpvar_2));
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
					attribute vec4 _glesMultiTexCoord0;
					attribute vec4 _glesMultiTexCoord1;
					uniform highp mat4 unity_ObjectToWorld;
					uniform highp mat4 unity_MatrixVP;
					uniform highp vec4 unity_LightmapST;
					uniform highp vec4 _MainTex_ST;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp vec2 xlv_TEXCOORD1;
					void main ()
					{
					  highp vec4 tmpvar_1;
					  tmpvar_1.w = 1.0;
					  tmpvar_1.xyz = _glesVertex.xyz;
					  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_1));
					  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
					  xlv_TEXCOORD1 = ((_glesMultiTexCoord1.xy * unity_LightmapST.xy) + unity_LightmapST.zw);
					}
					
					
					#endif
					#ifdef FRAGMENT
					uniform mediump sampler2D unity_Lightmap;
					uniform mediump vec4 unity_Lightmap_HDR;
					uniform sampler2D _MainTex;
					uniform lowp vec4 _BaseColor;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp vec2 xlv_TEXCOORD1;
					void main ()
					{
					  lowp vec3 lightmap_1;
					  lowp vec4 final_2;
					  final_2 = (texture2D (_MainTex, xlv_TEXCOORD0) * _BaseColor);
					  mediump vec4 tmpvar_3;
					  tmpvar_3 = texture2D (unity_Lightmap, xlv_TEXCOORD1);
					  lowp vec4 color_4;
					  color_4 = tmpvar_3;
					  mediump vec3 tmpvar_5;
					  tmpvar_5 = (unity_Lightmap_HDR.x * color_4.xyz);
					  lightmap_1 = tmpvar_5;
					  final_2.xyz = (final_2.xyz * clamp ((lightmap_1 + final_2.w), 0.0, 1.0));
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
					attribute vec4 _glesMultiTexCoord0;
					attribute vec4 _glesMultiTexCoord1;
					uniform highp mat4 unity_ObjectToWorld;
					uniform highp mat4 unity_MatrixVP;
					uniform highp vec4 unity_LightmapST;
					uniform highp vec4 _MainTex_ST;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp vec2 xlv_TEXCOORD1;
					void main ()
					{
					  highp vec4 tmpvar_1;
					  tmpvar_1.w = 1.0;
					  tmpvar_1.xyz = _glesVertex.xyz;
					  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_1));
					  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
					  xlv_TEXCOORD1 = ((_glesMultiTexCoord1.xy * unity_LightmapST.xy) + unity_LightmapST.zw);
					}
					
					
					#endif
					#ifdef FRAGMENT
					uniform mediump sampler2D unity_Lightmap;
					uniform mediump vec4 unity_Lightmap_HDR;
					uniform sampler2D _MainTex;
					uniform lowp vec4 _BaseColor;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp vec2 xlv_TEXCOORD1;
					void main ()
					{
					  lowp vec3 lightmap_1;
					  lowp vec4 final_2;
					  final_2 = (texture2D (_MainTex, xlv_TEXCOORD0) * _BaseColor);
					  mediump vec4 tmpvar_3;
					  tmpvar_3 = texture2D (unity_Lightmap, xlv_TEXCOORD1);
					  lowp vec4 color_4;
					  color_4 = tmpvar_3;
					  mediump vec3 tmpvar_5;
					  tmpvar_5 = (unity_Lightmap_HDR.x * color_4.xyz);
					  lightmap_1 = tmpvar_5;
					  final_2.xyz = (final_2.xyz * clamp ((lightmap_1 + final_2.w), 0.0, 1.0));
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
					attribute vec4 _glesMultiTexCoord0;
					attribute vec4 _glesMultiTexCoord1;
					uniform highp mat4 unity_ObjectToWorld;
					uniform highp mat4 unity_MatrixVP;
					uniform highp vec4 unity_LightmapST;
					uniform highp vec4 _MainTex_ST;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp vec2 xlv_TEXCOORD1;
					void main ()
					{
					  highp vec4 tmpvar_1;
					  tmpvar_1.w = 1.0;
					  tmpvar_1.xyz = _glesVertex.xyz;
					  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_1));
					  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
					  xlv_TEXCOORD1 = ((_glesMultiTexCoord1.xy * unity_LightmapST.xy) + unity_LightmapST.zw);
					}
					
					
					#endif
					#ifdef FRAGMENT
					uniform mediump sampler2D unity_Lightmap;
					uniform mediump vec4 unity_Lightmap_HDR;
					uniform sampler2D _MainTex;
					uniform lowp vec4 _BaseColor;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp vec2 xlv_TEXCOORD1;
					void main ()
					{
					  lowp vec3 lightmap_1;
					  lowp vec4 final_2;
					  final_2 = (texture2D (_MainTex, xlv_TEXCOORD0) * _BaseColor);
					  mediump vec4 tmpvar_3;
					  tmpvar_3 = texture2D (unity_Lightmap, xlv_TEXCOORD1);
					  lowp vec4 color_4;
					  color_4 = tmpvar_3;
					  mediump vec3 tmpvar_5;
					  tmpvar_5 = (unity_Lightmap_HDR.x * color_4.xyz);
					  lightmap_1 = tmpvar_5;
					  final_2.xyz = (final_2.xyz * clamp ((lightmap_1 + final_2.w), 0.0, 1.0));
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
					attribute vec4 _glesMultiTexCoord0;
					attribute vec4 _glesMultiTexCoord1;
					uniform highp mat4 unity_ObjectToWorld;
					uniform highp mat4 unity_MatrixVP;
					uniform highp vec4 unity_FogParams;
					uniform highp vec4 unity_LightmapST;
					uniform highp vec4 _MainTex_ST;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp vec2 xlv_TEXCOORD1;
					varying highp float xlv_TEXCOORD2;
					void main ()
					{
					  highp vec4 tmpvar_1;
					  highp vec4 tmpvar_2;
					  tmpvar_2.w = 1.0;
					  tmpvar_2.xyz = _glesVertex.xyz;
					  tmpvar_1 = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_2));
					  gl_Position = tmpvar_1;
					  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
					  xlv_TEXCOORD1 = ((_glesMultiTexCoord1.xy * unity_LightmapST.xy) + unity_LightmapST.zw);
					  xlv_TEXCOORD2 = ((tmpvar_1.z * unity_FogParams.z) + unity_FogParams.w);
					}
					
					
					#endif
					#ifdef FRAGMENT
					uniform lowp vec4 unity_FogColor;
					uniform mediump sampler2D unity_Lightmap;
					uniform mediump vec4 unity_Lightmap_HDR;
					uniform sampler2D _MainTex;
					uniform lowp vec4 _BaseColor;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp vec2 xlv_TEXCOORD1;
					varying highp float xlv_TEXCOORD2;
					void main ()
					{
					  lowp vec3 lightmap_1;
					  lowp vec4 final_2;
					  final_2 = (texture2D (_MainTex, xlv_TEXCOORD0) * _BaseColor);
					  mediump vec4 tmpvar_3;
					  tmpvar_3 = texture2D (unity_Lightmap, xlv_TEXCOORD1);
					  lowp vec4 color_4;
					  color_4 = tmpvar_3;
					  mediump vec3 tmpvar_5;
					  tmpvar_5 = (unity_Lightmap_HDR.x * color_4.xyz);
					  lightmap_1 = tmpvar_5;
					  final_2.xyz = (final_2.xyz * clamp ((lightmap_1 + final_2.w), 0.0, 1.0));
					  highp float tmpvar_6;
					  tmpvar_6 = clamp (xlv_TEXCOORD2, 0.0, 1.0);
					  final_2.xyz = mix (unity_FogColor.xyz, final_2.xyz, vec3(tmpvar_6));
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
					attribute vec4 _glesMultiTexCoord0;
					attribute vec4 _glesMultiTexCoord1;
					uniform highp mat4 unity_ObjectToWorld;
					uniform highp mat4 unity_MatrixVP;
					uniform highp vec4 unity_FogParams;
					uniform highp vec4 unity_LightmapST;
					uniform highp vec4 _MainTex_ST;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp vec2 xlv_TEXCOORD1;
					varying highp float xlv_TEXCOORD2;
					void main ()
					{
					  highp vec4 tmpvar_1;
					  highp vec4 tmpvar_2;
					  tmpvar_2.w = 1.0;
					  tmpvar_2.xyz = _glesVertex.xyz;
					  tmpvar_1 = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_2));
					  gl_Position = tmpvar_1;
					  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
					  xlv_TEXCOORD1 = ((_glesMultiTexCoord1.xy * unity_LightmapST.xy) + unity_LightmapST.zw);
					  xlv_TEXCOORD2 = ((tmpvar_1.z * unity_FogParams.z) + unity_FogParams.w);
					}
					
					
					#endif
					#ifdef FRAGMENT
					uniform lowp vec4 unity_FogColor;
					uniform mediump sampler2D unity_Lightmap;
					uniform mediump vec4 unity_Lightmap_HDR;
					uniform sampler2D _MainTex;
					uniform lowp vec4 _BaseColor;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp vec2 xlv_TEXCOORD1;
					varying highp float xlv_TEXCOORD2;
					void main ()
					{
					  lowp vec3 lightmap_1;
					  lowp vec4 final_2;
					  final_2 = (texture2D (_MainTex, xlv_TEXCOORD0) * _BaseColor);
					  mediump vec4 tmpvar_3;
					  tmpvar_3 = texture2D (unity_Lightmap, xlv_TEXCOORD1);
					  lowp vec4 color_4;
					  color_4 = tmpvar_3;
					  mediump vec3 tmpvar_5;
					  tmpvar_5 = (unity_Lightmap_HDR.x * color_4.xyz);
					  lightmap_1 = tmpvar_5;
					  final_2.xyz = (final_2.xyz * clamp ((lightmap_1 + final_2.w), 0.0, 1.0));
					  highp float tmpvar_6;
					  tmpvar_6 = clamp (xlv_TEXCOORD2, 0.0, 1.0);
					  final_2.xyz = mix (unity_FogColor.xyz, final_2.xyz, vec3(tmpvar_6));
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
					attribute vec4 _glesMultiTexCoord0;
					attribute vec4 _glesMultiTexCoord1;
					uniform highp mat4 unity_ObjectToWorld;
					uniform highp mat4 unity_MatrixVP;
					uniform highp vec4 unity_FogParams;
					uniform highp vec4 unity_LightmapST;
					uniform highp vec4 _MainTex_ST;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp vec2 xlv_TEXCOORD1;
					varying highp float xlv_TEXCOORD2;
					void main ()
					{
					  highp vec4 tmpvar_1;
					  highp vec4 tmpvar_2;
					  tmpvar_2.w = 1.0;
					  tmpvar_2.xyz = _glesVertex.xyz;
					  tmpvar_1 = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_2));
					  gl_Position = tmpvar_1;
					  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
					  xlv_TEXCOORD1 = ((_glesMultiTexCoord1.xy * unity_LightmapST.xy) + unity_LightmapST.zw);
					  xlv_TEXCOORD2 = ((tmpvar_1.z * unity_FogParams.z) + unity_FogParams.w);
					}
					
					
					#endif
					#ifdef FRAGMENT
					uniform lowp vec4 unity_FogColor;
					uniform mediump sampler2D unity_Lightmap;
					uniform mediump vec4 unity_Lightmap_HDR;
					uniform sampler2D _MainTex;
					uniform lowp vec4 _BaseColor;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp vec2 xlv_TEXCOORD1;
					varying highp float xlv_TEXCOORD2;
					void main ()
					{
					  lowp vec3 lightmap_1;
					  lowp vec4 final_2;
					  final_2 = (texture2D (_MainTex, xlv_TEXCOORD0) * _BaseColor);
					  mediump vec4 tmpvar_3;
					  tmpvar_3 = texture2D (unity_Lightmap, xlv_TEXCOORD1);
					  lowp vec4 color_4;
					  color_4 = tmpvar_3;
					  mediump vec3 tmpvar_5;
					  tmpvar_5 = (unity_Lightmap_HDR.x * color_4.xyz);
					  lightmap_1 = tmpvar_5;
					  final_2.xyz = (final_2.xyz * clamp ((lightmap_1 + final_2.w), 0.0, 1.0));
					  highp float tmpvar_6;
					  tmpvar_6 = clamp (xlv_TEXCOORD2, 0.0, 1.0);
					  final_2.xyz = mix (unity_FogColor.xyz, final_2.xyz, vec3(tmpvar_6));
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
					attribute vec4 _glesMultiTexCoord0;
					attribute vec4 _glesMultiTexCoord1;
					uniform highp mat4 unity_ObjectToWorld;
					uniform highp mat4 unity_MatrixVP;
					uniform highp vec4 unity_FogParams;
					uniform highp vec4 unity_LightmapST;
					uniform highp vec4 _MainTex_ST;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp vec2 xlv_TEXCOORD1;
					varying highp float xlv_TEXCOORD2;
					void main ()
					{
					  highp vec4 tmpvar_1;
					  highp vec4 tmpvar_2;
					  tmpvar_2.w = 1.0;
					  tmpvar_2.xyz = _glesVertex.xyz;
					  tmpvar_1 = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_2));
					  gl_Position = tmpvar_1;
					  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
					  xlv_TEXCOORD1 = ((_glesMultiTexCoord1.xy * unity_LightmapST.xy) + unity_LightmapST.zw);
					  xlv_TEXCOORD2 = exp2(-((unity_FogParams.y * tmpvar_1.z)));
					}
					
					
					#endif
					#ifdef FRAGMENT
					uniform lowp vec4 unity_FogColor;
					uniform mediump sampler2D unity_Lightmap;
					uniform mediump vec4 unity_Lightmap_HDR;
					uniform sampler2D _MainTex;
					uniform lowp vec4 _BaseColor;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp vec2 xlv_TEXCOORD1;
					varying highp float xlv_TEXCOORD2;
					void main ()
					{
					  lowp vec3 lightmap_1;
					  lowp vec4 final_2;
					  final_2 = (texture2D (_MainTex, xlv_TEXCOORD0) * _BaseColor);
					  mediump vec4 tmpvar_3;
					  tmpvar_3 = texture2D (unity_Lightmap, xlv_TEXCOORD1);
					  lowp vec4 color_4;
					  color_4 = tmpvar_3;
					  mediump vec3 tmpvar_5;
					  tmpvar_5 = (unity_Lightmap_HDR.x * color_4.xyz);
					  lightmap_1 = tmpvar_5;
					  final_2.xyz = (final_2.xyz * clamp ((lightmap_1 + final_2.w), 0.0, 1.0));
					  highp float tmpvar_6;
					  tmpvar_6 = clamp (xlv_TEXCOORD2, 0.0, 1.0);
					  final_2.xyz = mix (unity_FogColor.xyz, final_2.xyz, vec3(tmpvar_6));
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
					attribute vec4 _glesMultiTexCoord0;
					attribute vec4 _glesMultiTexCoord1;
					uniform highp mat4 unity_ObjectToWorld;
					uniform highp mat4 unity_MatrixVP;
					uniform highp vec4 unity_FogParams;
					uniform highp vec4 unity_LightmapST;
					uniform highp vec4 _MainTex_ST;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp vec2 xlv_TEXCOORD1;
					varying highp float xlv_TEXCOORD2;
					void main ()
					{
					  highp vec4 tmpvar_1;
					  highp vec4 tmpvar_2;
					  tmpvar_2.w = 1.0;
					  tmpvar_2.xyz = _glesVertex.xyz;
					  tmpvar_1 = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_2));
					  gl_Position = tmpvar_1;
					  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
					  xlv_TEXCOORD1 = ((_glesMultiTexCoord1.xy * unity_LightmapST.xy) + unity_LightmapST.zw);
					  xlv_TEXCOORD2 = exp2(-((unity_FogParams.y * tmpvar_1.z)));
					}
					
					
					#endif
					#ifdef FRAGMENT
					uniform lowp vec4 unity_FogColor;
					uniform mediump sampler2D unity_Lightmap;
					uniform mediump vec4 unity_Lightmap_HDR;
					uniform sampler2D _MainTex;
					uniform lowp vec4 _BaseColor;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp vec2 xlv_TEXCOORD1;
					varying highp float xlv_TEXCOORD2;
					void main ()
					{
					  lowp vec3 lightmap_1;
					  lowp vec4 final_2;
					  final_2 = (texture2D (_MainTex, xlv_TEXCOORD0) * _BaseColor);
					  mediump vec4 tmpvar_3;
					  tmpvar_3 = texture2D (unity_Lightmap, xlv_TEXCOORD1);
					  lowp vec4 color_4;
					  color_4 = tmpvar_3;
					  mediump vec3 tmpvar_5;
					  tmpvar_5 = (unity_Lightmap_HDR.x * color_4.xyz);
					  lightmap_1 = tmpvar_5;
					  final_2.xyz = (final_2.xyz * clamp ((lightmap_1 + final_2.w), 0.0, 1.0));
					  highp float tmpvar_6;
					  tmpvar_6 = clamp (xlv_TEXCOORD2, 0.0, 1.0);
					  final_2.xyz = mix (unity_FogColor.xyz, final_2.xyz, vec3(tmpvar_6));
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
					attribute vec4 _glesMultiTexCoord0;
					attribute vec4 _glesMultiTexCoord1;
					uniform highp mat4 unity_ObjectToWorld;
					uniform highp mat4 unity_MatrixVP;
					uniform highp vec4 unity_FogParams;
					uniform highp vec4 unity_LightmapST;
					uniform highp vec4 _MainTex_ST;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp vec2 xlv_TEXCOORD1;
					varying highp float xlv_TEXCOORD2;
					void main ()
					{
					  highp vec4 tmpvar_1;
					  highp vec4 tmpvar_2;
					  tmpvar_2.w = 1.0;
					  tmpvar_2.xyz = _glesVertex.xyz;
					  tmpvar_1 = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_2));
					  gl_Position = tmpvar_1;
					  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
					  xlv_TEXCOORD1 = ((_glesMultiTexCoord1.xy * unity_LightmapST.xy) + unity_LightmapST.zw);
					  xlv_TEXCOORD2 = exp2(-((unity_FogParams.y * tmpvar_1.z)));
					}
					
					
					#endif
					#ifdef FRAGMENT
					uniform lowp vec4 unity_FogColor;
					uniform mediump sampler2D unity_Lightmap;
					uniform mediump vec4 unity_Lightmap_HDR;
					uniform sampler2D _MainTex;
					uniform lowp vec4 _BaseColor;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp vec2 xlv_TEXCOORD1;
					varying highp float xlv_TEXCOORD2;
					void main ()
					{
					  lowp vec3 lightmap_1;
					  lowp vec4 final_2;
					  final_2 = (texture2D (_MainTex, xlv_TEXCOORD0) * _BaseColor);
					  mediump vec4 tmpvar_3;
					  tmpvar_3 = texture2D (unity_Lightmap, xlv_TEXCOORD1);
					  lowp vec4 color_4;
					  color_4 = tmpvar_3;
					  mediump vec3 tmpvar_5;
					  tmpvar_5 = (unity_Lightmap_HDR.x * color_4.xyz);
					  lightmap_1 = tmpvar_5;
					  final_2.xyz = (final_2.xyz * clamp ((lightmap_1 + final_2.w), 0.0, 1.0));
					  highp float tmpvar_6;
					  tmpvar_6 = clamp (xlv_TEXCOORD2, 0.0, 1.0);
					  final_2.xyz = mix (unity_FogColor.xyz, final_2.xyz, vec3(tmpvar_6));
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
					attribute vec4 _glesMultiTexCoord0;
					attribute vec4 _glesMultiTexCoord1;
					uniform highp mat4 unity_ObjectToWorld;
					uniform highp mat4 unity_MatrixVP;
					uniform highp vec4 unity_FogParams;
					uniform highp vec4 unity_LightmapST;
					uniform highp vec4 _MainTex_ST;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp vec2 xlv_TEXCOORD1;
					varying highp float xlv_TEXCOORD2;
					void main ()
					{
					  highp vec4 tmpvar_1;
					  highp vec4 tmpvar_2;
					  tmpvar_2.w = 1.0;
					  tmpvar_2.xyz = _glesVertex.xyz;
					  tmpvar_1 = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_2));
					  highp float tmpvar_3;
					  tmpvar_3 = (unity_FogParams.x * tmpvar_1.z);
					  gl_Position = tmpvar_1;
					  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
					  xlv_TEXCOORD1 = ((_glesMultiTexCoord1.xy * unity_LightmapST.xy) + unity_LightmapST.zw);
					  xlv_TEXCOORD2 = exp2((-(tmpvar_3) * tmpvar_3));
					}
					
					
					#endif
					#ifdef FRAGMENT
					uniform lowp vec4 unity_FogColor;
					uniform mediump sampler2D unity_Lightmap;
					uniform mediump vec4 unity_Lightmap_HDR;
					uniform sampler2D _MainTex;
					uniform lowp vec4 _BaseColor;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp vec2 xlv_TEXCOORD1;
					varying highp float xlv_TEXCOORD2;
					void main ()
					{
					  lowp vec3 lightmap_1;
					  lowp vec4 final_2;
					  final_2 = (texture2D (_MainTex, xlv_TEXCOORD0) * _BaseColor);
					  mediump vec4 tmpvar_3;
					  tmpvar_3 = texture2D (unity_Lightmap, xlv_TEXCOORD1);
					  lowp vec4 color_4;
					  color_4 = tmpvar_3;
					  mediump vec3 tmpvar_5;
					  tmpvar_5 = (unity_Lightmap_HDR.x * color_4.xyz);
					  lightmap_1 = tmpvar_5;
					  final_2.xyz = (final_2.xyz * clamp ((lightmap_1 + final_2.w), 0.0, 1.0));
					  highp float tmpvar_6;
					  tmpvar_6 = clamp (xlv_TEXCOORD2, 0.0, 1.0);
					  final_2.xyz = mix (unity_FogColor.xyz, final_2.xyz, vec3(tmpvar_6));
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
					attribute vec4 _glesMultiTexCoord0;
					attribute vec4 _glesMultiTexCoord1;
					uniform highp mat4 unity_ObjectToWorld;
					uniform highp mat4 unity_MatrixVP;
					uniform highp vec4 unity_FogParams;
					uniform highp vec4 unity_LightmapST;
					uniform highp vec4 _MainTex_ST;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp vec2 xlv_TEXCOORD1;
					varying highp float xlv_TEXCOORD2;
					void main ()
					{
					  highp vec4 tmpvar_1;
					  highp vec4 tmpvar_2;
					  tmpvar_2.w = 1.0;
					  tmpvar_2.xyz = _glesVertex.xyz;
					  tmpvar_1 = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_2));
					  highp float tmpvar_3;
					  tmpvar_3 = (unity_FogParams.x * tmpvar_1.z);
					  gl_Position = tmpvar_1;
					  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
					  xlv_TEXCOORD1 = ((_glesMultiTexCoord1.xy * unity_LightmapST.xy) + unity_LightmapST.zw);
					  xlv_TEXCOORD2 = exp2((-(tmpvar_3) * tmpvar_3));
					}
					
					
					#endif
					#ifdef FRAGMENT
					uniform lowp vec4 unity_FogColor;
					uniform mediump sampler2D unity_Lightmap;
					uniform mediump vec4 unity_Lightmap_HDR;
					uniform sampler2D _MainTex;
					uniform lowp vec4 _BaseColor;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp vec2 xlv_TEXCOORD1;
					varying highp float xlv_TEXCOORD2;
					void main ()
					{
					  lowp vec3 lightmap_1;
					  lowp vec4 final_2;
					  final_2 = (texture2D (_MainTex, xlv_TEXCOORD0) * _BaseColor);
					  mediump vec4 tmpvar_3;
					  tmpvar_3 = texture2D (unity_Lightmap, xlv_TEXCOORD1);
					  lowp vec4 color_4;
					  color_4 = tmpvar_3;
					  mediump vec3 tmpvar_5;
					  tmpvar_5 = (unity_Lightmap_HDR.x * color_4.xyz);
					  lightmap_1 = tmpvar_5;
					  final_2.xyz = (final_2.xyz * clamp ((lightmap_1 + final_2.w), 0.0, 1.0));
					  highp float tmpvar_6;
					  tmpvar_6 = clamp (xlv_TEXCOORD2, 0.0, 1.0);
					  final_2.xyz = mix (unity_FogColor.xyz, final_2.xyz, vec3(tmpvar_6));
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
					attribute vec4 _glesMultiTexCoord0;
					attribute vec4 _glesMultiTexCoord1;
					uniform highp mat4 unity_ObjectToWorld;
					uniform highp mat4 unity_MatrixVP;
					uniform highp vec4 unity_FogParams;
					uniform highp vec4 unity_LightmapST;
					uniform highp vec4 _MainTex_ST;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp vec2 xlv_TEXCOORD1;
					varying highp float xlv_TEXCOORD2;
					void main ()
					{
					  highp vec4 tmpvar_1;
					  highp vec4 tmpvar_2;
					  tmpvar_2.w = 1.0;
					  tmpvar_2.xyz = _glesVertex.xyz;
					  tmpvar_1 = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_2));
					  highp float tmpvar_3;
					  tmpvar_3 = (unity_FogParams.x * tmpvar_1.z);
					  gl_Position = tmpvar_1;
					  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
					  xlv_TEXCOORD1 = ((_glesMultiTexCoord1.xy * unity_LightmapST.xy) + unity_LightmapST.zw);
					  xlv_TEXCOORD2 = exp2((-(tmpvar_3) * tmpvar_3));
					}
					
					
					#endif
					#ifdef FRAGMENT
					uniform lowp vec4 unity_FogColor;
					uniform mediump sampler2D unity_Lightmap;
					uniform mediump vec4 unity_Lightmap_HDR;
					uniform sampler2D _MainTex;
					uniform lowp vec4 _BaseColor;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp vec2 xlv_TEXCOORD1;
					varying highp float xlv_TEXCOORD2;
					void main ()
					{
					  lowp vec3 lightmap_1;
					  lowp vec4 final_2;
					  final_2 = (texture2D (_MainTex, xlv_TEXCOORD0) * _BaseColor);
					  mediump vec4 tmpvar_3;
					  tmpvar_3 = texture2D (unity_Lightmap, xlv_TEXCOORD1);
					  lowp vec4 color_4;
					  color_4 = tmpvar_3;
					  mediump vec3 tmpvar_5;
					  tmpvar_5 = (unity_Lightmap_HDR.x * color_4.xyz);
					  lightmap_1 = tmpvar_5;
					  final_2.xyz = (final_2.xyz * clamp ((lightmap_1 + final_2.w), 0.0, 1.0));
					  highp float tmpvar_6;
					  tmpvar_6 = clamp (xlv_TEXCOORD2, 0.0, 1.0);
					  final_2.xyz = mix (unity_FogColor.xyz, final_2.xyz, vec3(tmpvar_6));
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
			Tags { "LIGHTMODE" = "META" }
			Cull Off
			GpuProgramID 80942
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
					  xlv_TEXCOORD1 = vec2(0.0, 0.0);
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
					uniform mediump vec4 _BaseColor;
					varying highp vec2 xlv_TEXCOORD0;
					void main ()
					{
					  mediump vec3 tmpvar_1;
					  mediump vec3 tmpvar_2;
					  highp vec4 tex_3;
					  lowp vec4 tmpvar_4;
					  tmpvar_4 = texture2D (_MainTex, xlv_TEXCOORD0);
					  tex_3 = tmpvar_4;
					  tex_3.xyz = (tex_3.xyz * _BaseColor.xyz);
					  tex_3.xyz = (tex_3.xyz * tex_3.w);
					  tmpvar_1 = tex_3.xyz;
					  tmpvar_2 = tex_3.xyz;
					  mediump vec4 res_5;
					  res_5 = vec4(0.0, 0.0, 0.0, 0.0);
					  if (unity_MetaFragmentControl.x) {
					    mediump vec4 tmpvar_6;
					    tmpvar_6.w = 1.0;
					    tmpvar_6.xyz = tmpvar_1;
					    res_5.w = tmpvar_6.w;
					    highp vec3 tmpvar_7;
					    tmpvar_7 = clamp (pow (tmpvar_1, vec3(clamp (unity_OneOverOutputBoost, 0.0, 1.0))), vec3(0.0, 0.0, 0.0), vec3(unity_MaxOutputValue));
					    res_5.xyz = tmpvar_7;
					  };
					  if (unity_MetaFragmentControl.y) {
					    mediump vec3 emission_8;
					    if (bool(unity_UseLinearSpace)) {
					      emission_8 = tmpvar_2;
					    } else {
					      emission_8 = (tmpvar_2 * ((tmpvar_2 * 
					        ((tmpvar_2 * 0.305306) + 0.6821711)
					      ) + 0.01252288));
					    };
					    mediump vec4 tmpvar_9;
					    tmpvar_9.w = 1.0;
					    tmpvar_9.xyz = emission_8;
					    res_5 = tmpvar_9;
					  };
					  gl_FragData[0] = res_5;
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
					  xlv_TEXCOORD1 = vec2(0.0, 0.0);
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
					uniform mediump vec4 _BaseColor;
					varying highp vec2 xlv_TEXCOORD0;
					void main ()
					{
					  mediump vec3 tmpvar_1;
					  mediump vec3 tmpvar_2;
					  highp vec4 tex_3;
					  lowp vec4 tmpvar_4;
					  tmpvar_4 = texture2D (_MainTex, xlv_TEXCOORD0);
					  tex_3 = tmpvar_4;
					  tex_3.xyz = (tex_3.xyz * _BaseColor.xyz);
					  tex_3.xyz = (tex_3.xyz * tex_3.w);
					  tmpvar_1 = tex_3.xyz;
					  tmpvar_2 = tex_3.xyz;
					  mediump vec4 res_5;
					  res_5 = vec4(0.0, 0.0, 0.0, 0.0);
					  if (unity_MetaFragmentControl.x) {
					    mediump vec4 tmpvar_6;
					    tmpvar_6.w = 1.0;
					    tmpvar_6.xyz = tmpvar_1;
					    res_5.w = tmpvar_6.w;
					    highp vec3 tmpvar_7;
					    tmpvar_7 = clamp (pow (tmpvar_1, vec3(clamp (unity_OneOverOutputBoost, 0.0, 1.0))), vec3(0.0, 0.0, 0.0), vec3(unity_MaxOutputValue));
					    res_5.xyz = tmpvar_7;
					  };
					  if (unity_MetaFragmentControl.y) {
					    mediump vec3 emission_8;
					    if (bool(unity_UseLinearSpace)) {
					      emission_8 = tmpvar_2;
					    } else {
					      emission_8 = (tmpvar_2 * ((tmpvar_2 * 
					        ((tmpvar_2 * 0.305306) + 0.6821711)
					      ) + 0.01252288));
					    };
					    mediump vec4 tmpvar_9;
					    tmpvar_9.w = 1.0;
					    tmpvar_9.xyz = emission_8;
					    res_5 = tmpvar_9;
					  };
					  gl_FragData[0] = res_5;
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
					  xlv_TEXCOORD1 = vec2(0.0, 0.0);
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
					uniform mediump vec4 _BaseColor;
					varying highp vec2 xlv_TEXCOORD0;
					void main ()
					{
					  mediump vec3 tmpvar_1;
					  mediump vec3 tmpvar_2;
					  highp vec4 tex_3;
					  lowp vec4 tmpvar_4;
					  tmpvar_4 = texture2D (_MainTex, xlv_TEXCOORD0);
					  tex_3 = tmpvar_4;
					  tex_3.xyz = (tex_3.xyz * _BaseColor.xyz);
					  tex_3.xyz = (tex_3.xyz * tex_3.w);
					  tmpvar_1 = tex_3.xyz;
					  tmpvar_2 = tex_3.xyz;
					  mediump vec4 res_5;
					  res_5 = vec4(0.0, 0.0, 0.0, 0.0);
					  if (unity_MetaFragmentControl.x) {
					    mediump vec4 tmpvar_6;
					    tmpvar_6.w = 1.0;
					    tmpvar_6.xyz = tmpvar_1;
					    res_5.w = tmpvar_6.w;
					    highp vec3 tmpvar_7;
					    tmpvar_7 = clamp (pow (tmpvar_1, vec3(clamp (unity_OneOverOutputBoost, 0.0, 1.0))), vec3(0.0, 0.0, 0.0), vec3(unity_MaxOutputValue));
					    res_5.xyz = tmpvar_7;
					  };
					  if (unity_MetaFragmentControl.y) {
					    mediump vec3 emission_8;
					    if (bool(unity_UseLinearSpace)) {
					      emission_8 = tmpvar_2;
					    } else {
					      emission_8 = (tmpvar_2 * ((tmpvar_2 * 
					        ((tmpvar_2 * 0.305306) + 0.6821711)
					      ) + 0.01252288));
					    };
					    mediump vec4 tmpvar_9;
					    tmpvar_9.w = 1.0;
					    tmpvar_9.xyz = emission_8;
					    res_5 = tmpvar_9;
					  };
					  gl_FragData[0] = res_5;
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
	Fallback "Lockwood/Diffuse"
}