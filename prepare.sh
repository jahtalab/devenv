


git config --global user.email "h.jahtalab@gmail.com"
git config --global user.name "Hamidreza Jahtalab"

# git helpers

echo "# Dev Bash -- Do not edit" > ~/.bashdev

curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -o ~/.git-prompt.sh

perl -p -i -e 'eof && s/$/\nsource ~\/.git-prompt.sh\n/;' ~/.bashdev
echo 'export PS1="\u@\h \W\[\033[32m\]\$(__git_ps1  \" (%s)\")\[\033[00m\] $ "' >> ~/.bashdev

curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.sh
perl -p -i -e 'eof && s/$/\nsource ~\/.git-completion.sh\n/;' ~/.bashdev



echo "

# ----------------------
# Git Aliases
# ----------------------
alias ga='git add'
alias gaa='git add .'
alias gaaa='git add -A'
alias gb='git branch'
alias gbd='git branch -d '
alias gc='git commit'
alias gcm='git commit -m'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gcom='git checkout master'
alias gd='git diff'
alias gda='git diff HEAD'
alias gi='git init'
alias gl='git log'
alias glg='git log --graph --oneline --decorate --all'
alias gld='git log --pretty=format:\"%h %ad %s\" --date=short --all'
alias gm='git merge --no-ff'
alias gp='git pull'
alias gsb='git show-branch'
alias gs='git status'
alias gss='git status -s'
alias gst='git stash'
alias gstl='git stash list'
alias gstp='git stash pop'
alias gstd='git stash drop'

__git_complete gco _git_checkout

# ----------------------
# Git Functions
# ----------------------
# Git log find by commit message
function glf() { git log --all --grep=\"$1\"; }

" >> ~/.bashdev


echo "
source ~/.bashdev
" >> ~/.bashrc