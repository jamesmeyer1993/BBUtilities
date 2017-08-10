find . -type f -iname "*.mp3" -exec bash -c 'FILE="$1"; ffmpeg -i "${FILE}" -vn -ab 128k -ar 44100 -y "${FILE%.mp3}.flac";' _ '{}' \;
