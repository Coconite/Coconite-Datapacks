#version 330

#moj_import <minecraft:fog.glsl>
#moj_import <minecraft:dynamictransforms.glsl>

uniform sampler2D Sampler0;

in float sphericalVertexDistance;
in float cylindricalVertexDistance;
in vec4 vertexColor;
in vec2 texCoord0;

out vec4 fragColor;

void main() {
    vec4 texColor = texture(Sampler0, texCoord0);

    // Get max RGB channel (avoid division by zero)
    float maxChannel = max(max(vertexColor.r, vertexColor.g), vertexColor.b);
    maxChannel = max(maxChannel, 0.0001);

    // Normalize tint to maximum brightness
    vec3 brightTint = vertexColor.rgb / maxChannel;

    vec4 color = vec4(
        texColor.rgb * brightTint,
        texColor.a * vertexColor.a
    ) * ColorModulator;

    // Vanilla alpha cutoff
    if (color.a < 0.1) {
        discard;
    }

    fragColor = apply_fog(
        color,
        sphericalVertexDistance,
        cylindricalVertexDistance,
        FogEnvironmentalStart,
        FogEnvironmentalEnd,
        FogRenderDistanceStart,
        FogRenderDistanceEnd,
        FogColor
    );
}
