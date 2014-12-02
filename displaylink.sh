
dplink() {
	$(lsusb|grep -q 17e9:02ee) && {
		echo "Connect DisplayLink (17e9:02ee)"
		$(lsmod|grep -q "^udlfb ") && {
			echo "Please add udlfb in modules blacklist"
			sudo rmmod udlfb
			sudo rmmod udl
			sudo insmod /lib/modules/$(uname -r)/kernel/drivers/gpu/drm/udl/udl.ko	
		}
		sudo xrandr --listproviders
		sudo xrandr --setprovideroutputsource 1 0
	} || echo "No connected DisplayLink"
}
