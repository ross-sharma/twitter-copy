regex='http.*\.\(jpg\|gif\|jpeg\|png\)'

while IFS= read -r line; do 
	href=$(echo $line | grep -o "$regex")
	if [ -n "$href" ]; then
		local_file="img/$(basename $href)"
		newline=$(echo "$line" | sed "s|$href|$local_file|")
		echo "$newline"
	else
		echo "$line"
	fi
done < index.html


