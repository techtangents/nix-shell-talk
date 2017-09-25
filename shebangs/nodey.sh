#! /usr/bin/env nix-shell
#! nix-shell -i node -p nodejs 

var blah = ['hello', 'world'];
console.log(blah.join(' '));
