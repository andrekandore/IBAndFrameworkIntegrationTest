# IBAndFrameworkIntegrationTest
This is a small test to demonstrate how to integrate a framework that provides UI styles (colors, sizes etc) and a host app that utilizes it.

The host app overwrites the style struct that the framework provides by using a small view that runs only in interface builder, that replaces the framework styles with its own.

This only happens at design time, so at runtime at some startup point, it would also have to be overwritten.

## How to Test
1. Take a look at the `Main.storyboard` or `Try.xib` and take a look at the UIViews on the canvas.
2. Thier colors are originally set in the framework, but in `FrameworkIntegrationView` on `prepareForInterfaceBuilder` it calls the `overwrite()` method.
3. This is the point that original struct is overwriten.
4. You can change the contents of that method, or comment it out to see what originally would have been shown.
5. Thats it!
