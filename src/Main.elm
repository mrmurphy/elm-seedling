module Main (..) where

import Html exposing (..)
import Signal exposing (Address)
import StartApp.Simple as StartApp exposing (start)


type alias Model =
  Int


init : Model
init =
  0


type Action
  = NoOp


update : Action -> Model -> Model
update action model =
  case action of
    NoOp ->
      model


view : Address Action -> Model -> Html
view address model =
  div [] [ text "Buenos dias!" ]


main : Signal Html
main =
  start
    { model = init
    , update = update
    , view = view
    }
