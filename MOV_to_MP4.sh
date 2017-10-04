mkdir "outs"

for entry in "./ins"/*
do
  echo "$entry"
  name=$(basename "$entry" ".MOV")
  ffmpeg -i $entry -strict -2 -vcodec copy ./outs/$name.mp4
done
