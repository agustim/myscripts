
gopath_up() {
	mkdir -p ~/go
	export GOPATH=~/go
	PATH=$PATH:~/go/bin
}
gopath_down() {
	unset GOPATH
}
