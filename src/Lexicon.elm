module Lexicon exposing (..)


type alias Word =
    { inEnglish : String
    , grammar : Grammar
    }


type alias CaseList =
    List WordCase


type alias ConjugationList =
    List WordConjugation


type alias WordCase =
    ( Case, String )


type alias WordConjugation =
    ( Conjugation, String )


type Grammar
    = Noun Declension Number Gender CaseList
    | Adjective Declension Number Gender CaseList
    | Verb Mood Voice Tense ConjugationList


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
    = FirstDeclension
    | SecondDeclension
    | ThirdDeclension
    | FourthDeclension
    | FifthDeclension


type Conjugation
    = FirstConjugation
    | SecondConjugation
    | ThirdConjugation
    | FourthConjugation


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
    -- NOUNS
    [ Word "gate"
        (Noun FirstDeclension
            Singular
            Feminine
            [ ( Nominative, "porta" )
            , ( Genitive, "portae" )
            , ( Dative, "portae" )
            , ( Accusative, "portam" )
            , ( Ablative, "porta" )
            ]
        )
    , Word "gates"
        (Noun FirstDeclension
            Plural
            Feminine
            [ ( Nominative, "portae" )
            , ( Genitive, "portarum" )
            , ( Dative, "portis" )
            , ( Accusative, "portas" )
            , ( Ablative, "portis" )
            ]
        )
    , Word "friend"
        (Noun SecondDeclension
            Singular
            Masculine
            [ ( Nominative, "amicus" )
            , ( Genitive, "amici" )
            , ( Dative, "amico" )
            , ( Accusative, "amicum" )
            , ( Ablative, "amico" )
            ]
        )
    , Word "friends"
        (Noun SecondDeclension
            Plural
            Masculine
            [ ( Nominative, "amici" )
            , ( Genitive, "amicorum" )
            , ( Dative, "amicis" )
            , ( Accusative, "amicos" )
            , ( Ablative, "amicis" )
            ]
        )
    , Word "boy"
        (Noun SecondDeclension
            Singular
            Masculine
            [ ( Nominative, "puer" )
            , ( Genitive, "pueri" )
            , ( Dative, "puero" )
            , ( Accusative, "puerum" )
            , ( Ablative, "puero" )
            ]
        )
    , Word "boys"
        (Noun SecondDeclension
            Plural
            Masculine
            [ ( Nominative, "pueri" )
            , ( Genitive, "puerorum" )
            , ( Dative, "pueris" )
            , ( Accusative, "pueros" )
            , ( Ablative, "pueris" )
            ]
        )
    , Word "field"
        (Noun SecondDeclension
            Singular
            Masculine
            [ ( Nominative, "ager" )
            , ( Genitive, "agri" )
            , ( Dative, "agro" )
            , ( Accusative, "agrum" )
            , ( Ablative, "agro" )
            ]
        )
    , Word "fields"
        (Noun SecondDeclension
            Plural
            Masculine
            [ ( Nominative, "agri" )
            , ( Genitive, "agrorum" )
            , ( Dative, "agris" )
            , ( Accusative, "agros" )
            , ( Ablative, "agris" )
            ]
        )
    , Word "gift"
        (Noun SecondDeclension
            Singular
            Neuter
            [ ( Nominative, "donum" )
            , ( Genitive, "doni" )
            , ( Dative, "dono" )
            , ( Accusative, "donum" )
            , ( Ablative, "dono" )
            ]
        )
    , Word "gifts"
        (Noun SecondDeclension
            Plural
            Neuter
            [ ( Nominative, "dona" )
            , ( Genitive, "donorum" )
            , ( Dative, "donis" )
            , ( Accusative, "dona" )
            , ( Ablative, "donis" )
            ]
        )
    , Word "king"
        (Noun ThirdDeclension
            Singular
            Masculine
            [ ( Nominative, "rex" )
            , ( Genitive, "regis" )
            , ( Dative, "regi" )
            , ( Accusative, "regem" )
            , ( Ablative, "rege" )
            ]
        )
    , Word "kings"
        (Noun ThirdDeclension
            Plural
            Masculine
            [ ( Nominative, "reges" )
            , ( Genitive, "regum" )
            , ( Dative, "regibus" )
            , ( Accusative, "reges" )
            , ( Ablative, "regibus" )
            ]
        )
    , Word "body"
        (Noun ThirdDeclension
            Singular
            Neuter
            [ ( Nominative, "corpus" )
            , ( Genitive, "corporis" )
            , ( Dative, "corpori" )
            , ( Accusative, "corpus" )
            , ( Ablative, "corpore" )
            ]
        )
    , Word "bodies"
        (Noun ThirdDeclension
            Plural
            Neuter
            [ ( Nominative, "corpora" )
            , ( Genitive, "corporum" )
            , ( Dative, "corporibus" )
            , ( Accusative, "corpora" )
            , ( Ablative, "corporibus" )
            ]
        )
    , Word "citizen"
        (Noun ThirdDeclension
            Singular
            Masculine
            [ ( Nominative, "civis" )
            , ( Genitive, "civis" )
            , ( Dative, "civi" )
            , ( Accusative, "civem" )
            , ( Ablative, "cive" )
            ]
        )
    , Word "citizens"
        (Noun ThirdDeclension
            Plural
            Masculine
            [ ( Nominative, "cives" )
            , ( Genitive, "civium" )
            , ( Dative, "civibus" )
            , ( Accusative, "cives" )
            , ( Ablative, "civibus" )
            ]
        )
    , Word "city"
        (Noun ThirdDeclension
            Singular
            Feminine
            [ ( Nominative, "urbs" )
            , ( Genitive, "urbis" )
            , ( Dative, "urbi" )
            , ( Accusative, "urbem" )
            , ( Ablative, "urbe" )
            ]
        )
    , Word "cities"
        (Noun ThirdDeclension
            Plural
            Feminine
            [ ( Nominative, "urbes" )
            , ( Genitive, "urbium" )
            , ( Dative, "urbibus" )
            , ( Accusative, "urbes" )
            , ( Ablative, "urbibus" )
            ]
        )
    , Word "sea"
        (Noun ThirdDeclension
            Singular
            Neuter
            [ ( Nominative, "mare" )
            , ( Genitive, "maris" )
            , ( Dative, "mari" )
            , ( Accusative, "mare" )
            , ( Ablative, "mari" )
            ]
        )
    , Word "seas"
        (Noun ThirdDeclension
            Plural
            Neuter
            [ ( Nominative, "maria" )
            , ( Genitive, "marium" )
            , ( Dative, "maribus" )
            , ( Accusative, "maria" )
            , ( Ablative, "maribus" )
            ]
        )
    , Word "fruit"
        (Noun FourthDeclension
            Singular
            Masculine
            [ ( Nominative, "fructus" )
            , ( Genitive, "fructus" )
            , ( Dative, "fructui" )
            , ( Accusative, "fructum" )
            , ( Ablative, "fructu" )
            ]
        )
    , Word "fruits"
        (Noun FourthDeclension
            Plural
            Masculine
            [ ( Nominative, "fructus" )
            , ( Genitive, "fructuum" )
            , ( Dative, "fructibus" )
            , ( Accusative, "fructus" )
            , ( Ablative, "fructibus" )
            ]
        )
    , Word "horn"
        (Noun FourthDeclension
            Singular
            Neuter
            [ ( Nominative, "cornu" )
            , ( Genitive, "cornus" )
            , ( Dative, "cornu" )
            , ( Accusative, "cornu" )
            , ( Ablative, "cornu" )
            ]
        )
    , Word "horns"
        (Noun FourthDeclension
            Plural
            Neuter
            [ ( Nominative, "cornua" )
            , ( Genitive, "cornuum" )
            , ( Dative, "cornibus" )
            , ( Accusative, "cornua" )
            , ( Ablative, "cornibus" )
            ]
        )
    , Word "day"
        (Noun FifthDeclension
            Singular
            Masculine
            [ ( Nominative, "dies" )
            , ( Genitive, "diei" )
            , ( Dative, "diei" )
            , ( Accusative, "diem" )
            , ( Ablative, "die" )
            ]
        )
    , Word "days"
        (Noun FifthDeclension
            Plural
            Masculine
            [ ( Nominative, "dies" )
            , ( Genitive, "dierum" )
            , ( Dative, "diebus" )
            , ( Accusative, "dies" )
            , ( Ablative, "diebus" )
            ]
        )

    -- ADJECTIVES
    , Word "large"
        (Adjective SecondDeclension
            Singular
            Masculine
            [ ( Nominative, "magnus" )
            , ( Genitive, "magni" )
            , ( Dative, "magno" )
            , ( Accusative, "magnum" )
            , ( Ablative, "magno" )
            ]
        )
    , Word "large"
        (Adjective SecondDeclension
            Plural
            Masculine
            [ ( Nominative, "magni" )
            , ( Genitive, "magnorum" )
            , ( Dative, "magnis" )
            , ( Accusative, "magnos" )
            , ( Ablative, "magnis" )
            ]
        )
    , Word "large"
        (Adjective FirstDeclension
            Singular
            Feminine
            [ ( Nominative, "magna" )
            , ( Genitive, "magnae" )
            , ( Dative, "magnae" )
            , ( Accusative, "magnam" )
            , ( Ablative, "magna" )
            ]
        )
    , Word "large"
        (Adjective FirstDeclension
            Plural
            Feminine
            [ ( Nominative, "magnae" )
            , ( Genitive, "magnarum" )
            , ( Dative, "magnis" )
            , ( Accusative, "magnas" )
            , ( Ablative, "magnis" )
            ]
        )
    , Word "large"
        (Adjective SecondDeclension
            Singular
            Neuter
            [ ( Nominative, "magnum" )
            , ( Genitive, "magni" )
            , ( Dative, "magno" )
            , ( Accusative, "magnum" )
            , ( Ablative, "magno" )
            ]
        )
    , Word "large"
        (Adjective SecondDeclension
            Plural
            Neuter
            [ ( Nominative, "magna" )
            , ( Genitive, "magnorum" )
            , ( Dative, "magnis" )
            , ( Accusative, "magna" )
            , ( Ablative, "magnis" )
            ]
        )
    , Word "free"
        (Adjective SecondDeclension
            Singular
            Masculine
            [ ( Nominative, "liber" )
            , ( Genitive, "liberi" )
            , ( Dative, "libero" )
            , ( Accusative, "liberum" )
            , ( Ablative, "libero" )
            ]
        )
    , Word "free"
        (Adjective FirstDeclension
            Singular
            Feminine
            [ ( Nominative, "libera" )
            , ( Genitive, "liberae" )
            , ( Dative, "liberae" )
            , ( Accusative, "liberam" )
            , ( Ablative, "libera" )
            ]
        )
    , Word "free"
        (Adjective SecondDeclension
            Singular
            Neuter
            [ ( Nominative, "liberum" )
            , ( Genitive, "liberi" )
            , ( Dative, "libero" )
            , ( Accusative, "liberum" )
            , ( Ablative, "libero" )
            ]
        )
    , Word "beautiful"
        (Adjective SecondDeclension
            Singular
            Masculine
            [ ( Nominative, "pulcher" )
            , ( Genitive, "pulchri" )
            , ( Dative, "pulchro" )
            , ( Accusative, "pulchrum" )
            , ( Ablative, "pulchro" )
            ]
        )
    , Word "beautiful"
        (Adjective FirstDeclension
            Singular
            Feminine
            [ ( Nominative, "pulchra" )
            , ( Genitive, "pulchrae" )
            , ( Dative, "pulchrae" )
            , ( Accusative, "pulchram" )
            , ( Ablative, "pulchra" )
            ]
        )
    , Word "beautiful"
        (Adjective SecondDeclension
            Singular
            Neuter
            [ ( Nominative, "pulchrum" )
            , ( Genitive, "pulchri" )
            , ( Dative, "pulchro" )
            , ( Accusative, "pulchrum" )
            , ( Ablative, "pulchro" )
            ]
        )
    , Word "brave"
        (Adjective ThirdDeclension
            Singular
            Masculine
            [ ( Nominative, "fortis" )
            , ( Genitive, "fortis" )
            , ( Dative, "forti" )
            , ( Accusative, "fortem" )
            , ( Ablative, "forti" )
            ]
        )
    , Word "brave"
        (Adjective ThirdDeclension
            Plural
            Masculine
            [ ( Nominative, "fortes" )
            , ( Genitive, "fortium" )
            , ( Dative, "fortibus" )
            , ( Accusative, "fortes" )
            , ( Ablative, "fortibus" )
            ]
        )
    , Word "brave"
        (Adjective ThirdDeclension
            Singular
            Feminine
            [ ( Nominative, "fortis" )
            , ( Genitive, "fortis" )
            , ( Dative, "forti" )
            , ( Accusative, "fortem" )
            , ( Ablative, "forti" )
            ]
        )
    , Word "brave"
        (Adjective ThirdDeclension
            Plural
            Feminine
            [ ( Nominative, "fortes" )
            , ( Genitive, "fortium" )
            , ( Dative, "fortibus" )
            , ( Accusative, "fortes" )
            , ( Ablative, "fortibus" )
            ]
        )
    , Word "brave"
        (Adjective ThirdDeclension
            Singular
            Neuter
            [ ( Nominative, "forte" )
            , ( Genitive, "fortis" )
            , ( Dative, "forti" )
            , ( Accusative, "forte" )
            , ( Ablative, "forti" )
            ]
        )
    , Word "brave"
        (Adjective ThirdDeclension
            Plural
            Neuter
            [ ( Nominative, "fortia" )
            , ( Genitive, "fortium" )
            , ( Dative, "fortibus" )
            , ( Accusative, "fortia" )
            , ( Ablative, "fortibus" )
            ]
        )
    , Word "keen"
        (Adjective ThirdDeclension
            Singular
            Masculine
            [ ( Nominative, "acer" )
            , ( Genitive, "acris" )
            , ( Dative, "acri" )
            , ( Accusative, "acrem" )
            , ( Ablative, "acri" )
            ]
        )
    , Word "keen"
        (Adjective ThirdDeclension
            Plural
            Masculine
            [ ( Nominative, "acres" )
            , ( Genitive, "acrium" )
            , ( Dative, "acribus" )
            , ( Accusative, "acres" )
            , ( Ablative, "acribus" )
            ]
        )
    , Word "keen"
        (Adjective ThirdDeclension
            Singular
            Feminine
            [ ( Nominative, "acris" )
            , ( Genitive, "acris" )
            , ( Dative, "acri" )
            , ( Accusative, "acrem" )
            , ( Ablative, "acri" )
            ]
        )
    , Word "keen"
        (Adjective ThirdDeclension
            Plural
            Feminine
            [ ( Nominative, "acres" )
            , ( Genitive, "acrium" )
            , ( Dative, "acribus" )
            , ( Accusative, "acres" )
            , ( Ablative, "acribus" )
            ]
        )
    , Word "keen"
        (Adjective ThirdDeclension
            Singular
            Neuter
            [ ( Nominative, "acre" )
            , ( Genitive, "acris" )
            , ( Dative, "acri" )
            , ( Accusative, "acre" )
            , ( Ablative, "acri" )
            ]
        )
    , Word "keen"
        (Adjective ThirdDeclension
            Plural
            Neuter
            [ ( Nominative, "acria" )
            , ( Genitive, "acrium" )
            , ( Dative, "acribus" )
            , ( Accusative, "acria" )
            , ( Ablative, "acribus" )
            ]
        )
    , Word "powerful"
        (Adjective ThirdDeclension
            Singular
            Masculine
            [ ( Nominative, "potens" )
            , ( Genitive, "potentis" )
            , ( Dative, "potenti" )
            , ( Accusative, "potentem" )
            , ( Ablative, "potenti" )
            ]
        )
    , Word "powerful"
        (Adjective ThirdDeclension
            Plural
            Masculine
            [ ( Nominative, "potentes" )
            , ( Genitive, "potentium" )
            , ( Dative, "potentibus" )
            , ( Accusative, "potentes" )
            , ( Ablative, "potentibus" )
            ]
        )
    , Word "powerful"
        (Adjective ThirdDeclension
            Singular
            Feminine
            [ ( Nominative, "potens" )
            , ( Genitive, "potentis" )
            , ( Dative, "potenti" )
            , ( Accusative, "potentem" )
            , ( Ablative, "potenti" )
            ]
        )
    , Word "powerful"
        (Adjective ThirdDeclension
            Plural
            Feminine
            [ ( Nominative, "potentes" )
            , ( Genitive, "potentium" )
            , ( Dative, "potentibus" )
            , ( Accusative, "potentes" )
            , ( Ablative, "potentibus" )
            ]
        )
    , Word "powerful"
        (Adjective ThirdDeclension
            Singular
            Neuter
            [ ( Nominative, "potens" )
            , ( Genitive, "potentis" )
            , ( Dative, "potenti" )
            , ( Accusative, "potens" )
            , ( Ablative, "potenti" )
            ]
        )
    , Word "powerful"
        (Adjective ThirdDeclension
            Plural
            Neuter
            [ ( Nominative, "potentia" )
            , ( Genitive, "potentium" )
            , ( Dative, "potentibus" )
            , ( Accusative, "potentia" )
            , ( Ablative, "potentibus" )
            ]
        )
    , Word "braver"
        (Adjective ThirdDeclension
            Singular
            Masculine
            [ ( Nominative, "fortior" )
            , ( Genitive, "fortioris" )
            , ( Dative, "fortiori" )
            , ( Accusative, "fortiorem" )
            , ( Ablative, "fortiore" )
            ]
        )
    , Word "braver"
        (Adjective ThirdDeclension
            Plural
            Masculine
            [ ( Nominative, "fortiores" )
            , ( Genitive, "fortiorum" )
            , ( Dative, "fortioribus" )
            , ( Accusative, "fortiores" )
            , ( Ablative, "fortioribus" )
            ]
        )
    , Word "braver"
        (Adjective ThirdDeclension
            Singular
            Feminine
            [ ( Nominative, "fortior" )
            , ( Genitive, "fortioris" )
            , ( Dative, "fortiori" )
            , ( Accusative, "fortiorem" )
            , ( Ablative, "fortiore" )
            ]
        )
    , Word "braver"
        (Adjective ThirdDeclension
            Plural
            Feminine
            [ ( Nominative, "fortiores" )
            , ( Genitive, "fortiorum" )
            , ( Dative, "fortioribus" )
            , ( Accusative, "fortiores" )
            , ( Ablative, "fortioribus" )
            ]
        )
    , Word "braver"
        (Adjective ThirdDeclension
            Singular
            Neuter
            [ ( Nominative, "fortius" )
            , ( Genitive, "fortioris" )
            , ( Dative, "fortiori" )
            , ( Accusative, "fortius" )
            , ( Ablative, "fortiore" )
            ]
        )
    , Word "braver"
        (Adjective ThirdDeclension
            Plural
            Neuter
            [ ( Nominative, "fortiora" )
            , ( Genitive, "fortiorum" )
            , ( Dative, "fortioribus" )
            , ( Accusative, "fortiora" )
            , ( Ablative, "fortioribus" )
            ]
        )

    -- VERBS
    ]
