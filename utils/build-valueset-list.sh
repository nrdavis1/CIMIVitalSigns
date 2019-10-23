#!/usr/bin/env bash
#
for x in `ls output/ValueSet-*.html | grep -v 'json' | grep -v 'xml' | grep -v 'ttl' | sed -e 's/output\///' | cut -d'-' -f2 | sed -e 's/.html//'`;do
  echo '<a href="ValueSet-'$x'.html">'$x'</a><br/>'
done | sort
