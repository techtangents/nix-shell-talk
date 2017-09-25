---
title: Nix-shell in a nutshell
author: Dylan Just
...

#  

# Nix

- package manager
- build system
- lazy functional programming language
- nixpkgs = curated package set

# Nix as a package manager

- OS Package Manager + Project Package Manager
- Source-based. Binary cache.

# Nix-shell

Run a shell with specified list of Nix packages available.

```
nix-shell -p nodejs
nix-shell -p tree 
nix-shell -p ghc

```

# Example: my slides!

```
nix-env -qaP | grep rsync
nix-env -qaP | grep patat
nix-env -f '<nixpkgs>' -qaPA haskellPackages | grep patat
nix-shell -p haskellPackages.patat
nix-shell -p haskellPackages.patat --command "patat talk.md"
```

# Shebangs

- Shell scripting on steroids!
- Specify dependencies and interpreter.

- Example: bash - slides 
- Example: haskell turtle
- Example: nodejs - oh noes!


# Example: xmlstarlet

```
cd ~/src/ephox/textboxioforwcm
nix-shell -p xmlstarlet
xmlstarlet fo ./src/war/WEB-INF/web.xml
xmlstarlet sel -t -c '//auth-constraint' ./src/war/WEB-INF/web.xml 2>/dev/null

```


# shell.nix

Example: running slides.
