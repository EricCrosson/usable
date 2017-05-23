#!./test/libs/bats/bin/bats
# Written by Eric Crosson
# 2017-05-22
#
# Test run of usable interface.

load 'libs/bats-support/load'
load 'libs/bats-assert/load'

setup() {
}

teardown() {
}

# @test 'spec check: run clones repository' {
#     pushd "${TMPDIR}" || exit 1

#     curl -fsSL "${API}/apply" \
#         | bash -s -- https://github.com/ericcrosson/usable uzable --recursive

#     assert [ -d 'uzable' ]
#     assert [ -d 'uzable/.git/modules' ]

#     popd
# }

# @test 'spec check: run executes extra arguments inside the repository' {
#     pushd "${TMPDIR}" || exit 1

#     curl -fsSL "${API}/apply" \
#         | bash -s -- https://github.com/ericcrosson/usable uzable --recursive

#     assert [ -d 'uzable' ]
#     assert [ -d 'uzable/.git/modules' ]

#     popd
# }
