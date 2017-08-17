#!/bin/bash
git clone --recursive https://github.com/vysheng/tg.git
cd tg
./configure --disable-openssl
make
cd ..
mv tg/bin/telegram-cli package/usr/bin/
#chown -R root:root package
dpkg-deb --build package
mv package.deb telegram-cli.deb
cp telegram-cli.deb telegram-cli-jessie.deb
package_cloud push deadda7a/telegram-cli/ubuntu/xenial ./telegram-cli.deb
package_cloud push deadda7a/telegram-cli/debian/jessie ./telegram-cli-jessie.deb
