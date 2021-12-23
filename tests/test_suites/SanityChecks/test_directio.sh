CHUNKSERVERS=1 \
	USE_RAMDISK=YES \
	MOUNT_EXTRA_CONFIG="directio=1" \
	setup_local_empty_lizardfs info

cd "${info[mount0]}"

EX_VAL=$(cat "${info[mount0]}/.lizardfs_tweaks" | grep "DirectIO" | awk '{print $2}')

expect_equals "${EX_VAL}" "true"