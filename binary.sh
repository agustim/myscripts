cmp.b(){
	local f1
	local f2

	f1=$1
	f2=$2
	cmp -l $f1 $f2 | gawk  '{printf "%08X %02X %02X\n", $1 , strtonum(0$2), strtonum(0$3)}'
}


