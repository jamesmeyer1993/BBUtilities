find . -type f -iname "*.wav" -exec bash -c 'FILE="$1"; ffmpeg -i "${FILE}" -vn -ab 320k -ar 44100 -y "${FILE%.wav}.flac";' _ '{}' \;
