#!/usr/bin/env bash
# Set JAVA_HOME variable
JAVA_HOME=$(readlink -f /usr/bin/javac | sed "s:/bin/javac::")
export JAVA_HOME
