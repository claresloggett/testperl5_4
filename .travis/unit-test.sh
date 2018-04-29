#!/bin/bash

set -e
errors=0

# Run unit tests
(
  ./testperl5_4_test.pl || {
    echo "'testperl5_4_test.pl' failed"
    let errors+=1
  }
)

[ "$errors" -gt 0 ] && {
    echo "There were $errors errors found"
    exit 1
}

echo "Ok : Perl specific tests"
