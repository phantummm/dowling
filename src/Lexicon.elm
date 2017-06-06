module Lexicon exposing (..)


type alias Word =
    { inEnglish : String
    , function : Grammar
    , caseList : CaseList
    }


type alias CaseList =
    List WordCase


type alias WordCase =
    ( Case, String )


type Grammar
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


allWords : List Word
allWords =
    [ Word "gate"
        (Noun First Singular Feminine)
        [ ( Nominative, "porta" )
        , ( Genitive, "portae" )
        , ( Dative, "portae" )
        , ( Accusative, "portam" )
        , ( Ablative, "porta" )
        ]
    , Word "gates"
        (Noun First Plural Feminine)
        [ ( Nominative, "portae" )
        , ( Genitive, "portarum" )
        , ( Dative, "portis" )
        , ( Accusative, "portas" )
        , ( Ablative, "portis" )
        ]
    , Word "friend"
        (Noun Second Singular Masculine)
        [ ( Nominative, "amicus" )
        , ( Genitive, "amici" )
        , ( Dative, "amico" )
        , ( Accusative, "amicum" )
        , ( Ablative, "amico" )
        ]
    , Word "friends"
        (Noun Second Plural Masculine)
        [ ( Nominative, "amici" )
        , ( Genitive, "amicorum" )
        , ( Dative, "amicis" )
        , ( Accusative, "amicos" )
        , ( Ablative, "amicis" )
        ]
    , Word "boy"
        (Noun Second Singular Masculine)
        [ ( Nominative, "puer" )
        , ( Genitive, "pueri" )
        , ( Dative, "puero" )
        , ( Accusative, "puerum" )
        , ( Ablative, "puero" )
        ]
    , Word "boys"
        (Noun Second Plural Masculine)
        [ ( Nominative, "pueri" )
        , ( Genitive, "puerorum" )
        , ( Dative, "pueris" )
        , ( Accusative, "pueros" )
        , ( Ablative, "pueris" )
        ]
    , Word "field"
        (Noun Second Singular Masculine)
        [ ( Nominative, "ager" )
        , ( Genitive, "agri" )
        , ( Dative, "agro" )
        , ( Accusative, "agrum" )
        , ( Ablative, "agro" )
        ]
    , Word "fields"
        (Noun Second Plural Masculine)
        [ ( Nominative, "agri" )
        , ( Genitive, "agrorum" )
        , ( Dative, "agris" )
        , ( Accusative, "agros" )
        , ( Ablative, "agris" )
        ]
    , Word "gift"
        (Noun Second Singular Neuter)
        [ ( Nominative, "donum" )
        , ( Genitive, "doni" )
        , ( Dative, "dono" )
        , ( Accusative, "donum" )
        , ( Ablative, "dono" )
        ]
    , Word "gifts"
        (Noun Second Plural Neuter)
        [ ( Nominative, "dona" )
        , ( Genitive, "donorum" )
        , ( Dative, "donis" )
        , ( Accusative, "dona" )
        , ( Ablative, "donis" )
        ]
    , Word "king"
        (Noun Third Singular Masculine)
        [ ( Nominative, "rex" )
        , ( Genitive, "regis" )
        , ( Dative, "regi" )
        , ( Accusative, "regem" )
        , ( Ablative, "rege" )
        ]
    , Word "kings"
        (Noun Third Plural Masculine)
        [ ( Nominative, "reges" )
        , ( Genitive, "regum" )
        , ( Dative, "regibus" )
        , ( Accusative, "reges" )
        , ( Ablative, "regibus" )
        ]
    , Word "body"
        (Noun Third Singular Neuter)
        [ ( Nominative, "corpus" )
        , ( Genitive, "corporis" )
        , ( Dative, "corpori" )
        , ( Accusative, "corpus" )
        , ( Ablative, "corpore" )
        ]
    , Word "bodies"
        (Noun Third Plural Neuter)
        [ ( Nominative, "corpora" )
        , ( Genitive, "corporum" )
        , ( Dative, "corporibus" )
        , ( Accusative, "corpora" )
        , ( Ablative, "corporibus" )
        ]
    , Word "citizen"
        (Noun ThirdIStems Singular Masculine)
        [ ( Nominative, "civis" )
        , ( Genitive, "civis" )
        , ( Dative, "civi" )
        , ( Accusative, "civem" )
        , ( Ablative, "cive" )
        ]
    , Word "citizens"
        (Noun ThirdIStems Plural Masculine)
        [ ( Nominative, "cives" )
        , ( Genitive, "civium" )
        , ( Dative, "civibus" )
        , ( Accusative, "cives" )
        , ( Ablative, "civibus" )
        ]
    , Word "city"
        (Noun ThirdIStems Singular Feminine)
        [ ( Nominative, "urbs" )
        , ( Genitive, "urbis" )
        , ( Dative, "urbi" )
        , ( Accusative, "urbem" )
        , ( Ablative, "urbe" )
        ]
    , Word "cities"
        (Noun ThirdIStems Plural Feminine)
        [ ( Nominative, "urbes" )
        , ( Genitive, "urbium" )
        , ( Dative, "urbibus" )
        , ( Accusative, "urbes" )
        , ( Ablative, "urbibus" )
        ]
    , Word "sea"
        (Noun ThirdIStems Singular Neuter)
        [ ( Nominative, "mare" )
        , ( Genitive, "maris" )
        , ( Dative, "mari" )
        , ( Accusative, "mare" )
        , ( Ablative, "mari" )
        ]
    , Word "seas"
        (Noun ThirdIStems Plural Neuter)
        [ ( Nominative, "maria" )
        , ( Genitive, "marium" )
        , ( Dative, "maribus" )
        , ( Accusative, "maria" )
        , ( Ablative, "maribus" )
        ]
    , Word "fruit"
        (Noun Fourth Singular Masculine)
        [ ( Nominative, "fructus" )
        , ( Genitive, "fructus" )
        , ( Dative, "fructui" )
        , ( Accusative, "fructum" )
        , ( Ablative, "fructu" )
        ]
    , Word "fruits"
        (Noun Fourth Plural Masculine)
        [ ( Nominative, "fructus" )
        , ( Genitive, "fructuum" )
        , ( Dative, "fructibus" )
        , ( Accusative, "fructus" )
        , ( Ablative, "fructibus" )
        ]
    , Word "horn"
        (Noun Fourth Singular Neuter)
        [ ( Nominative, "cornu" )
        , ( Genitive, "cornus" )
        , ( Dative, "cornu" )
        , ( Accusative, "cornu" )
        , ( Ablative, "cornu" )
        ]
    , Word "horns"
        (Noun Fourth Plural Neuter)
        [ ( Nominative, "cornua" )
        , ( Genitive, "cornuum" )
        , ( Dative, "cornibus" )
        , ( Accusative, "cornua" )
        , ( Ablative, "cornibus" )
        ]
    , Word "day"
        (Noun Fifth Singular Masculine)
        [ ( Nominative, "dies" )
        , ( Genitive, "diei" )
        , ( Dative, "diei" )
        , ( Accusative, "diem" )
        , ( Ablative, "die" )
        ]
    , Word "days"
        (Noun Fifth Plural Masculine)
        [ ( Nominative, "dies" )
        , ( Genitive, "dierum" )
        , ( Dative, "diebus" )
        , ( Accusative, "dies" )
        , ( Ablative, "diebus" )
        ]
    ]
