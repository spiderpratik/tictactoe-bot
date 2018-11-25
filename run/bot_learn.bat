ECHO OFF
ECHO Starting AI bot in LEARN mode

SET JAR=../target/tictactoe-bot-1.0-fat.jar
SET DEBUG=-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=9001
SET OPTIONS=^
 -Djsse.enableSNIExtension=false^
 -Dvertx.options.workerPoolSize=20^
 -Dvertx.logger-delegate-factory-class-name=io.vertx.core.logging.Log4j2LogDelegateFactory^
 -Dbot-port=8001^
 -Dbot-mode=learn

ECHO executing java %DEBUG% %OPTIONS% -jar %JAR%

java %DEBUG% %OPTIONS% -jar %JAR%

PAUSE
