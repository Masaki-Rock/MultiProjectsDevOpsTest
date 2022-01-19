rem "API Builder"

rem set appjar="C:\Users\masaki.kawaguchi\OneDrive - Accenture\ドキュメント\MuleAPIBuilderApp\app\build\libs\app.jar"  
set appjar="../.github/script/app.jar"  
java -jar %appjar% -update -api -tiers -policies -alerts -runtimeAlerts -s contact-config-dev.yaml

cmd /k