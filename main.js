const path = require('path');
require('icloud-windows-base').run({
  appName: 'Apple Invites',
  protocol: 'apple-invites',
  icloudUrl: 'https://www.icloud.com/invites',
  splashPath: path.join(__dirname, 'splash.html'),
  iconPath: path.join(__dirname, 'icon.png')
});
