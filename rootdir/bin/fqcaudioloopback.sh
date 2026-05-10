#!/vendor/bin/sh

fqcaudio=`/vendor/bin/getprop vendor.sys.fqcaudio`
case "$fqcaudio" in
	"11")
		#Do mic1 to headset
		/system/bin/tinymix2 'mic-to-headset' 'ON' > /dev/null 2>&1
		;;
	"10")
		#stop mic1 to headset
		/system/bin/tinymix2 'mic-to-headset' 'OFF' > /dev/null 2>&1
		;;
	"21")
		#Do mic2 to headset
		/system/bin/tinymix2 'mic2-to-headset' 'ON' > /dev/null 2>&1
		;;
	"20")
		#stop mic2 to headset
		/system/bin/tinymix2 'mic2-to-headset' 'OFF' > /dev/null 2>&1
		;;
	"31")
		#Do headset mic to headset
		/system/bin/tinymix2 'headsetmic-to-headset' 'ON' > /dev/null 2>&1
		;;
	"30")
		#stop headset mic to headset
		/system/bin/tinymix2 'headsetmic-to-headset' 'OFF' > /dev/null 2>&1
		;;
	*)
		;; #Do nothing
esac
