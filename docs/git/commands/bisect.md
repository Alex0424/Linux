## Git Bisect (Binary searches the history)

```shell
git bisect
```

## Script that searches for latest commit where unit test stopped passing

```shell
touch ./bisect-test.sh && \
chmod +x && \
vim ./bisect-test.sh
```

```bash
#!/usr/bin/env bash

# Avoid exiting early; we want to control exit codes explicitly.
set +e

# Optional: clean/build if your project needs it
# build_cmd here is an example; replace with your actual build steps.
if ! ./build.sh > /dev/null 2>&1; then
  echo "[skip] build failed; not judging this commit"
  exit 125
fi

# Run your test command; examples:
#   pytest -q
#   mvn -q -DskipTests=false test
#   npm test --silent
#   go test ./...
./run-unit-tests.sh
test_status=$?

# If your test runner already returns non-zero on failures, you can use it directly.
if [ $test_status -eq 0 ]; then
  echo "[good] tests passed"
  exit 0
else
  echo "[bad] tests failed (exit $test_status)"
  # Map any non-zero to 1 so Git treats it as "bad"
  exit 1
fi
```

```shell
git bisect start
git bisect bad                     # current commit fails
git bisect good v1.4.2             # or some SHA/tag you know was passing
git bisect run ./bisect-test.sh    # will auto-checkout and test several commits
# When it finishes, Git prints the first bad commit.
git bisect reset                   # return to your original branch
```