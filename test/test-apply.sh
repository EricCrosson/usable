#!./test/libs/bats/bin/bats
# Written by Eric Crosson
# 2017-05-22
#
# Test apply of usable interface.

load 'libs/bats-support/load'
load 'libs/bats-assert/load'

readonly API="https://raw.githubusercontent.com/EricCrosson/usable/master/bin"

setup() {
    echo "setup"
    TMPDIR=$(mktemp -d bats.XXXX)
}

teardown() {
    echo "teardown"
    rm -rf "${TMPDIR}"
}

@test 'spec check: apply passes all args to "git clone"' {
    pushd "${TMPDIR}" || exit 1

    curl -fsSL "${API}/apply" \
        | bash -s -- https://github.com/ericcrosson/usable uzable --recursive

    assert [ -d 'uzable' ]
    assert [ -d 'uzable/.git/modules' ]

    popd
}
