#ifndef XENIA_GPU_D3D12_SHADERS_XENOS_DRAW_HLSLI_
#define XENIA_GPU_D3D12_SHADERS_XENOS_DRAW_HLSLI_

cbuffer xe_system_cbuffer : register(b0) {
  // vec4 0
  uint xe_vertex_index_endian;
  uint xe_vertex_base_index;
  uint xe_ndc_control;
  uint xe_pixel_pos_reg;
  // vec4 1
  float3 xe_ndc_scale;
  float xe_pixel_half_pixel_offset;
  // vec4 2
  float3 xe_ndc_offset;
  int xe_alpha_test;
  // vec4 3
  float2 xe_point_size;
  float2 xe_ssaa_inv_scale;
  // vec4 4
  float2 xe_alpha_test_range;
  // vec4 5
  float4 xe_color_exp_bias;
  // vec4 6
  uint4 xe_color_output_map;
};

struct XeVertex {
  float4 interpolators[16] : TEXCOORD0;
  float3 point_params : TEXCOORD16;
  float4 position : SV_Position;
};

#endif  // XENIA_GPU_D3D12_SHADERS_XENOS_DRAW_HLSLI_
