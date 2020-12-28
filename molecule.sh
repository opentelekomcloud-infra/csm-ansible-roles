#!/usr/bin/bash

# select testable role_paths
role_paths=$(find "$PWD" -maxdepth 2 -name "molecule" -not -path "*/.tox*")

rc=0

for role_path in $role_paths; do
  role_path="$role_path/.."
  cd "$role_path" || exit 2
  echo "Start test at $PWD"
  molecule test
done

exit $rc
