FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += " \
    file://balena-nvidia.conf \
"

do_install_append(){
    install -d ${D}${sysconfdir}/systemd/system/balena.service.d
    install -c -m 0644 ${WORKDIR}/balena-nvidia.conf \
        ${D}${sysconfdir}/systemd/system/balena.service.d/balena.conf
}