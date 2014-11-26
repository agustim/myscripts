
goroot_up() {
	mkdir -p ~/go
	export GOPATH=~/go
	PATH=$PATH:~/go/bin
}
goroot_down() {
	unset GOPATH
}
