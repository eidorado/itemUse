export JAVA_HOME=/home/jdk-8u112-linux-x64
export CATALINA_HOME=/home/apache-tomcat-9.0.0.M13
export CATALINA_BASE=/home/apache-tomcat-9.0.0.M13
CATALINA_PID="$CATALINA_BASE/tomcat.pid"
JAVA_OPTS="-server -Xms512M -Xmx1024M -XX:MaxNewSize=256m -Djava.awt.headless=true"
