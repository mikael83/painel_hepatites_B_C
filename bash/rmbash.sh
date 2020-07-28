#!/bin/sh

# script por Mikael Lemos

# rm log file

LOGFILE=rm.log

echo "Removendo arquivos não utilizados"

cd /home/mikael/Documentos/Bash/tabwin_AM_2018_2019_2020/ftp.datasus.gov.br/dissemin/publicos/SIASUS/200801_/Dados/

rm AMPM*
rm AMPP*
rm AMPS*
rm AMPRO*

echo "Processo concluido"