
gopath_up() {
	mkdir -p ~/go
	export GOPATH=~/go
	PATH=$PATH:~/go/bin
}
gopath_down() {
	unset GOPATH
}

[ -d ~/Build/go ] && {
	export GOROOT=~/Build/go
	export PATH=$PATH:$GOROOT/bin
} || {
	[ -d /usr/local/go ] && {
		export PATH=$PATH:/usr/local/go/bin
	}
}
