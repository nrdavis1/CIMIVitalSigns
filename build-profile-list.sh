#!/usr/bin/env bash
#
for x in `ls output/StructureDefinition-*-definitions.html | sed -e 's/output\///' | cut -d'-' -f2`;do
  echo '<a href="StructureDefinition-'$x'-definitions.html">'$x'</a><br/>'
done | sort
