#!/bin/bash

cd /opt/udi-polyglotv2/

if [[ ! -f /opt/udi-polyglotv2/polyglot-v2-linux-x64 ]]
then
	wget -q https://s3.amazonaws.com/polyglotv2/binaries/polyglot-v2-linux-x64.tar.gz
	tar -zxf polyglot-v2-linux-x64.tar.gz
	chmod +x polyglot-v2-linux-x64
fi

./polyglot-v2-linux-x64
