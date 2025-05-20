{-# LANGUAGE NoImplicitPrelude #-}
module Handler.Default where

import Import

getHelloR :: Handler Value
getHelloR = returnJson ("Hello from production server" :: Text)
