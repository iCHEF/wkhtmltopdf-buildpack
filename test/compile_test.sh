#!/bin/sh

. ${BUILDPACK_TEST_RUNNER_HOME}/lib/test_utils.sh

testGramma() {
    p=$(echo 0)
    assertEquals 0 "$p"
}


testGeneratePdf() {
    compile
    return=$(wkhtmltopdf 'https://www.google.com.tw/' out.pdf && echo 0)
    assertEquals 0 "$return"
}
