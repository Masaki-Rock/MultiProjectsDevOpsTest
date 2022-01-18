rem "API Builder"
rem set appjar="C:\Users\masaki.kawaguchi\OneDrive - Accenture\ドキュメント\MuleAPIBuilderApp\app\build\libs\app.jar"  
set appjar="../.github/script/app.jar"  
java -jar %appjar% -update -api -tiers -policies -alerts -runtimeAlerts -s account-config-dev.yaml

rem "Mule Application publish"
rem mvn help:active-profiles
rem mvn -f pom_publish.xml versions:set -DnewVersion=1.0.0
rem mvn -f pom_publish.xml versions:commit
rem mvn clean package -DattachMuleSources
rem mvn -s ../settings-master-dev.xml -f pom_publish.xml deploy

rem "Mule Application deploy"
rem mvn -s ../settings-master-dev.xml -f pom_deploy.xml dependency:copy
rem mvn -s ../settings-master-dev.xml -f pom_deploy.xml mule:deploy -Dautodiscovery.accountId=17575290 -DapplicationName=smpl-dev-account-v1

cmd /k