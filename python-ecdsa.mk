#############################################################
#
# python-ecdsa
#
#############################################################

PYTHON_ECDSA_VERSION = 0.8
PYTHON_ECDSA_SITE = http://pypi.python.org/packages/source/e/ecdsa
PYTHON_ECDSA_SOURCE = ecdsa-$(PYTHON_ECDSA_VERSION).tar.gz
PYTHON_ECDSA_DEPENDENCIES = python python-setuptools

define PYTHON_ECDSA_BUILD_CMDS
	(cd $(@D); \
		$(HOST_DIR)/usr/bin/python setup.py build --executable=/usr/bin/python)
endef

define PYTHON_ECDSA_INSTALL_TARGET_CMDS
	(cd $(@D); \
		$(HOST_DIR)/usr/bin/python setup.py install --prefix=$(TARGET_DIR)/usr)
endef

$(eval $(generic-package))
