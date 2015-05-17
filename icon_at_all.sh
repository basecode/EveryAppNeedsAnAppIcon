#!/bin/bash
#
# author: @basecode
# version: 0.2
#
# Generates App Icons for iPad and iPhone. It converts your input image
# (png, jpg, gif, pdf, tiff, psd) to all kind of "icon" representations
# as described here:
# https://developer.apple.com/LIBRARY/IOS/qa/qa1686/_index.html
#

NAMES=( "Icon-60@2x.png" "Icon-60@3x.png" "Icon-76.png" "Icon-76@2x.png" "Icon-Small-40.png" "Icon-Small-40@2x.png" "Icon-Small-40@3x.png" "Icon-Small.png" "Icon-Small@2x.png" "Icon-Small@3x.png" "Icon.png" "Icon@2x.png" "Icon-72.png" "Icon-72@2x.png" "Icon-Small-50.png" "Icon-Small-50@2x.png" "iTunesArtwork" "iTunesArtwork@2x" )
SIZES=( 120 180 76 152 40 80 120 29 58 87 57 114 72 144 50 100 512 1024 )
BASEDIR=$(dirname "$@")

if [ ! -d "$BASEDIR" ]; then
  echo "Input does not provide a valid path" 1>&2
  exit 1
fi

index=0
for name in "${NAMES[@]}"; do

  # pick next size
  size=${SIZES[index]}

  # pick destination
  destination=$BASEDIR"/"$name

  echo "convert (copy) original to png and rename to "$destination
  sips -s format png "$@" --out "$destination" >/dev/null

  echo "resize "$destination" to "$size"x"$size
  sips -Z $size "$destination" >/dev/null

  # iterate next index
  let "index++"

done

exit 0
