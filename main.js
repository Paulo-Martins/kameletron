const {app, BrowserWindow} = require('electron')
const url = require('url')
const path = require('path')
const ipc = require('electron').ipcMain
let win

function createWindow() {
   win = new BrowserWindow({width: 800, height: 600})
   win.loadURL(url.format({
      pathname: path.join(__dirname, 'index.html'),
      protocol: 'file:',
      slashes: true
   }))
}

ipc.on('colored', function (event) {
    console.log("colorido");
});


app.on('ready', createWindow)
