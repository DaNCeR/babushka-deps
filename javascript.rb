tmbundle 'Javascript Tools.tmbundle' do
  source 'git://github.com/johnmuhl/javascript-tools-tmbundle.git'
end

src 'node' do
  source "http://nodejs.org/dist/node-v0.1.32.tar.gz"
  configure { shell default_configure_command }
  build { shell "make" }
  install { shell 'make install', :sudo => true }
end

src 'coffee' do
  requires 'node'
  source 'git://github.com/jashkenas/coffee-script.git'
  configure { true }
  build { true }
  install { shell 'bin/cake install', :sudo => true }
end

tmbundle 'CoffeeScript.tmbundle' do
  source 'git://github.com/jashkenas/coffee-script-tmbundle.git'
end