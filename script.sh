# Escriba su código aquí
sed -i 's/\/\([0-9]*\)\;/\/20\1\;/g' data.csv  # cambiando y por Y
sed -i 's/^\([0-9]*\)\/\([0-9]*\)\/\([0-9]*\)\;/\3-\2-\1\;/g' data.csv # cambiando orden y separadores de fecha
sed -i 's/,/./g' data.csv  # Cambiando , por . para decimales
sed -i 's/;N/;\\N/g' data.csv   # Agregando \ a N
sed -i 's/;;/;\\N;/g' data.csv   # Agregando \N donde falta
sed -i 's/;\s/;\\N/g' data.csv   # Agregando \N donde falta
sed -i 's/\(.*\(;\).*\(;\).*\(;\).*\)\(;\)\(.*\)/\1.\6/g' data.csv   # Cambiando ; sobrante por .
sed -i 's/;/,/g' data.csv     # Cambiando ; por ,
sed -i '/\N/d' data.csv     # Filtrando por valores sin vacios