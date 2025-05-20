{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
module Handler.DefaultSpec (spec) where

import           TestImport


spec :: Spec
spec = withApp $ do

    describe "getHelloR" $
        it "returns 501 Not Implemented" $ do
            get HelloR
            statusIs 501
