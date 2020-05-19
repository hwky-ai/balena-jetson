FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRCREV_NVIDIA_RUNTIME = "624e3d8f8fe1d74e7d2b2dbf3470d492929a1f3a"

SRC_URI = " \
    git://github.com/hwky-ai/nvidia-container-runtime;branch=3.1.0-balena-runc;protocol=https;destsuffix=${S}/src/${GO_IMPORT}/;subpath=runtime/src;name=go \
    git://github.com/hwky-ai/nvidia-container-runtime;branch=3.1.0-balena-runc;protocol=https;destsuffix=git;name=runtime \
    file://l4t.csv \
    file://daemon.json \
"

do_install_append(){
    # Docker/balena-engine config
    install -d -m 755 ${D}${sysconfdir}/docker
    install -m 644 ${WORKDIR}/daemon.json \
                ${D}${sysconfdir}/docker/daemon.json
}

FILES_${PN} += "${sysconfdir}/docker/daemon.json"

# We don't need to build or install docker-ce and cuda-toolkit
RDEPENDS_${PN} = ""
