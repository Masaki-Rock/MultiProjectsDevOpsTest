rem "API Builder"
rem set appjar="C:\Users\masaki.kawaguchi\OneDrive - Accenture\ドキュメント\MuleAPIBuilderApp\app\build\libs\app.jar"  
set appjar="../.github/script/app.jar"  
rem java -jar %appjar% -update -api -tiers -policies -alerts -runtimeAlerts -s account-config-prod.yaml

rem "Mule Application deploy"
mvn -s ../settings-master-prod.xml -f pom_deploy.xml dependency:copy
mvn -s ../settings-master-prod.xml -f pom_deploy.xml mule:deploy -Dautodiscovery.accountId=17575306 -DapplicationName=smpl-dev-account-v1

cmd /k