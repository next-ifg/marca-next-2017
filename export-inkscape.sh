#!/usr/bin/bash

diretorios_export=('eps' 'png' 'pdf')
dpi=300

for i in ${diretorios_export[@]}; do
    if [ ! -d ${i} ]; then
	# Criar diretório
	echo -n 'Criando diretório ' ${i} '... '
	mkdir -p ${i}
	echo 'Pronto!'
    fi
done

for f in ./vetores/[^_]*.svg; do
    file=$( basename $f .svg )
    echo 'Convertendo arquivo: ' $file '... '
    for ext in ${diretorios_export[@]}; do
	echo -n 'Formato: ' $ext '... '
	inkscape --file=$f --export-dpi=300 --export-$ext=$ext/$file.$ext
	echo 'Pronto!'
    done
done
