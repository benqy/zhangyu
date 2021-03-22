const exec = require('child_process').exec
const path = require('path')
const fs = require('fs')
const fse = require('fs-extra')

function fromDir(startPath,filter,callback){

  //console.log('Starting from dir '+startPath+'/')

  if (!fs.existsSync(startPath)){
      console.log("no dir ",startPath)
      return
  }

  var files=fs.readdirSync(startPath)
  for(var i=0; i<files.length; i++){
      var filename=path.join(startPath,files[i])
      var stat = fs.lstatSync(filename)
      if (stat.isDirectory()){
          fromDir(filename,filter,callback) //recurse
      }
      else if (filter.test(filename)) callback(filename)
  }
}


const cmd = 'flutter pub run build_runner build --delete-conflicting-outputs'
exec(cmd, (error, stdout, stderr) => {
  if (error) {
      console.error(`exec error: ${error}`)
      return
  }

  console.log(stdout)
  fromDir('./lib',/\.rootroute.dart$/,function(filename){
      if(filename) {
        fse.moveSync(filename, './lib/app_routes.dart', { overwrite: true })
      }
  });
})