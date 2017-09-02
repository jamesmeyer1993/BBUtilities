# ffmpeg -i in.mp3 -c libvorbis out.ogg

find . -type f -iname "*.flac" -exec bash -c 'FILE="$1"; ffmpeg -i "${FILE}" -c libvorbis "${FILE%.flac}.ogg";' _ '{}' \;
