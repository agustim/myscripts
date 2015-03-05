etgz(){

	echo "not implemented"

}

dtgz(){
	local directory=${2:/tmp}
	openssl enc -d -aes-256-cbc -in $1 |tar zvx -C $2 
}
