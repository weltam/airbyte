git clone https://github.com/weltam/airbyte.git
cd airbyte
git checkout gv2
export TESTCONTAINERS_RYUK_DISABLED=true

SUB_BUILD=PLATFORM ./gradlew clean build -x test
