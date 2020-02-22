#!/usr/bin/env stack
-- stack runghc --package reanimate
module Main(main) where

import Reanimate
import Reanimate.Builtin.Documentation

main :: IO ()
main = reanimate $ docEnv $ sceneAnimation $ do
  s <- fork $ newSpriteA drawBox
  v <- spriteVar s 0 rotate
  tweenVar v 2 $ \val -> fromToS val 90
