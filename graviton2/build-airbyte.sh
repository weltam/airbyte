git clone https://github.com/weltam/airbyte.git
cd airbyte
git checkout gv2

export TESTCONTAINERS_RYUK_DISABLED=true
export GRADLE_OPTS="-D--add-opens=java.base/java.lang=ALL-UNNAMED --add-opens=java.base/java.util=ALL-UNNAMED --add-opens=java.base/java.io=ALL-UNNAMED"
export _JAVA_OPTIONS="$_JAVA_OPTIONS -D--add-opens=java.base/java.lang=ALL-UNNAMED --add-opens=java.base/java.util=ALL-UNNAMED --add-opens=java.base/java.io=ALL-UNNAMED"


SUB_BUILD=PLATFORM ./gradlew clean build --stacktrace -x test
