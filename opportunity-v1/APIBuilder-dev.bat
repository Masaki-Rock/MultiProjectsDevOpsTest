rem "API Builder"
rem set appjar="C:\Users\masaki.kawaguchi\OneDrive - Accenture\ƒhƒLƒ…ƒƒ“ƒg\MuleAPIBuilderApp\app\build\libs\app.jar"  
set appjar="../.github/script/app.jar" 
java -jar %appjar% -update -api -tiers -policies -alerts -runtimeAlerts -s opportunity-config-dev.yaml

rem "Mule Application publish"
mvn help:active-profiles
mvn -f pom_publish.xml versions:set -DnewVersion=1.0.0
mvn -f pom_publish.xml versions:commit
mvn clean package -DattachMuleSources
mvn -s ../settings-master-dev.xml -f pom_publish.xml clean deploy

rem "Mule Application deploy"
mvn -s ../settings-master-dev.xml -f pom_deploy.xml dependency:copy
mvn -s ../settings-master-dev.xml -f pom_deploy.xml mule:deploy -Dautodiscovery.apiId=17576057 -DapplicationName=smpl-dev-opportunity-v1

cmd /k