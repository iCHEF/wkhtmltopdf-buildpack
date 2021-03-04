#!/bin/sh

. ${BUILDPACK_TEST_RUNNER_HOME}/lib/test_utils.sh

testGramma() {
    assertEquals 0 "echo 0"
}

testGeneratePdf() {
    assertEquals 0 "wkhtmltopdf 'https://www.google.com.tw/' out.pdf && echo 0"
}
