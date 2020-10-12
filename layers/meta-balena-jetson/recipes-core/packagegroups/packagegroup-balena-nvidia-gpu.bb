SUMMARY = "Balena Nvidia GPU support Package Group"
LICENSE = "Apache-2.0"

PR = "r0"

inherit packagegroup

RDEPENDS_${PN} = " \
    tegra-libraries \
    libglvnd \
    tegra-libraries-argus \
    tegra-libraries-argus-daemon-base \
    tegra-libraries-container-csv \
    tegra-libraries-libnvosd \
    tegra-libraries-libv4l-plugins \
    libnvidia-container-tools \
    nvidia-container-toolkit \
    nvidia-container-runtime \
    go-runtime \
    "
