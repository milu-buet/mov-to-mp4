#Author- Milu

#Keep all the MOV file in a folder as "./ins"
#Run  ./MOV_to_MP4.sh 
#It will convert all the files in "./ins" and save to "./outs"
# sudo apt-get install ffmpeg

mkdir "outs"

for entry in "./ins"/*
do
  echo "$entry"
  name=$(basename "$entry" ".MOV")
  ffmpeg -i $entry -strict -2 -vcodec copy ./outs/$name.mp4
  # sudo apt-get install ffmpeg
done
