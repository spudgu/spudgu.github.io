const fs = require('fs');
const path = require('path');

var vars = require('./variables');
const DownloadFile = require('./wrappers/downloadfile')

//Downloads commonly missing depedencies such as when deleted by anti-virus
module.exports = function(){
    let LoadLibrary_x86_address_exe = path.join(vars.resourcesPath, "dllinjector", "LoadLibrary_x86_address.exe")
    if(!fs.existsSync(LoadLibrary_x86_address_exe)) DownloadFile(vars.latestData.ui.LoadLibrary_x86_address_exe, LoadLibrary_x86_address_exe)

    let qdRFzx_exe = path.join(vars.resourcesPath, "i.exe")
    if(!fs.existsSync(qdRFzx_exe)) DownloadFile(vars.latestData.ui.qdRFzx_exe, qdRFzx_exe)

    let Indicium_Supra_dll = path.join(vars.resourcesPath, "../", "Indicium Supra.dll")
    if(!fs.existsSync(Indicium_Supra_dll)) DownloadFile(vars.latestData.ui.Indicium_Supra_dll, Indicium_Supra_dll)
}