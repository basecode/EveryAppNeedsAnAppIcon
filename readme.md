- Shell script
- Converts input image to output formats as described here: https://developer.apple.com/LIBRARY/IOS/qa/qa1686/_index.html
- Supported input image formats: **png, jpg, gif, pdf, tiff, psd**
- Stores generated files in same directory as input image
- No `ImageMagick` dependency. Script uses `sips`.
- "iTunesArtwork" icon files are in png format, but named without the .png extension as required by Apple.
- Just copy&paste script to Automator's "Run Shell Script Action" panel and make it a Service

