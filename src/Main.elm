module Main exposing (main)

import Browser
import Html exposing (Html, button, div, text)
import Html.Attributes exposing (class)
import Html.Events exposing (onClick)


main : Program () Model Msg
main =
    Browser.sandbox { init = 0, update = update, view = view }


type alias Model =
    Int


type Msg
    = Increment
    | Decrement


update : Msg -> Int -> Int
update msg model =
    case msg of
        Increment ->
            model + 1

        Decrement ->
            model - 1


view : Model -> Html Msg
view model =
    div [ class "counter-container" ]
        [ button [ onClick Decrement, class "button" ] [ text "-" ]
        , div [] [ text (String.fromInt model) ]
        , button [ onClick Increment, class "button" ] [ text "+" ]
        ]
