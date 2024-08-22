while read LINE
do
	cadena=''
	for l in $LINE
	do
		if [[ "$l" == 2* ]]
		then
			# no nos interesa el número así que lo pasamos
			num=$l
			continue
		fi
		# capitalizamos la palabra
		l="${l^}"
		# concatenamos la cadena con la palabra
		cadena=$cadena\ $l
	done
	# unimos la cadena con el número al final como se pide
	echo $cadena $num
done < ./'data - pregunta 3'
