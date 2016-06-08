#!/bin/bash
echo "Setting environment"
/setenv.sh
echo "Doing maven test"
cd /adaptor
mvn -Dcheckstyle.config.location=google_checks.xml checkstyle:checkstyle findbugs:findbugs cobertura:cobertura