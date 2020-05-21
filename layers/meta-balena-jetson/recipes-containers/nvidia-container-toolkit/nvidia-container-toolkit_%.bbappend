# We don't need to build or install docker-ce and cuda-toolkit
RDEPENDS_${PN} = ""

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI_append = " \
    file://l4t.csv \
"

DEPENDS += " \
    gettext-native \
"

do_install_append(){
    # L4T CSV
    install -d -m 755 ${D}${sysconfdir}/nvidia-container-runtime/host-files-for-container.d
    envsubst < ${WORKDIR}/l4t.csv > ${D}${sysconfdir}/nvidia-container-runtime/host-files-for-container.d/l4t.csv
}
