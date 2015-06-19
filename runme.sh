echo tern setup
pushd bundle/tern_for_vim
npm install
popd

echo command-t setup
pushd bundle/command-t/ruby/command-t
ruby extconf.rb
make
popd

echo YouCompleteMe setup
pushd bundle/YouCompleteMe
git submodule update --init --recursive
./install.sh
popd
