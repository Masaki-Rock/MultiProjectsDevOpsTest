rem "API Builder"
rem set appjar="C:\Users\masaki.kawaguchi\OneDrive - Accenture\ドキュメント\MuleAPIBuilderApp\app\build\libs\app.jar"  
set appjar="../.github/script/app.jar"  
java -jar %appjar% -update -api -tiers -policies -alerts -runtimeAlerts -s contact-config-dev.yaml

rem "Mule Application publish"
mvn -f pom_publish.xml versions:set -DnewVersion=1.0.0
mvn -f pom_publish.xml versions:commit
mvn -s ../settings-master-dev.xml -f pom_publish.xml clean deploy

rem "Mule Application deploy"
mvn -s ../settings-master-dev.xml -f pom_deploy.xml dependency:copy
mvn -s ../settings-master-dev.xml -f pom_deploy.xml mule:deploy -Dautodiscovery.accountId=17576052 -DapplicationName=smpl-dev-contact-v1

cmd /k