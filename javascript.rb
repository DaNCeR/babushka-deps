tmbundle 'Javascript Tools.tmbundle' do
  source 'git://github.com/johnmuhl/javascript-tools-tmbundle.git'
end

src 'node' do
  source "http://nodejs.org/dist/node-v0.1.32.tar.gz"
  configure { shell default_configure_command }
  build { shell "make" }
  install { shell 'make install', :sudo => true }
end
