#!/bin/bash
echo "API Builder"

set appjar="../.github/script/app.jar"  
java -jar %appjar% -update -api -tiers -policies -alerts -runtimeAlerts -s account-config-dev.yaml

exit