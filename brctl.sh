do-bridge() {
		
	INT=${1:-eth0}
	EXT=${2:-br0}
	IP_ADDR=$(ip a s $INT|grep "inet "| grep -o "[0-9]*\.[0-9]*\.[0-9]*\.[0-9]*/[0-9]*")
	sudo ip address del $IP_ADDR dev $INT
	sudo ip link set $INT down
	sudo brctl addbr $EXT
	sudo brctl stp $EXT off
	sudo brctl setfd $EXT 1
	sudo brctl sethello $EXT 1
	sudo brctl addif $EXT $INT
	sudo ip link set $INT up
	sudo ip link set $EXT up
	sudo dhclient $EXT

}

devtun() {
	TUNNAME=${1:-virt0}
	USUARI=${2:-""}
	[ -z $USUARI ] && USUARI=$USER;
	sudo tunctl -u $USUARI -t $TUNNAME
}

brtun() {
	INT=${1:-virt0}
        EXT=${2:-br0}
	sudo brctl addif $EXT $INT
	sudo ip link set $INT up
}
