csp(){
	local file=$1
	sed -i 's/\s\+$//' $file 
}
git-prompt(){
	[[ $- == *i* ]]   &&   . ~/myscripts/git-prompt
	which hub && ~/myscripts/hub.bash_completion.sh
}
alias gs='git status'
alias gl='git pull'
alias gp='git push'
alias gd='git diff'
alias ga='git add'
alias gau='git add --update'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gb='git branch'
alias gba='git branch -a'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gcot='git checkout -t'
alias gcotb='git checkout --track -b'
alias glog='git log'
alias glogp='git log --pretty=format:"%h %s" --graph'
alias gll='git log --pretty=format:"%C(yellow)%h%Cred%d\\ %Creset%s%Cblue\\ [%cn]" --decorate --numstat'
alias gba='git blame'

