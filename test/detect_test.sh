#! /bin/sh

testGeneratePdf() {
    assertCapturedSuccess 'wkhtmltopdf "https://www.google.com.tw/" out.pdf'
}

# Load shUnit2.
. ./shunit2
