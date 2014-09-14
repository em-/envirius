#!/usr/bin/env bats

load test_helper

@test "plugin: ruby-prebuilt" {
    run nv mk ruby_test_env --ruby-prebuilt=2.1.2
    assert_success

    nv on --same-shell ruby_test_env

    run ruby --version
    assert_success "ruby 2.1.2p95 (2014-05-08 revision 45877) [x86_64-linux]"
}
