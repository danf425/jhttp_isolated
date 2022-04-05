CG_JSON_FILE="/tmp/callgraph/jhttp/cg/coverage*.json"

JAVA_AGENT="/Users/shiv/.m2/repository/software/wings/980-java-agent/0.0.1-SNAPSHOT/980-java-agent-0.0.1-SNAPSHOT.jar"
CONFIG_FILE="/Users/shiv/git/jhttp/config.ini"


export MAVEN_OPTS="-javaagent:$JAVA_AGENT=$CONFIG_FILE"
mvn clean test -DargLine="-javaagent:$JAVA_AGENT=$CONFIG_FILE"

echo "Content of file: $CG_JSON_FILE"
wc -l $CG_JSON_FILE
