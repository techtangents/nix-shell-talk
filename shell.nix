{ nixpkgs ? import <nixpkgs> {} }:

let
  inherit (nixpkgs) pkgs;

in
pkgs.stdenv.mkDerivation {
  name="patat-env";
  buildInputs = [ pkgs.haskellPackages.patat ];
#  shellHook = ''
#    patat talk.md;
#  '';
}
