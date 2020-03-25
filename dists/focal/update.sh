#!/bin/bash
dpkg-scanpackages --multiversion . > Packages
gzip -k -f Packages
apt-ftparchive release . > Release
gpg --default-key 191001FCD1A0490FC486BE4886D138BA406892E8 -abs -o - Release > Release.gpg
gpg --default-key 191001FCD1A0490FC486BE4886D138BA406892E8 --clearsign -o - Release > InRelease
echo "deb https://misc0110.github.io/ppa ./" > file.list

