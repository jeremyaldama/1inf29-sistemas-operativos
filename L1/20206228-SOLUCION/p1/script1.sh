inicio=$1
final=$2
patron=$3

for (( i=inicio; i<=final; i++ )); do
	numeroComoCadena="$i"
	if [[ $numeroComoCadena == *"$patron"* ]]; then
		echo $i
	fi
done
