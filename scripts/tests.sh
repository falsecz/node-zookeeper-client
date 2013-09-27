if [ ! $TEST_FILES ]; then
  TEST_FILES=$(find tests/ -type f -name "test-*.js" -print0 | tr "\0" " " | sed '$s/.$//')
fi

if [ $TRAVIS ]; then
  DEPENDENCIES_FILE="tests/dependencies-travis.json"
  TIMEOUT=80000
else
  TIMEOUT=50000
  DEPENDENCIES_FILE="tests/dependencies.json"
fi
echo $TEST_FILES
NODE_PATH=lib node_modules/whiskey/bin/whiskey \
  --tests "${TEST_FILES}" \
  --timeout ${TIMEOUT} \
  --dependencies ${DEPENDENCIES_FILE} \
  --real-time --sequential
