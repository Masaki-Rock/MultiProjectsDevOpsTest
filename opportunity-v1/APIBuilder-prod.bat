rem "API Builder"
rem set appjar="C:\Users\masaki.kawaguchi\OneDrive - Accenture\ƒhƒLƒ…ƒƒ“ƒg\MuleAPIBuilderApp\app\build\libs\app.jar"  
set appjar="../.github/script/app.jar" 
java -jar %appjar% -update -api -tiers -policies -alerts -runtimeAlerts -s opportunity-config-prod.yaml

mvn -s ../settings-master-prod.xml -f pom_deploy.xml dependency:copy
mvn -s ../settings-master-prod.xml -f pom_deploy.xml mule:deploy -Dautodiscovery.accountId=17576060 -DapplicationName=smpl-prod-opportunity-v1

cmd /k