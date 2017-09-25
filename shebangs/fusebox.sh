#! /usr/bin/env nix-shell
#! nix-shell -i bash -p nodejs git perl

# ent-reserve -repo /ephox/repos/buildrepo2 -file version.properties
echo "version=1.2.3.4" > version.properties       
npm --no-git-tag-version version $(perl -nle '/.*=(.*)\.(\d+)$$/ && print "$1-$2"' version.properties)-$(git rev-parse --short HEAD)
