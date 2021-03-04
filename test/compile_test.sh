#!/bin/sh

. ${BUILDPACK_TEST_RUNNER_HOME}/lib/test_utils.sh

testCompile() {
    capture ${BUILDPACK_HOME}/bin/compile ${BUILD_DIR} ${BUILD_DIR}

    assertEquals 0 ${rtrn}
    assertEquals "" "$(cat ${STD_ERR})"
}

# testGeneratePdf() {
#     ${BUILDPACK_HOME}/bin/compile ${BUILD_DIR}

#     capture wkhtmltopdf 'https://www.google.com.tw/' out.pdf
#     assertEquals 0 ${rtrn}
#     assertEquals "" "$(cat ${STD_ERR})"
# }
