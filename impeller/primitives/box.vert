// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

uniform UniformBuffer {
  mat4 mvp;
} uniforms;

in vec3 vertexPosition;

out vec3 color;
out vec3 color2;

void main() {
  gl_Position = uniforms.mvp * vec4(vertexPosition, 1.0);
  color = vec3(1.0, 1.0, 1.0);
}