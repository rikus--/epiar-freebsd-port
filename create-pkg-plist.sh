#!/bin/sh

(
echo bin/epiar
echo share/Epiar/bin/epiar
(cd ../../Epiar.master; find Resources| sed 's/^/share\/Epiar\//')
) > pkg-plist
