#!/bin/sh

. ${BUILDPACK_TEST_RUNNER_HOME}/lib/test_utils.sh

testGeneratePdf() {
    assertCapturedSuccess "wkhtmltopdf 'https://www.google.com.tw/' out.pdf && exit 0"
}
