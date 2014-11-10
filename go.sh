
goroot_up() {
	export GOROOT=~/go
	PATH=$PATH:~/go/bin
}
goroot_down() {
	unset GOROOT
}
