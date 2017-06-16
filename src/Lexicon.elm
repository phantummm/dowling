module Lexicon exposing (..)


type alias Word =
    { inEnglish : String
    , grammar : Grammar
    }


type alias CaseList =
    List NounCase


type alias ConjugationList =
    List VerbConjugation


type alias NounCase =
    ( Case, String )


type alias VerbConjugation =
    ( VerbPerson, String )


type alias VerbPerson =
    ( Person, Number )


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


type Person
    = FirstPerson
    | SecondPerson
    | ThirdPerson


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
    | Imperative


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
    , Word "praise"
        (Verb Indicative
            Active
            Present
            [ ( ( FirstPerson, Singular ), "laudō" )
            , ( ( SecondPerson, Singular ), "laudas" )
            , ( ( ThirdPerson, Singular ), "laudat" )
            , ( ( FirstPerson, Plural ), "laudamus" )
            , ( ( SecondPerson, Plural ), "laudatis" )
            , ( ( ThirdPerson, Plural ), "laudant" )
            ]
        )
    , Word "remind"
        (Verb Indicative
            Active
            Present
            [ ( ( FirstPerson, Singular ), "moneō" )
            , ( ( SecondPerson, Singular ), "mones" )
            , ( ( ThirdPerson, Singular ), "monet" )
            , ( ( FirstPerson, Plural ), "monemus" )
            , ( ( SecondPerson, Plural ), "monetis" )
            , ( ( ThirdPerson, Plural ), "monent" )
            ]
        )
    , Word "lead"
        (Verb Indicative
            Active
            Present
            [ ( ( FirstPerson, Singular ), "ducō" )
            , ( ( SecondPerson, Singular ), "ducis" )
            , ( ( ThirdPerson, Singular ), "ducit" )
            , ( ( FirstPerson, Plural ), "dúcimus" )
            , ( ( SecondPerson, Plural ), "dúcitis" )
            , ( ( ThirdPerson, Plural ), "ducunt" )
            ]
        )
    , Word "hear"
        (Verb Indicative
            Active
            Present
            [ ( ( FirstPerson, Singular ), "audiō" )
            , ( ( SecondPerson, Singular ), "audīs" )
            , ( ( ThirdPerson, Singular ), "audit" )
            , ( ( FirstPerson, Plural ), "audīmus" )
            , ( ( SecondPerson, Plural ), "audītis" )
            , ( ( ThirdPerson, Plural ), "audiunt" )
            ]
        )
    , Word "take"
        (Verb Indicative
            Active
            Present
            [ ( ( FirstPerson, Singular ), "capiō" )
            , ( ( SecondPerson, Singular ), "capīs" )
            , ( ( ThirdPerson, Singular ), "capit" )
            , ( ( FirstPerson, Plural ), "capimus" )
            , ( ( SecondPerson, Plural ), "capitis" )
            , ( ( ThirdPerson, Plural ), "capiunt" )
            ]
        )
    , Word "praise"
        (Verb Indicative
            Active
            Imperfect
            [ ( ( FirstPerson, Singular ), "laudabam" )
            , ( ( SecondPerson, Singular ), "laudabas" )
            , ( ( ThirdPerson, Singular ), "laudabat" )
            , ( ( FirstPerson, Plural ), "laudabamus" )
            , ( ( SecondPerson, Plural ), "laudabatis" )
            , ( ( ThirdPerson, Plural ), "laudabant" )
            ]
        )
    , Word "remind"
        (Verb Indicative
            Active
            Imperfect
            [ ( ( FirstPerson, Singular ), "monebam" )
            , ( ( SecondPerson, Singular ), "monebas" )
            , ( ( ThirdPerson, Singular ), "monebat" )
            , ( ( FirstPerson, Plural ), "monebamus" )
            , ( ( SecondPerson, Plural ), "monebatis" )
            , ( ( ThirdPerson, Plural ), "monebant" )
            ]
        )
    , Word "lead"
        (Verb Indicative
            Active
            Imperfect
            [ ( ( FirstPerson, Singular ), "ducebam" )
            , ( ( SecondPerson, Singular ), "ducebas" )
            , ( ( ThirdPerson, Singular ), "ducebat" )
            , ( ( FirstPerson, Plural ), "ducebamus" )
            , ( ( SecondPerson, Plural ), "ducebatis" )
            , ( ( ThirdPerson, Plural ), "ducebant" )
            ]
        )
    , Word "hear"
        (Verb Indicative
            Active
            Imperfect
            [ ( ( FirstPerson, Singular ), "audiebam" )
            , ( ( SecondPerson, Singular ), "audiebas" )
            , ( ( ThirdPerson, Singular ), "audiebat" )
            , ( ( FirstPerson, Plural ), "audiebamus" )
            , ( ( SecondPerson, Plural ), "audiebatis" )
            , ( ( ThirdPerson, Plural ), "audiebant" )
            ]
        )
    , Word "take"
        (Verb Indicative
            Active
            Imperfect
            [ ( ( FirstPerson, Singular ), "capiebam" )
            , ( ( SecondPerson, Singular ), "capiebas" )
            , ( ( ThirdPerson, Singular ), "capiebat" )
            , ( ( FirstPerson, Plural ), "capiebamus" )
            , ( ( SecondPerson, Plural ), "capiebatis" )
            , ( ( ThirdPerson, Plural ), "capiebant" )
            ]
        )
    , Word "praise"
        (Verb Indicative
            Active
            Future
            [ ( ( FirstPerson, Singular ), "laudabo" )
            , ( ( SecondPerson, Singular ), "laudabis" )
            , ( ( ThirdPerson, Singular ), "laudabit" )
            , ( ( FirstPerson, Plural ), "laudabimus" )
            , ( ( SecondPerson, Plural ), "laudabitis" )
            , ( ( ThirdPerson, Plural ), "laudabunt" )
            ]
        )
    , Word "remind"
        (Verb Indicative
            Active
            Future
            [ ( ( FirstPerson, Singular ), "monebo" )
            , ( ( SecondPerson, Singular ), "monebis" )
            , ( ( ThirdPerson, Singular ), "monebit" )
            , ( ( FirstPerson, Plural ), "monebimus" )
            , ( ( SecondPerson, Plural ), "moneybitis" )
            , ( ( ThirdPerson, Plural ), "monebunt" )
            ]
        )
    , Word "lead"
        (Verb Indicative
            Active
            Future
            [ ( ( FirstPerson, Singular ), "ducam" )
            , ( ( SecondPerson, Singular ), "duces" )
            , ( ( ThirdPerson, Singular ), "ducet" )
            , ( ( FirstPerson, Plural ), "ducemus" )
            , ( ( SecondPerson, Plural ), "ducetis" )
            , ( ( ThirdPerson, Plural ), "ducent" )
            ]
        )
    , Word "hear"
        (Verb Indicative
            Active
            Future
            [ ( ( FirstPerson, Singular ), "audiam" )
            , ( ( SecondPerson, Singular ), "audies" )
            , ( ( ThirdPerson, Singular ), "audiet" )
            , ( ( FirstPerson, Plural ), "audiemus" )
            , ( ( SecondPerson, Plural ), "audietis" )
            , ( ( ThirdPerson, Plural ), "audient" )
            ]
        )
    , Word "take"
        (Verb Indicative
            Active
            Future
            [ ( ( FirstPerson, Singular ), "capiam" )
            , ( ( SecondPerson, Singular ), "capies" )
            , ( ( ThirdPerson, Singular ), "capiet" )
            , ( ( FirstPerson, Plural ), "capiemus" )
            , ( ( SecondPerson, Plural ), "capietis" )
            , ( ( ThirdPerson, Plural ), "capient" )
            ]
        )
    , Word "praise"
        (Verb Indicative
            Active
            Perfect
            [ ( ( FirstPerson, Singular ), "laudavi" )
            , ( ( SecondPerson, Singular ), "laudavisti" )
            , ( ( ThirdPerson, Singular ), "laudavit" )
            , ( ( FirstPerson, Plural ), "laudavimus" )
            , ( ( SecondPerson, Plural ), "laudavistis" )
            , ( ( ThirdPerson, Plural ), "laudaverunt" )
            ]
        )
    , Word "remind"
        (Verb Indicative
            Active
            Perfect
            [ ( ( FirstPerson, Singular ), "monui" )
            , ( ( SecondPerson, Singular ), "monuisti" )
            , ( ( ThirdPerson, Singular ), "monuit" )
            , ( ( FirstPerson, Plural ), "monuimus" )
            , ( ( SecondPerson, Plural ), "monuistis" )
            , ( ( ThirdPerson, Plural ), "monuerunt" )
            ]
        )
    , Word "lead"
        (Verb Indicative
            Active
            Perfect
            [ ( ( FirstPerson, Singular ), "duxi" )
            , ( ( SecondPerson, Singular ), "duxisti" )
            , ( ( ThirdPerson, Singular ), "duxit" )
            , ( ( FirstPerson, Plural ), "duximus" )
            , ( ( SecondPerson, Plural ), "duxistis" )
            , ( ( ThirdPerson, Plural ), "duxerunt" )
            ]
        )
    , Word "hear"
        (Verb Indicative
            Active
            Perfect
            [ ( ( FirstPerson, Singular ), "audivi" )
            , ( ( SecondPerson, Singular ), "audivisti" )
            , ( ( ThirdPerson, Singular ), "audivit" )
            , ( ( FirstPerson, Plural ), "audivimus" )
            , ( ( SecondPerson, Plural ), "audivistis" )
            , ( ( ThirdPerson, Plural ), "audiverunt" )
            ]
        )
    , Word "take"
        (Verb Indicative
            Active
            Perfect
            [ ( ( FirstPerson, Singular ), "cepi" )
            , ( ( SecondPerson, Singular ), "cepisti" )
            , ( ( ThirdPerson, Singular ), "cepit" )
            , ( ( FirstPerson, Plural ), "cepimus" )
            , ( ( SecondPerson, Plural ), "capistis" )
            , ( ( ThirdPerson, Plural ), "ceperunt" )
            ]
        )
    , Word "praise"
        (Verb Indicative
            Active
            Pluperfect
            [ ( ( FirstPerson, Singular ), "laudaveram" )
            , ( ( SecondPerson, Singular ), "laudaveras" )
            , ( ( ThirdPerson, Singular ), "laudaverat" )
            , ( ( FirstPerson, Plural ), "laudaveramus" )
            , ( ( SecondPerson, Plural ), "laudaveratis" )
            , ( ( ThirdPerson, Plural ), "laudaverant" )
            ]
        )
    , Word "remind"
        (Verb Indicative
            Active
            Pluperfect
            [ ( ( FirstPerson, Singular ), "monueram" )
            , ( ( SecondPerson, Singular ), "monueras" )
            , ( ( ThirdPerson, Singular ), "monuerat" )
            , ( ( FirstPerson, Plural ), "monueramus" )
            , ( ( SecondPerson, Plural ), "monueratis" )
            , ( ( ThirdPerson, Plural ), "monuerant" )
            ]
        )
    , Word "lead"
        (Verb Indicative
            Active
            Pluperfect
            [ ( ( FirstPerson, Singular ), "duxeram" )
            , ( ( SecondPerson, Singular ), "duxeras" )
            , ( ( ThirdPerson, Singular ), "duxerat" )
            , ( ( FirstPerson, Plural ), "duxeramus" )
            , ( ( SecondPerson, Plural ), "duxeratis" )
            , ( ( ThirdPerson, Plural ), "duxerant" )
            ]
        )
    , Word "hear"
        (Verb Indicative
            Active
            Pluperfect
            [ ( ( FirstPerson, Singular ), "audiveram" )
            , ( ( SecondPerson, Singular ), "audiveras" )
            , ( ( ThirdPerson, Singular ), "audiverat" )
            , ( ( FirstPerson, Plural ), "audiveramus" )
            , ( ( SecondPerson, Plural ), "audiveratis" )
            , ( ( ThirdPerson, Plural ), "audiverant" )
            ]
        )
    , Word "take"
        (Verb Indicative
            Active
            Pluperfect
            [ ( ( FirstPerson, Singular ), "ceperam" )
            , ( ( SecondPerson, Singular ), "ceperas" )
            , ( ( ThirdPerson, Singular ), "ceperat" )
            , ( ( FirstPerson, Plural ), "ceperamus" )
            , ( ( SecondPerson, Plural ), "ceperatis" )
            , ( ( ThirdPerson, Plural ), "ceperant" )
            ]
        )
    , Word "praise"
        (Verb Indicative
            Active
            FuturePerfect
            [ ( ( FirstPerson, Singular ), "laudavero" )
            , ( ( SecondPerson, Singular ), "laudaveris" )
            , ( ( ThirdPerson, Singular ), "laudaverit" )
            , ( ( FirstPerson, Plural ), "laudaverimus" )
            , ( ( SecondPerson, Plural ), "laudaveritis" )
            , ( ( ThirdPerson, Plural ), "laudaverint" )
            ]
        )
    , Word "remind"
        (Verb Indicative
            Active
            FuturePerfect
            [ ( ( FirstPerson, Singular ), "monuero" )
            , ( ( SecondPerson, Singular ), "monueris" )
            , ( ( ThirdPerson, Singular ), "monuerit" )
            , ( ( FirstPerson, Plural ), "monuerimus" )
            , ( ( SecondPerson, Plural ), "monueritis" )
            , ( ( ThirdPerson, Plural ), "monuerint" )
            ]
        )
    , Word "lead"
        (Verb Indicative
            Active
            FuturePerfect
            [ ( ( FirstPerson, Singular ), "duxero" )
            , ( ( SecondPerson, Singular ), "duxeris" )
            , ( ( ThirdPerson, Singular ), "duxerit" )
            , ( ( FirstPerson, Plural ), "duxerimus" )
            , ( ( SecondPerson, Plural ), "duxeritis" )
            , ( ( ThirdPerson, Plural ), "duxerint" )
            ]
        )
    , Word "hear"
        (Verb Indicative
            Active
            FuturePerfect
            [ ( ( FirstPerson, Singular ), "audivero" )
            , ( ( SecondPerson, Singular ), "audiveris" )
            , ( ( ThirdPerson, Singular ), "audiverit" )
            , ( ( FirstPerson, Plural ), "audiverimus" )
            , ( ( SecondPerson, Plural ), "audiveritis" )
            , ( ( ThirdPerson, Plural ), "audiverint" )
            ]
        )
    , Word "take"
        (Verb Indicative
            Active
            FuturePerfect
            [ ( ( FirstPerson, Singular ), "cepero" )
            , ( ( SecondPerson, Singular ), "ceperis" )
            , ( ( ThirdPerson, Singular ), "ceperit" )
            , ( ( FirstPerson, Plural ), "ceperimus" )
            , ( ( SecondPerson, Plural ), "ceperitis" )
            , ( ( ThirdPerson, Plural ), "ceperint" )
            ]
        )
    , Word "praise"
        (Verb Indicative
            Passive
            Present
            [ ( ( FirstPerson, Singular ), "laudor" )
            , ( ( SecondPerson, Singular ), "laudaris" )
            , ( ( ThirdPerson, Singular ), "laudatur" )
            , ( ( FirstPerson, Plural ), "laudamur" )
            , ( ( SecondPerson, Plural ), "laudamini" )
            , ( ( ThirdPerson, Plural ), "laudantur" )
            ]
        )
    , Word "remind"
        (Verb Indicative
            Passive
            Present
            [ ( ( FirstPerson, Singular ), "moneor" )
            , ( ( SecondPerson, Singular ), "moneris" )
            , ( ( ThirdPerson, Singular ), "monetur" )
            , ( ( FirstPerson, Plural ), "monemur" )
            , ( ( SecondPerson, Plural ), "monemini" )
            , ( ( ThirdPerson, Plural ), "monentur" )
            ]
        )
    , Word "lead"
        (Verb Indicative
            Passive
            Present
            [ ( ( FirstPerson, Singular ), "ducor" )
            , ( ( SecondPerson, Singular ), "duceris" )
            , ( ( ThirdPerson, Singular ), "ducitur" )
            , ( ( FirstPerson, Plural ), "ducimur" )
            , ( ( SecondPerson, Plural ), "ducimini" )
            , ( ( ThirdPerson, Plural ), "ducuntur" )
            ]
        )
    , Word "hear"
        (Verb Indicative
            Passive
            Present
            [ ( ( FirstPerson, Singular ), "audior" )
            , ( ( SecondPerson, Singular ), "audiris" )
            , ( ( ThirdPerson, Singular ), "auditur" )
            , ( ( FirstPerson, Plural ), "audimur" )
            , ( ( SecondPerson, Plural ), "audimini" )
            , ( ( ThirdPerson, Plural ), "audiuntur" )
            ]
        )
    , Word "take"
        (Verb Indicative
            Passive
            Present
            [ ( ( FirstPerson, Singular ), "capior" )
            , ( ( SecondPerson, Singular ), "caperis" )
            , ( ( ThirdPerson, Singular ), "capitur" )
            , ( ( FirstPerson, Plural ), "capimur" )
            , ( ( SecondPerson, Plural ), "capimini" )
            , ( ( ThirdPerson, Plural ), "capuintur" )
            ]
        )
    , Word "praise"
        (Verb Indicative
            Passive
            Imperfect
            [ ( ( FirstPerson, Singular ), "laudabar" )
            , ( ( SecondPerson, Singular ), "laudabaris" )
            , ( ( ThirdPerson, Singular ), "laudabatur" )
            , ( ( FirstPerson, Plural ), "laudabamur" )
            , ( ( SecondPerson, Plural ), "laudabamini" )
            , ( ( ThirdPerson, Plural ), "laudabantur" )
            ]
        )
    , Word "remind"
        (Verb Indicative
            Passive
            Imperfect
            [ ( ( FirstPerson, Singular ), "moneor" )
            , ( ( SecondPerson, Singular ), "moneris" )
            , ( ( ThirdPerson, Singular ), "monetur" )
            , ( ( FirstPerson, Plural ), "monemur" )
            , ( ( SecondPerson, Plural ), "monemini" )
            , ( ( ThirdPerson, Plural ), "monentur" )
            ]
        )
    , Word "lead"
        (Verb Indicative
            Passive
            Imperfect
            [ ( ( FirstPerson, Singular ), "ducebar" )
            , ( ( SecondPerson, Singular ), "ducebaris" )
            , ( ( ThirdPerson, Singular ), "ducebatur" )
            , ( ( FirstPerson, Plural ), "ducebamur" )
            , ( ( SecondPerson, Plural ), "ducebamini" )
            , ( ( ThirdPerson, Plural ), "ducebantur" )
            ]
        )
    , Word "hear"
        (Verb Indicative
            Passive
            Imperfect
            [ ( ( FirstPerson, Singular ), "audiebar" )
            , ( ( SecondPerson, Singular ), "audiebaris" )
            , ( ( ThirdPerson, Singular ), "audiebatur" )
            , ( ( FirstPerson, Plural ), "audiebamur" )
            , ( ( SecondPerson, Plural ), "audiebamini" )
            , ( ( ThirdPerson, Plural ), "audiebantur" )
            ]
        )
    , Word "take"
        (Verb Indicative
            Passive
            Imperfect
            [ ( ( FirstPerson, Singular ), "capiebar" )
            , ( ( SecondPerson, Singular ), "capiebaris" )
            , ( ( ThirdPerson, Singular ), "capiebatur" )
            , ( ( FirstPerson, Plural ), "capiebamur" )
            , ( ( SecondPerson, Plural ), "capiebamini" )
            , ( ( ThirdPerson, Plural ), "capiebantur" )
            ]
        )
    , Word "praise"
        (Verb Indicative
            Passive
            Future
            [ ( ( FirstPerson, Singular ), "laudabor" )
            , ( ( SecondPerson, Singular ), "laudaberis" )
            , ( ( ThirdPerson, Singular ), "laudabitur" )
            , ( ( FirstPerson, Plural ), "laudabimur" )
            , ( ( SecondPerson, Plural ), "laudabimini" )
            , ( ( ThirdPerson, Plural ), "laudabuntur" )
            ]
        )
    , Word "remind"
        (Verb Indicative
            Passive
            Future
            [ ( ( FirstPerson, Singular ), "monebor" )
            , ( ( SecondPerson, Singular ), "moneberis" )
            , ( ( ThirdPerson, Singular ), "monebitur" )
            , ( ( FirstPerson, Plural ), "monebimur" )
            , ( ( SecondPerson, Plural ), "monebimini" )
            , ( ( ThirdPerson, Plural ), "monebuntur" )
            ]
        )
    , Word "lead"
        (Verb Indicative
            Passive
            Future
            [ ( ( FirstPerson, Singular ), "ducar" )
            , ( ( SecondPerson, Singular ), "duceris" )
            , ( ( ThirdPerson, Singular ), "ducetur" )
            , ( ( FirstPerson, Plural ), "ducemur" )
            , ( ( SecondPerson, Plural ), "ducemini" )
            , ( ( ThirdPerson, Plural ), "ducentur" )
            ]
        )
    , Word "hear"
        (Verb Indicative
            Passive
            Future
            [ ( ( FirstPerson, Singular ), "audiar" )
            , ( ( SecondPerson, Singular ), "audieris" )
            , ( ( ThirdPerson, Singular ), "audietur" )
            , ( ( FirstPerson, Plural ), "audiemur" )
            , ( ( SecondPerson, Plural ), "audiemini" )
            , ( ( ThirdPerson, Plural ), "audientur" )
            ]
        )
    , Word "take"
        (Verb Indicative
            Passive
            Future
            [ ( ( FirstPerson, Singular ), "capiar" )
            , ( ( SecondPerson, Singular ), "capieris" )
            , ( ( ThirdPerson, Singular ), "capietur" )
            , ( ( FirstPerson, Plural ), "capiemur" )
            , ( ( SecondPerson, Plural ), "capiemini" )
            , ( ( ThirdPerson, Plural ), "capientur" )
            ]
        )
    , Word "praise"
        (Verb Indicative
            Passive
            Perfect
            [ ( ( FirstPerson, Singular ), "laudatus sum" )
            , ( ( SecondPerson, Singular ), "laudatus es" )
            , ( ( ThirdPerson, Singular ), "laudatus est" )
            , ( ( FirstPerson, Plural ), "laudati sumus" )
            , ( ( SecondPerson, Plural ), "laudati estis" )
            , ( ( ThirdPerson, Plural ), "laudati sunt" )
            ]
        )
    , Word "remind"
        (Verb Indicative
            Passive
            Perfect
            [ ( ( FirstPerson, Singular ), "monitus sum" )
            , ( ( SecondPerson, Singular ), "monitus es" )
            , ( ( ThirdPerson, Singular ), "monitus est" )
            , ( ( FirstPerson, Plural ), "moniti sumus" )
            , ( ( SecondPerson, Plural ), "moniti estis" )
            , ( ( ThirdPerson, Plural ), "monitis sunt" )
            ]
        )
    , Word "lead"
        (Verb Indicative
            Passive
            Perfect
            [ ( ( FirstPerson, Singular ), "ductus sum" )
            , ( ( SecondPerson, Singular ), "ductus es" )
            , ( ( ThirdPerson, Singular ), "ductus est" )
            , ( ( FirstPerson, Plural ), "ducti sumus" )
            , ( ( SecondPerson, Plural ), "ducti estis" )
            , ( ( ThirdPerson, Plural ), "ducti sunt" )
            ]
        )
    , Word "hear"
        (Verb Indicative
            Passive
            Perfect
            [ ( ( FirstPerson, Singular ), "auditus sum" )
            , ( ( SecondPerson, Singular ), "auditus es" )
            , ( ( ThirdPerson, Singular ), "auditus est" )
            , ( ( FirstPerson, Plural ), "auditi sumus" )
            , ( ( SecondPerson, Plural ), "auditi estis" )
            , ( ( ThirdPerson, Plural ), "auditi sunt" )
            ]
        )
    , Word "take"
        (Verb Indicative
            Passive
            Perfect
            [ ( ( FirstPerson, Singular ), "captus sum" )
            , ( ( SecondPerson, Singular ), "captus es" )
            , ( ( ThirdPerson, Singular ), "captus est" )
            , ( ( FirstPerson, Plural ), "capti sumus" )
            , ( ( SecondPerson, Plural ), "capti estis" )
            , ( ( ThirdPerson, Plural ), "capti sunt" )
            ]
        )
    , Word "praise"
        (Verb Indicative
            Passive
            Pluperfect
            [ ( ( FirstPerson, Singular ), "laudatus eram" )
            , ( ( SecondPerson, Singular ), "laudatus eras" )
            , ( ( ThirdPerson, Singular ), "laudatus erat" )
            , ( ( FirstPerson, Plural ), "laudati eramus" )
            , ( ( SecondPerson, Plural ), "laudati eratis" )
            , ( ( ThirdPerson, Plural ), "laudati erant" )
            ]
        )
    , Word "remind"
        (Verb Indicative
            Passive
            Pluperfect
            [ ( ( FirstPerson, Singular ), "monitus eram" )
            , ( ( SecondPerson, Singular ), "monitus eras" )
            , ( ( ThirdPerson, Singular ), "monitus erat" )
            , ( ( FirstPerson, Plural ), "moniti eramus" )
            , ( ( SecondPerson, Plural ), "moniti eratis" )
            , ( ( ThirdPerson, Plural ), "moniti erant" )
            ]
        )
    , Word "lead"
        (Verb Indicative
            Passive
            Pluperfect
            [ ( ( FirstPerson, Singular ), "ductus eram" )
            , ( ( SecondPerson, Singular ), "ductus eras" )
            , ( ( ThirdPerson, Singular ), "ductus erat" )
            , ( ( FirstPerson, Plural ), "ducti eramus" )
            , ( ( SecondPerson, Plural ), "ducti eratis" )
            , ( ( ThirdPerson, Plural ), "ducti erant" )
            ]
        )
    , Word "hear"
        (Verb Indicative
            Passive
            Pluperfect
            [ ( ( FirstPerson, Singular ), "auditus eram" )
            , ( ( SecondPerson, Singular ), "auditus eras" )
            , ( ( ThirdPerson, Singular ), "auditus erat" )
            , ( ( FirstPerson, Plural ), "auditi eramus" )
            , ( ( SecondPerson, Plural ), "auditi eratis" )
            , ( ( ThirdPerson, Plural ), "auditi erant" )
            ]
        )
    , Word "take"
        (Verb Indicative
            Passive
            Pluperfect
            [ ( ( FirstPerson, Singular ), "captus eram" )
            , ( ( SecondPerson, Singular ), "captus eras" )
            , ( ( ThirdPerson, Singular ), "captus erat" )
            , ( ( FirstPerson, Plural ), "capti eramus" )
            , ( ( SecondPerson, Plural ), "capti eratis" )
            , ( ( ThirdPerson, Plural ), "capti erant" )
            ]
        )
    , Word "praise"
        (Verb Indicative
            Passive
            FuturePerfect
            [ ( ( FirstPerson, Singular ), "laudatus ero" )
            , ( ( SecondPerson, Singular ), "laudatus eris" )
            , ( ( ThirdPerson, Singular ), "laudatus erit" )
            , ( ( FirstPerson, Plural ), "laudati erimus" )
            , ( ( SecondPerson, Plural ), "laudati eritis" )
            , ( ( ThirdPerson, Plural ), "laudati erunt" )
            ]
        )
    , Word "remind"
        (Verb Indicative
            Passive
            FuturePerfect
            [ ( ( FirstPerson, Singular ), "monitus ero" )
            , ( ( SecondPerson, Singular ), "monitus eris" )
            , ( ( ThirdPerson, Singular ), "monitus erit" )
            , ( ( FirstPerson, Plural ), "moniti erimus" )
            , ( ( SecondPerson, Plural ), "moniti eritis" )
            , ( ( ThirdPerson, Plural ), "moniti erunt" )
            ]
        )
    , Word "lead"
        (Verb Indicative
            Passive
            FuturePerfect
            [ ( ( FirstPerson, Singular ), "ductus ero" )
            , ( ( SecondPerson, Singular ), "ductus eris" )
            , ( ( ThirdPerson, Singular ), "ductus erit" )
            , ( ( FirstPerson, Plural ), "ducti erimus" )
            , ( ( SecondPerson, Plural ), "ducti eritis" )
            , ( ( ThirdPerson, Plural ), "ducti erunt" )
            ]
        )
    , Word "hear"
        (Verb Indicative
            Passive
            FuturePerfect
            [ ( ( FirstPerson, Singular ), "auditus ero" )
            , ( ( SecondPerson, Singular ), "auditus eris" )
            , ( ( ThirdPerson, Singular ), "auditus erit" )
            , ( ( FirstPerson, Plural ), "auditi erimus" )
            , ( ( SecondPerson, Plural ), "auditi eritis" )
            , ( ( ThirdPerson, Plural ), "auditi erunt" )
            ]
        )
    , Word "take"
        (Verb Indicative
            Passive
            FuturePerfect
            [ ( ( FirstPerson, Singular ), "captus ero" )
            , ( ( SecondPerson, Singular ), "captus eris" )
            , ( ( ThirdPerson, Singular ), "captus erit" )
            , ( ( FirstPerson, Plural ), "capti erimus" )
            , ( ( SecondPerson, Plural ), "capti eritis" )
            , ( ( ThirdPerson, Plural ), "capti erunt" )
            ]
        )
    , Word "praise"
        (Verb Subjunctive
            Active
            Present
            [ ( ( FirstPerson, Singular ), "laudem" )
            , ( ( SecondPerson, Singular ), "laudes" )
            , ( ( ThirdPerson, Singular ), "laudet" )
            , ( ( FirstPerson, Plural ), "laudemus" )
            , ( ( SecondPerson, Plural ), "laudetis" )
            , ( ( ThirdPerson, Plural ), "laudent" )
            ]
        )
    , Word "remind"
        (Verb Subjunctive
            Active
            Present
            [ ( ( FirstPerson, Singular ), "moneam" )
            , ( ( SecondPerson, Singular ), "moneas" )
            , ( ( ThirdPerson, Singular ), "moneat" )
            , ( ( FirstPerson, Plural ), "moneamus" )
            , ( ( SecondPerson, Plural ), "moneatis" )
            , ( ( ThirdPerson, Plural ), "moneant" )
            ]
        )
    , Word "lead"
        (Verb Subjunctive
            Active
            Present
            [ ( ( FirstPerson, Singular ), "ducam" )
            , ( ( SecondPerson, Singular ), "ducas" )
            , ( ( ThirdPerson, Singular ), "ducat" )
            , ( ( FirstPerson, Plural ), "ducamus" )
            , ( ( SecondPerson, Plural ), "ducatis" )
            , ( ( ThirdPerson, Plural ), "ducant" )
            ]
        )
    , Word "hear"
        (Verb Subjunctive
            Active
            Present
            [ ( ( FirstPerson, Singular ), "audiam" )
            , ( ( SecondPerson, Singular ), "audias" )
            , ( ( ThirdPerson, Singular ), "audiat" )
            , ( ( FirstPerson, Plural ), "audiamus" )
            , ( ( SecondPerson, Plural ), "audiatis" )
            , ( ( ThirdPerson, Plural ), "audiant" )
            ]
        )
    , Word "take"
        (Verb Subjunctive
            Active
            Present
            [ ( ( FirstPerson, Singular ), "capiam" )
            , ( ( SecondPerson, Singular ), "capias" )
            , ( ( ThirdPerson, Singular ), "capiat" )
            , ( ( FirstPerson, Plural ), "capiamus" )
            , ( ( SecondPerson, Plural ), "capiatis" )
            , ( ( ThirdPerson, Plural ), "capiant" )
            ]
        )
    , Word "praise"
        (Verb Subjunctive
            Active
            Imperfect
            [ ( ( FirstPerson, Singular ), "laudarem" )
            , ( ( SecondPerson, Singular ), "laudares" )
            , ( ( ThirdPerson, Singular ), "laudaret" )
            , ( ( FirstPerson, Plural ), "laudaremus" )
            , ( ( SecondPerson, Plural ), "laudaretis" )
            , ( ( ThirdPerson, Plural ), "laudarent" )
            ]
        )
    , Word "remind"
        (Verb Subjunctive
            Active
            Imperfect
            [ ( ( FirstPerson, Singular ), "monerem" )
            , ( ( SecondPerson, Singular ), "moneres" )
            , ( ( ThirdPerson, Singular ), "moneret" )
            , ( ( FirstPerson, Plural ), "moneremus" )
            , ( ( SecondPerson, Plural ), "moneretis" )
            , ( ( ThirdPerson, Plural ), "monerent" )
            ]
        )
    , Word "lead"
        (Verb Subjunctive
            Active
            Imperfect
            [ ( ( FirstPerson, Singular ), "ducerem" )
            , ( ( SecondPerson, Singular ), "duceres" )
            , ( ( ThirdPerson, Singular ), "duceret" )
            , ( ( FirstPerson, Plural ), "duceremus" )
            , ( ( SecondPerson, Plural ), "duceretis" )
            , ( ( ThirdPerson, Plural ), "ducerent" )
            ]
        )
    , Word "hear"
        (Verb Subjunctive
            Active
            Imperfect
            [ ( ( FirstPerson, Singular ), "audirem" )
            , ( ( SecondPerson, Singular ), "audires" )
            , ( ( ThirdPerson, Singular ), "audiret" )
            , ( ( FirstPerson, Plural ), "audiremus" )
            , ( ( SecondPerson, Plural ), "audiretis" )
            , ( ( ThirdPerson, Plural ), "audirent" )
            ]
        )
    , Word "take"
        (Verb Subjunctive
            Active
            Imperfect
            [ ( ( FirstPerson, Singular ), "caperem" )
            , ( ( SecondPerson, Singular ), "caperes" )
            , ( ( ThirdPerson, Singular ), "caperet" )
            , ( ( FirstPerson, Plural ), "caperemus" )
            , ( ( SecondPerson, Plural ), "caperetis" )
            , ( ( ThirdPerson, Plural ), "caperent" )
            ]
        )
    , Word "praise"
        (Verb Subjunctive
            Active
            Pluperfect
            [ ( ( FirstPerson, Singular ), "laudavissem" )
            , ( ( SecondPerson, Singular ), "laudavisses" )
            , ( ( ThirdPerson, Singular ), "laudavisset" )
            , ( ( FirstPerson, Plural ), "laudavissemus" )
            , ( ( SecondPerson, Plural ), "laudavissetis" )
            , ( ( ThirdPerson, Plural ), "laudavissent" )
            ]
        )
    , Word "remind"
        (Verb Subjunctive
            Active
            Pluperfect
            [ ( ( FirstPerson, Singular ), "monuissem" )
            , ( ( SecondPerson, Singular ), "monuisses" )
            , ( ( ThirdPerson, Singular ), "monuisset" )
            , ( ( FirstPerson, Plural ), "monuissemus" )
            , ( ( SecondPerson, Plural ), "monuissetis" )
            , ( ( ThirdPerson, Plural ), "monuissent" )
            ]
        )
    , Word "lead"
        (Verb Subjunctive
            Active
            Pluperfect
            [ ( ( FirstPerson, Singular ), "duxissem" )
            , ( ( SecondPerson, Singular ), "duxisses" )
            , ( ( ThirdPerson, Singular ), "duxisset" )
            , ( ( FirstPerson, Plural ), "duxissemus" )
            , ( ( SecondPerson, Plural ), "duxissetis" )
            , ( ( ThirdPerson, Plural ), "duxissent" )
            ]
        )
    , Word "hear"
        (Verb Subjunctive
            Active
            Pluperfect
            [ ( ( FirstPerson, Singular ), "audivissem" )
            , ( ( SecondPerson, Singular ), "audivisses" )
            , ( ( ThirdPerson, Singular ), "audivisset" )
            , ( ( FirstPerson, Plural ), "audivissemus" )
            , ( ( SecondPerson, Plural ), "audivissetis" )
            , ( ( ThirdPerson, Plural ), "audivissent" )
            ]
        )
    , Word "take"
        (Verb Subjunctive
            Active
            Pluperfect
            [ ( ( FirstPerson, Singular ), "cepissem" )
            , ( ( SecondPerson, Singular ), "cepisses" )
            , ( ( ThirdPerson, Singular ), "cepisset" )
            , ( ( FirstPerson, Plural ), "cepissemus" )
            , ( ( SecondPerson, Plural ), "cepissetis" )
            , ( ( ThirdPerson, Plural ), "cepissent" )
            ]
        )
    ]
