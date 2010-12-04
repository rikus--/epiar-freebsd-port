#!/bin/sh

(cd ../Epiar.master
find Resources | awk 'BEGIN { print "bin/epiar" } {
	if(! (/,v$/ || /Definitions.*xml$/) ){
		printf("share/Epiar/%s\n", $0)
	}
}' ) | sort > pkg-plist
