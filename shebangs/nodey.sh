#! /usr/bin/env nix-shell
#! nix-shell -i node -p nodejs-8_x

var blah = ['hello', 'world'];
console.log(blah.join(' '));
