find . -type f -iname "*.mkv" -exec bash -c 'FILE="$1"; ffmpeg -i "${FILE}" -vn -ab 128k -ar 44100 -y "${FILE%.mkv}.mp3";' _ '{}' \;

