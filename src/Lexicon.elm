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
    , Word "large"
        (Adjective Second Singular Masculine)
        [ ( Nominative, "magnus" )
        , ( Genitive, "magni" )
        , ( Dative, "magno" )
        , ( Accusative, "magnum" )
        , ( Ablative, "magno" )
        ]
    , Word "large"
        (Adjective Second Plural Masculine)
        [ ( Nominative, "magni" )
        , ( Genitive, "magnorum" )
        , ( Dative, "magnis" )
        , ( Accusative, "magnos" )
        , ( Ablative, "magnis" )
        ]
    , Word "large"
        (Adjective First Singular Feminine)
        [ ( Nominative, "magna" )
        , ( Genitive, "magnae" )
        , ( Dative, "magnae" )
        , ( Accusative, "magnam" )
        , ( Ablative, "magna" )
        ]
    , Word "large"
        (Adjective First Plural Feminine)
        [ ( Nominative, "magnae" )
        , ( Genitive, "magnarum" )
        , ( Dative, "magnis" )
        , ( Accusative, "magnas" )
        , ( Ablative, "magnis" )
        ]
    , Word "large"
        (Adjective Second Singular Neuter)
        [ ( Nominative, "magnum" )
        , ( Genitive, "magni" )
        , ( Dative, "magno" )
        , ( Accusative, "magnum" )
        , ( Ablative, "magno" )
        ]
    , Word "large"
        (Adjective Second Plural Neuter)
        [ ( Nominative, "magna" )
        , ( Genitive, "magnorum" )
        , ( Dative, "magnis" )
        , ( Accusative, "magna" )
        , ( Ablative, "magnis" )
        ]
    , Word "free"
        (Adjective Second Singular Masculine)
        [ ( Nominative, "liber" )
        , ( Genitive, "liberi" )
        , ( Dative, "libero" )
        , ( Accusative, "liberum" )
        , ( Ablative, "libero" )
        ]
    , Word "free"
        (Adjective First Singular Feminine)
        [ ( Nominative, "libera" )
        , ( Genitive, "liberae" )
        , ( Dative, "liberae" )
        , ( Accusative, "liberam" )
        , ( Ablative, "libera" )
        ]
    , Word "free"
        (Adjective Second Singular Neuter)
        [ ( Nominative, "liberum" )
        , ( Genitive, "liberi" )
        , ( Dative, "libero" )
        , ( Accusative, "liberum" )
        , ( Ablative, "libero" )
        ]
    , Word "beautiful"
        (Adjective Second Singular Masculine)
        [ ( Nominative, "pulcher" )
        , ( Genitive, "pulchri" )
        , ( Dative, "pulchro" )
        , ( Accusative, "pulchrum" )
        , ( Ablative, "pulchro" )
        ]
    , Word "beautiful"
        (Adjective First Singular Feminine)
        [ ( Nominative, "pulchra" )
        , ( Genitive, "pulchrae" )
        , ( Dative, "pulchrae" )
        , ( Accusative, "pulchram" )
        , ( Ablative, "pulchra" )
        ]
    , Word "beautiful"
        (Adjective Second Singular Neuter)
        [ ( Nominative, "pulchrum" )
        , ( Genitive, "pulchri" )
        , ( Dative, "pulchro" )
        , ( Accusative, "pulchrum" )
        , ( Ablative, "pulchro" )
        ]
    , Word "brave"
        (Adjective Third Singular Masculine)
        [ ( Nominative, "fortis" )
        , ( Genitive, "fortis" )
        , ( Dative, "forti" )
        , ( Accusative, "fortem" )
        , ( Ablative, "forti" )
        ]
    , Word "brave"
        (Adjective Third Plural Masculine)
        [ ( Nominative, "fortes" )
        , ( Genitive, "fortium" )
        , ( Dative, "fortibus" )
        , ( Accusative, "fortes" )
        , ( Ablative, "fortibus" )
        ]
    , Word "brave"
        (Adjective Third Singular Feminine)
        [ ( Nominative, "fortis" )
        , ( Genitive, "fortis" )
        , ( Dative, "forti" )
        , ( Accusative, "fortem" )
        , ( Ablative, "forti" )
        ]
    , Word "brave"
        (Adjective Third Plural Feminine)
        [ ( Nominative, "fortes" )
        , ( Genitive, "fortium" )
        , ( Dative, "fortibus" )
        , ( Accusative, "fortes" )
        , ( Ablative, "fortibus" )
        ]
    , Word "brave"
        (Adjective Third Singular Neuter)
        [ ( Nominative, "forte" )
        , ( Genitive, "fortis" )
        , ( Dative, "forti" )
        , ( Accusative, "forte" )
        , ( Ablative, "forti" )
        ]
    , Word "brave"
        (Adjective Third Plural Neuter)
        [ ( Nominative, "fortia" )
        , ( Genitive, "fortium" )
        , ( Dative, "fortibus" )
        , ( Accusative, "fortia" )
        , ( Ablative, "fortibus" )
        ]
    , Word "keen"
        (Adjective Third Singular Masculine)
        [ ( Nominative, "acer" )
        , ( Genitive, "acris" )
        , ( Dative, "acri" )
        , ( Accusative, "acrem" )
        , ( Ablative, "acri" )
        ]
    , Word "keen"
        (Adjective Third Plural Masculine)
        [ ( Nominative, "acres" )
        , ( Genitive, "acrium" )
        , ( Dative, "acribus" )
        , ( Accusative, "acres" )
        , ( Ablative, "acribus" )
        ]
    , Word "keen"
        (Adjective Third Singular Feminine)
        [ ( Nominative, "acris" )
        , ( Genitive, "acris" )
        , ( Dative, "acri" )
        , ( Accusative, "acrem" )
        , ( Ablative, "acri" )
        ]
    , Word "keen"
        (Adjective Third Plural Feminine)
        [ ( Nominative, "acres" )
        , ( Genitive, "acrium" )
        , ( Dative, "acribus" )
        , ( Accusative, "acres" )
        , ( Ablative, "acribus" )
        ]
    , Word "keen"
        (Adjective Third Singular Neuter)
        [ ( Nominative, "acre" )
        , ( Genitive, "acris" )
        , ( Dative, "acri" )
        , ( Accusative, "acre" )
        , ( Ablative, "acri" )
        ]
    , Word "keen"
        (Adjective Third Plural Neuter)
        [ ( Nominative, "acria" )
        , ( Genitive, "acrium" )
        , ( Dative, "acribus" )
        , ( Accusative, "acria" )
        , ( Ablative, "acribus" )
        ]
    , Word "powerful"
        (Adjective Third Singular Masculine)
        [ ( Nominative, "potens" )
        , ( Genitive, "potentis" )
        , ( Dative, "potenti" )
        , ( Accusative, "potentem" )
        , ( Ablative, "potenti" )
        ]
    , Word "powerful"
        (Adjective Third Plural Masculine)
        [ ( Nominative, "potentes" )
        , ( Genitive, "potentium" )
        , ( Dative, "potentibus" )
        , ( Accusative, "potentes" )
        , ( Ablative, "potentibus" )
        ]
    , Word "powerful"
        (Adjective Third Singular Feminine)
        [ ( Nominative, "potens" )
        , ( Genitive, "potentis" )
        , ( Dative, "potenti" )
        , ( Accusative, "potentem" )
        , ( Ablative, "potenti" )
        ]
    , Word "powerful"
        (Adjective Third Plural Feminine)
        [ ( Nominative, "potentes" )
        , ( Genitive, "potentium" )
        , ( Dative, "potentibus" )
        , ( Accusative, "potentes" )
        , ( Ablative, "potentibus" )
        ]
    , Word "powerful"
        (Adjective Third Singular Neuter)
        [ ( Nominative, "potens" )
        , ( Genitive, "potentis" )
        , ( Dative, "potenti" )
        , ( Accusative, "potens" )
        , ( Ablative, "potenti" )
        ]
    , Word "powerful"
        (Adjective Third Plural Neuter)
        [ ( Nominative, "potentia" )
        , ( Genitive, "potentium" )
        , ( Dative, "potentibus" )
        , ( Accusative, "potentia" )
        , ( Ablative, "potentibus" )
        ]
    , Word "braver"
        (Adjective Third Singular Masculine)
        [ ( Nominative, "fortior" )
        , ( Genitive, "fortioris" )
        , ( Dative, "fortiori" )
        , ( Accusative, "fortiorem" )
        , ( Ablative, "fortiore" )
        ]
    , Word "braver"
        (Adjective Third Plural Masculine)
        [ ( Nominative, "fortiores" )
        , ( Genitive, "fortiorum" )
        , ( Dative, "fortioribus" )
        , ( Accusative, "fortiores" )
        , ( Ablative, "fortioribus" )
        ]
    , Word "braver"
        (Adjective Third Singular Feminine)
        [ ( Nominative, "fortior" )
        , ( Genitive, "fortioris" )
        , ( Dative, "fortiori" )
        , ( Accusative, "fortiorem" )
        , ( Ablative, "fortiore" )
        ]
    , Word "braver"
        (Adjective Third Plural Feminine)
        [ ( Nominative, "fortiores" )
        , ( Genitive, "fortiorum" )
        , ( Dative, "fortioribus" )
        , ( Accusative, "fortiores" )
        , ( Ablative, "fortioribus" )
        ]
    , Word "braver"
        (Adjective Third Singular Neuter)
        [ ( Nominative, "fortius" )
        , ( Genitive, "fortioris" )
        , ( Dative, "fortiori" )
        , ( Accusative, "fortius" )
        , ( Ablative, "fortiore" )
        ]
    , Word "braver"
        (Adjective Third Plural Neuter)
        [ ( Nominative, "fortiora" )
        , ( Genitive, "fortiorum" )
        , ( Dative, "fortioribus" )
        , ( Accusative, "fortiora" )
        , ( Ablative, "fortioribus" )
        ]
    ]
