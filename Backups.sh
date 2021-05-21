#!/bin/bash

echo -e "Esse script realiza um backup dos arquivos da tua pasta atual:"
ls -1
DATA="$(date +%d.%m.%y.%H.%M)"
PASTA="/tmp/backup/$DATA"
echo -e "Criando uma pasta temporária ${PASTA}..."
mkdir -p ${PASTA} 2> /dev/null
echo -e "Copiando os arquivos (exceto o .zip).. foi"
cp $(ls | grep -v *.zip) $PASTA
echo -e "Agora estou compactando os arquivos"
zip -r ./${DATA}.zip ${PASTA}/*
echo -e "Excluindo a pasta temporária ${PASTA}....."
rm -r ${PASTA} 2> /dev/null
echo -e "Feito!"

