#!/bin/sh

. ${BUILDPACK_TEST_RUNNER_HOME}/lib/test_utils.sh

testCompile() {
    ${BUILDPACK_HOME}/bin/compile ${BUILD_DIR} ${BUILD_DIR}  # this comand can see echo logs
    # compile

    wkhtmltopdf http://google.com google.pdf

    assertEquals "google.pdf" "$(ls -a | grep google.pdf)"
}
