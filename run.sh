#!/bin/bash

# Uncomment this if needed
# hdfs dfs -rm -r -f /user/rayandrew/test_output
# hdfs dfs -rm -r -f /user/rayandrew/links_anon_output
# hdfs dfs -rm -r -f /user/rayandrew/twitter_rv_output
hdfs dfs -rm -r -f /user/rayandrew/temp

# rm Triangle*.class
# hadoop com.sun.tools.javac.Main TriangleCount.java
# jar cf triangle.jar Triangle*.class

rm Graph*.class
hadoop com.sun.tools.javac.Main GraphPartition.java Graph.java
jar cf graph.jar Graph*.class

# Uncomment to use links-anon file
# hadoop jar triangle.jar TriangleCount /user/rayandrew/links_anon_input /user/rayandrew/links_anon_output

# Uncomment to use twitter-rv file
hadoop jar graph.jar TriangleCount /data/twitter /user/rayandrew/twitter_output

# Uncomment to use test file
# hadoop jar triangle.jar TriangleCount /user/rayandrew/test_input /user/rayandrew/test_output