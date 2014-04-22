#!/bin/bash
URL_RTORRENT="https://github.com/Cakebox/Cakebox/raw/master/softwares/rtorrent-0.9.0.tar.gz"
FILE_RTORRENT=$(basename $URL_RTORRENT)                         # Extraction du nom de l'archive
DIR_RTORRENT=$(echo $FILE_RTORRENT | sed "s/.tar.gz//g")        # Extraction du nom du dossier extrait
wget --no-check-certificate $URL_RTORRENT && tar -zxvf $FILE_RTORRENT                 # Téléchargement de rtorrent
cd $DIR_RTORRENT                                                # Compilation et installation
./autogen.sh && ./configure --with-xmlrpc-c 
make
make install
ldconfig
