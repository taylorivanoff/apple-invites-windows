const path = require('path');
const { app } = require('electron');

if (!app.isPackaged) {
  try {
    require('electron-reloader')(module, {
      watchRenderer: true,
      ignore: ['**/node_modules/**', '**/dist/**', '**/.git/**', '**/bun.lock', '**/package-lock.json']
    });
  } catch (_) {
    // electron-reloader is a devDependency; ignore if missing.
  }
}
require('icloud-windows-base').run({
  appName: 'Apple Invites',
  protocol: 'apple-invites',
  icloudUrl: 'https://www.icloud.com/invites',
  splashPath: path.join(__dirname, 'splash.html'),
  iconPath: path.join(__dirname, 'icon.png')
});
