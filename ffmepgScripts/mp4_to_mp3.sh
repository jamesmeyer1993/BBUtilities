find . -type f -iname "*.mp4" -exec bash -c 'FILE="$1"; ffmpeg -i "${FILE}" -vn -ab 128k -ar 44100 -y "${FILE%.mp4}.mp3";' _ '{}' \;
