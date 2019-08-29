FILESEXTRAPATHS_prepend := "${THISDIR}/files/tegra186:"

SRC_URI += " \
          file://tegra18_cti_defconfig \
          file://0001-Import-CTI-BSP.patch \
          file://0002-fix-compilation-errors-due-to-warnings.patch \
"

KERNEL_ROOTSPEC = "root=/dev/mmcblk\${devnum}p1 rw rootwait"


do_configure_prepend(){
    mv ${WORKDIR}/tegra18_cti_defconfig ${WORKDIR}/defconfig
}
