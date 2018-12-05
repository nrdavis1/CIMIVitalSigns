#!/usr/bin/env bash
for x in `grep 'ValueSet-' pages/_includes/value-sets.html | cut -d'>' -f3 | grep -v html | cut -d'<' -f1 | cut -d'-' -f2`; do
  [ -f ../../resources/valueset/$x.xml ] || echo $x
done | sort
