count=1
while true
do
	./buggy.sh 2> our.log
	if [[ $? -ne 0 ]]; then
		echo "failed after $count times"
		cat out.log
		break
	fi
	((count++))
done
