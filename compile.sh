#!/bin/bash
git clone --recursive https://github.com/vysheng/tg.git
cd tg
./configure --disable-openssl
make
cd ..
#git clone --recursive https://github.com/tvdstaaij/telegram-history-dump.git
mv tg/bin/telegram-cli package/usr/bin/
chown -R root:root package
dpkg-deb --build package
mv package.deb telegram-cli.deb
package_cloud push deadda7a/telegram-cli/ubuntu/xenial ./telegram-cli.deb
