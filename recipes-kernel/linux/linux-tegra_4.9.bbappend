FILESEXTRAPATHS_prepend := "${THISDIR}/files/tegra186:"
SRCBRANCH = "patches-${L4T_VERSION}-cti-v125"

SRCREV = "a9a9580180e995fa66ebfa1a26e17d957fccbf80"

KERNEL_REPO = "github.com/lfdmn/linux-tegra.git"

SRC_URI = " git://${KERNEL_REPO};branch=${SRCBRANCH} \
        file://defconfig \
"

KERNEL_ROOTSPEC = "root=/dev/mmcblk\${devnum}p1 rw rootwait"
