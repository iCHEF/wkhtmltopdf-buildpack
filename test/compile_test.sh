#!/bin/sh

. ${BUILDPACK_TEST_RUNNER_HOME}/lib/test_utils.sh

testGeneratePdf() {
    assertCapturedSuccess exit 0
    assertCapturedSuccess wkhtmltopdf 'https://www.google.com.tw/' out.pdf
}
