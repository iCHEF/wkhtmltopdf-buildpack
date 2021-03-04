#!/bin/sh

. ${BUILDPACK_TEST_RUNNER_HOME}/lib/test_utils.sh

testGramma() {
    echo 0

    assertEquals 0 ${rtrn}
    assertEquals "Buildpack Test" "$(cat ${STD_OUT})"
    assertEquals "" "$(cat ${STD_ERR})"
}

testGeneratePdf() {
    wkhtmltopdf 'https://www.google.com.tw/' out.pdf

    assertEquals 0 ${rtrn}
    assertEquals "Buildpack Test" "$(cat ${STD_OUT})"
    assertEquals "" "$(cat ${STD_ERR})"
}
