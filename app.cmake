# ┌─┐┬ ┬┬─┐┌─┐┬─┐┌─┐  ┌─┐┬─┐┌─┐┌┬┐┌─┐┬ ┬┌─┐┬─┐┬┌─
# ├─┤│ │├┬┘│ │├┬┘├─┤  ├┤ ├┬┘├─┤│││├┤ ││││ │├┬┘├┴┐
# ┴ ┴└─┘┴└─└─┘┴└─┴ ┴  └  ┴└─┴ ┴┴ ┴└─┘└┴┘└─┘┴└─┴ ┴
# A Powerful General Purpose Framework
# More information in: https://aurora-fw.github.io/
#
# Copyright (C) 2017 Aurora Framework, All rights reserved.
#
# This file is part of the Aurora Framework. This framework is free
# software; you can redistribute it and/or modify it under the terms of
# the GNU General Public License version 3 as published by the Free
# Software Foundation and appearing in the file LICENSE included in the
# packaging of this file. Please review the following information to
# ensure the GNU General Public License version 3 requirements will be
# met: https://www.gnu.org/licenses/gpl-3.0.html.

message(STATUS "Loading tests-crypto app...")

if (NOT CONFIGURED_ONCE)
	set(AURORAFW_APP_TESTS_CRYPTO_SOURCE_DIR ${AURORAFW_APP_TESTS_CRYPTO_DIR}/src)
endif()

add_executable(aurorafw_app_tests_crypto ${AURORAFW_APP_TESTS_CRYPTO_SOURCE_DIR}/main.cpp)

target_link_libraries(aurorafw_app_tests_crypto aurorafw-core aurorafw-cli aurorafw-crypto)

set_target_properties(aurorafw_app_tests_crypto PROPERTIES OUTPUT_NAME aurorafw_app_tests_crypto.out)
