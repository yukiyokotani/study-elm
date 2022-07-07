module Main exposing (main)

import Browser
import Html exposing (Html, button, div, text)
import Html.Attributes exposing (class)
import Html.Events exposing (onClick)

main =
  Browser.sandbox { init = 0, update = update, view = view }

type Msg = Increment | Decrement

update msg model =
  case msg of
    Increment ->
      model + 1

    Decrement ->
      model - 1

view model =
  div [class "counter-container"]
    [ button [ onClick Decrement, class "button" ] [ text "-" ] 
    , div [] [ text (String.fromInt model) ]
    , button [ onClick Increment, class "button" ] [ text "+" ]
    ]