#!/usr/bin/env bats


@test "gitgpt -h outputs the correct help text" {
  run bash -c "./gitgpt -h"
  [ "$status" -eq 0 ]  # Check if the command exits with success
  echo "Output: $output"
  [[ "${output}" =~ "Usage: gitgpt <command> [options]" ]]  # This checks for a partial match in the output
}

@test "gitgpt with unknown option outputs an error and exits with status 1" {
  run bash -c "./gitgpt --unknown"
  [ "$status" -eq 1 ]  # Ensure the script exits with an error code
  echo "Output: $output"
  [[ "${output}" =~ "gitgpt: Command not recognized." ]]  # Update to match the actual error message
}

@test "ShellCheck should pass without any errors" {
    run shellcheck ./gitgpt
    [ "$status" -eq 0 ]
}
