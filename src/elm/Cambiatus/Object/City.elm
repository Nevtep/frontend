-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Cambiatus.Object.City exposing (..)

import Cambiatus.InputObject
import Cambiatus.Interface
import Cambiatus.Object
import Cambiatus.Scalar
import Cambiatus.ScalarCodecs
import Cambiatus.Union
import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


name : SelectionSet String Cambiatus.Object.City
name =
    Object.selectionForField "String" "name" [] Decode.string


neighborhoods : SelectionSet decodesTo Cambiatus.Object.Neighborhood -> SelectionSet (List (Maybe decodesTo)) Cambiatus.Object.City
neighborhoods object_ =
    Object.selectionForCompositeField "neighborhoods" [] object_ (identity >> Decode.nullable >> Decode.list)
