#! /usr/bin/env nix-shell
#! nix-shell -i runghc -p 'haskellPackages.ghcWithPackages (h: [ h.turtle ])'

{-# LANGUAGE OverloadedStrings #-}

import Turtle
import Prelude hiding (FilePath)

main = do
  echo "hello world"
  view $ ls "/tmp"
