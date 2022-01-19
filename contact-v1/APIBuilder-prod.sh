#!/bin/bash
echo "API Builder"

export appjar="../.github/script/app.jar"
java -jar ${appjar} -update -api -tiers -policies -alerts -runtimeAlerts -s contact-config-prod.yaml

exit