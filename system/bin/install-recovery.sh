#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/sdio_emmc/by-name/RECOVERY:10033152:c89e5758f0ba2175d46ad10c0cf6333d6815f9f0; then
  applypatch EMMC:/dev/block/platform/sdio_emmc/by-name/KERNEL:9101312:84863daa4a82ed7f0b338f8931d03c5153dc9b66 EMMC:/dev/block/platform/sdio_emmc/by-name/RECOVERY c89e5758f0ba2175d46ad10c0cf6333d6815f9f0 10033152 84863daa4a82ed7f0b338f8931d03c5153dc9b66:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
