---
title: Nix-shell in a nutshell
author: Dylan Just
...

# Nix

- Package manager on steroids!
- lazy functional programming language
- nixpkgs = curated package set
- nixos = Nix + Linux

# Nix-shell

Run a shell with specified list of Nix packages available.

```
nix-shell -p nodejs 

node

```

# Example: xmlstarlet

```
xmlstarlet fo ./src/war/WEB-INF/web.xml
xmlstarlet sel -t -c '//auth-constraint' /src/war/WEB-INF/web.xml 2>/dev/null

```

# Shebangs

- Shell scripting on steroids!
- Specify dependencies and interpreter.

- Example: turtle

# shell.nix

Example: running slides.
