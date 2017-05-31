module Main exposing (..)

import Html exposing (Html, program, h1, text)


-- MAIN


main : Program Never Model Msg
main =
    program
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }



-- MODEL


type alias Model =
    String


init : ( Model, Cmd Msg )
init =
    ( "hello, world", Cmd.none )


type alias Word =
    { inEnglish : String
    , function : Function
    , declined : List String
    }


type Function
    = Noun
    | Adjective
    | Verb


type Case
    = Nominative
    | Genitive
    | Dative
    | Accusative
    | Ablative


type Number
    = Single
    | Plural


type Gender
    = Masculine
    | Feminine
    | Neuter


type Declension
    = First
    | Second
    | Third
    | ThirdIStems
    | Fourth
    | Fifth


type Tense
    = Present
    | Imperfect
    | Future
    | Perfect
    | Pluperfect
    | FuturePerfect


type Mood
    = Indicative
    | Subjunctive


type Voice
    = Active
    | Passive



-- UPDATE


type Msg
    = NoOp


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none



-- VIEW


view : Model -> Html Msg
view model =
    h1 [] [ text model ]
