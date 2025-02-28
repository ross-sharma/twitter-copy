regex='http.*\.\(jpg\|gif\|jpeg\|png\)'
mkdir -p img

for line in $(cat index.html | grep "$regex" -o); do 
	
	name=$(basename $line)
	curl -o img/$name $line

done


