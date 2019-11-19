#!/usr/bin/env bash
mv org.hl7.fhir.igpublisher.jar org.hl7.fhir.igpublisher.$(date +%Y%m%d).jar  >/dev/null 2>&1
curl -H "Accept: application/zip" \
	https://fhir.github.io/latest-ig-publisher/org.hl7.fhir.publisher.jar \
  -o org.hl7.fhir.igpublisher.jar


#check jar file
tar tf org.hl7.fhir.igpublisher.jar >/dev/null 2>&1
if [ ! $? -eq 0 ]; then
  echo "Jar file is corrupt"
fi

#current fhir version
echo "Current FHIR version:"
curl -v --silent http://build.fhir.org 2>&1 \
  | grep -E "<title>.*</title>" \
  | sed -e 's/<\/*title>//g' -e 's/Index - //'

echo "Noting changes:"
sum *.jar

