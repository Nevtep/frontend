module View.Form.InputCounter exposing (view)

{-| Creates a Cambiatus-style input counter.
-}

import Html exposing (Html, div, text)
import Html.Attributes exposing (class)
import I18Next


view : (String -> I18Next.Replacements -> String) -> Int -> String -> Html msg
view tr max str =
    div [ class "input-counter" ]
        [ text <|
            tr "edit.input_counter"
                [ ( "current", String.fromInt <| String.length str )
                , ( "max", String.fromInt max )
                ]
        ]
