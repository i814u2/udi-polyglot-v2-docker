#!/bin/bash

if [[ ! -f /opt/udi-polyglotv2/polyglot-v2-linux-x64 ]]
then
	cd /opt/udi-polyglotv2/
	wget -q https://s3.amazonaws.com/polyglotv2/binaries/polyglot-v2-linux-x64.tar.gz
	tar -zxf polyglot-v2-linux-x64.tar.gz
fi

./polyglot-v2-linux-x64
