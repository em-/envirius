#!/usr/bin/env bats

load test_helper

@test "help: main section" {
    local usage_b=$(nv_bold "Usage")
    run nv
    assert_success
    assert_equal "${lines[0]}" "nv 0.7.2"
    assert_equal "${lines[1]}" "${usage_b}: nv <subcommand>"
    assert_equal "${lines[2]}" "Subcommands:"
}
