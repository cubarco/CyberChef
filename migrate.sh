#!/bin/sh

CDN_PREFIX="https://cdn.jsdelivr.net/gh/cubarco/CyberChef@gh-pages"

rm CyberChef_v9.20.3.zip
rm sitemap.xml
sed -i "s~assets/main.css~${CDN_PREFIX}/assets/main.css~" index.html
sed -i "s~assets/main.js~${CDN_PREFIX}/assets/main.js~" index.html
sed -i "s~self.docURL=r.data~self.docURL=\"${CDN_PREFIX}\"~" assets/main.js
