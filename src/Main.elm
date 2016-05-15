port module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.App as Html
import Html.Events exposing (onClick)

-- APP
main =
  Html.program
    { init = init
    , view = view
    , update = update
    , subscriptions = subscriptions
    }


-- MODEL
type alias Model = Int

init : (Model, Cmd Msg)
init =
  (0, ask "from init")


-- UPDATE

port ask: String -> Cmd msg

type Msg = Ask | Answer Int
update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
  case msg of
    Ask -> (model, ask "from update")
    Answer value -> (value, Cmd.none)


-- SUBSCRIPTIONS

port answer: (Int -> msg) -> Sub msg

subscriptions: Model -> Sub Msg
subscriptions model =
  answer Answer


-- VIEW

view : Model -> Html Msg
view model =
  div []
    [ text (toString model)
    , button [ onClick Ask ] [ text "Ask JS" ]
    ]
