#!/usr/bin/env sh

DIR="$(cd "$(dirname "$0")" && pwd)"
JAVA_CMD="java"
WRAPPER_JAR="$DIR/gradle/wrapper/gradle-wrapper.jar"

if [ ! -f "$WRAPPER_JAR" ]; then
  echo "gradle-wrapper.jar manquant. Ouvre simplement le projet dans Android Studio, puis lance une synchronisation Gradle." >&2
  exit 1
fi

exec "$JAVA_CMD" -classpath "$WRAPPER_JAR" org.gradle.wrapper.GradleWrapperMain "$@"
