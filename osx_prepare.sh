/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install nodejs

touch ~/.bashrc
touch ~/.bash_profile

echo '
if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi' >> ~/.bash_profile


echo 'function code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $*; }' >> ~/.bashrc

git config --global credential.helper osxkeychain