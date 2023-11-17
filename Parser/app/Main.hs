{-# LANGUAGE OverloadedStrings #-}

module WebScraper where

import Prelude as P
import Network.HTTP.Conduit
import Data.ByteString.UTF8 as BT

-- |Fonction pour récupérer le contenu d'une page web
fetchUrl :: String -> IO String
fetchUrl url = do
    manager <- newManager tlsManagerSettings
    request <- parseRequest url
    response <- httpLbs request manager
    return $ BT.toString $ responseBody response

-- |Exemple d'utilisation
main :: IO ()
main = do
    string <- fetchUrl "https://www.google.com"
    P.putStrLn string
