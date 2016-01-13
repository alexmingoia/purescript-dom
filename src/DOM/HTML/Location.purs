module DOM.HTML.Location
  ( hash
  , setHash
  , host
  , setHost
  , hostname
  , setHostname
  , href
  , setHref
  , origin
  , setOrigin
  , pathname
  , setPathname
  , port
  , setPort
  , protocol
  , setProtocol
  , search
  , setSearch

  , assign
  , replace
  , reload
  ) where

import Control.Monad.Eff (Eff())

import Prelude

import DOM
import DOM.HTML.Types

foreign import hash :: forall eff. Location -> Eff (dom :: DOM | eff) String
foreign import setHash :: forall eff. Location -> String -> Eff (dom :: DOM | eff) Unit

foreign import host :: forall eff. Location -> Eff (dom :: DOM | eff) String
foreign import setHost :: forall eff. Location -> String -> Eff (dom :: DOM | eff) Unit

foreign import hostname :: forall eff. Location -> Eff (dom :: DOM | eff) String
foreign import setHostname :: forall eff. Location -> String -> Eff (dom :: DOM | eff) Unit

foreign import href :: forall eff. Location -> Eff (dom :: DOM | eff) String
foreign import setHref :: forall eff. Location -> String -> Eff (dom :: DOM | eff) String

foreign import origin :: forall eff. Location -> Eff (dom :: DOM | eff) String
foreign import setOrigin :: forall eff. Location -> String -> Eff (dom :: DOM | eff) Unit

foreign import pathname :: forall eff. Location -> Eff (dom :: DOM | eff) String
foreign import setPathname :: forall eff. Location -> String -> Eff (dom :: DOM | eff) Unit

foreign import port :: forall eff. Location -> Eff (dom :: DOM | eff) String
foreign import setPort :: forall eff. Location -> String -> Eff (dom :: DOM | eff) Unit

foreign import protocol :: forall eff. Location -> Eff (dom :: DOM | eff) String
foreign import setProtocol :: forall eff. Location -> String -> Eff (dom :: DOM | eff) Unit

foreign import search :: forall eff. Location -> Eff (dom :: DOM | eff) String
foreign import setSearch :: forall eff. Location -> String -> Eff (dom :: DOM | eff) Unit

foreign import assign :: forall eff. Location -> String -> Eff (dom :: DOM | eff) Unit
foreign import replace :: forall eff. Location -> String -> Eff (dom :: DOM | eff) Unit
foreign import reload :: forall eff. Location -> { forceGet :: Boolean } -> Eff (dom :: DOM | eff) Unit
