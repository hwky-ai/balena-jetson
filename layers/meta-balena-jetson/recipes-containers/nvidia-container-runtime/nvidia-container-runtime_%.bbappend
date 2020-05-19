FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += " \
    file://0001-execRunc-use-balena-runc.patch \
"

# We don't need to build or install docker-ce and cuda-toolkit
RDEPENDS_${PN} = ""
