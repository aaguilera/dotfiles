# Set JAVA_HOME variable
export JAVA_HOME=$(readlink -f /usr/bin/javac | sed "s:/bin/javac::") 
