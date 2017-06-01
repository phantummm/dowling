module Lexicon exposing (..)


type alias Word =
    { inEnglish : String
    , function : Function
    , caseList : CaseList
    }


type alias CaseList =
    List WordCase


type alias WordCase =
    ( Case, String )


type Function
    = Noun Declension Number Gender
    | Adjective Declension Number Gender
    | Verb Mood Voice Tense


type Case
    = Nominative
    | Genitive
    | Dative
    | Accusative
    | Ablative


type Number
    = Singular
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
