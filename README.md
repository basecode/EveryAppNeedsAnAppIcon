# EveryAppNeedsAnAppIcon
A Shell script and an Automator Workflow that expect a filepath to an image and create all the Icon sizes for the AppStore specified by Apple.

### Generates App Icons for iPad and iPhone.

It converts your input image to all kind of "icon" representations as described here:
* https://developer.apple.com/LIBRARY/IOS/qa/qa1686/_index.html
* https://developer.apple.com/library/ios/documentation/UserExperience/Conceptual/MobileHIG/IconMatrix.html

### Quick notes

- Shell script
- Supported input image formats: **png, jpg, gif, pdf, tiff, psd**
- Stores generated files in same directory as input image
- No `ImageMagick` dependency. Script uses `sips`.
- "iTunesArtwork" icon files are in png format, but named without the .png extension as required by Apple.
- Put the `.workflow` folder in `~/Library/Services`.
