set JAVA_HOME=C:\Program Files\Java\jdk1.8.0_161
set GRADLE_HOME=C:\MyTemp\softa\gradle-4.3
set PATH=%JAVA_HOME%\bin;%GRADLE_HOME%\bin;%PATH%
gradle jar && java -jar build/libs/java-1.0.jar
pause