kernel vec4 alphaWhiteKernel(__sample pixel)
{
    const float tolerance = 0.75;
    bool isWhite = all(greaterThanEqual(vec3(pixel), vec3(tolerance)));
    return pixel * vec4(!isWhite);
}
