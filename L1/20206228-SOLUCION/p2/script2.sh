if [ "$#" -ne 1 ]; then
        echo "Uso: $0 patron_a_eliminar"
        exit 1
fi

PATRON=$1

for archivo in *; do
	#verificar si el archivo contiene el patrón
	 if [[ "$archivo" == *$PATRON* ]]; then
		# construir el nuevo nombre del archivo eliminado el patrón
		# sustitución de variables
		nuevo_nombre=${archivo//$PATRON}
		# renombrar el archivo
		mv "$archivo" "$nuevo_nombre"
		echo "Renombrado: $archivo -> $nuevo_nombre"
	fi
done 
