\version "2.18.2"

global = { \time 3/4 \key g \major }

noten = \relative c'' { \global | g g a | b4. (c8 d4) | d d cis | d2\fermata b4 | c2 b4 | a2. | g4 fis2 | g2.\fermata \bar ":|."
| a4 a b | c2 c4 | b4. (a8) b4 | a2.\fermata | b4 b b | c4. (d8 e4) | e dis dis | e2\fermata fis4 | g2 b,4 | c2 b4 | a a\fermata d | e4. d8 c4 | b a2 | g2.\fermata \bar "|."
}

notenTwee = \relative c' { \global | d4 e fis | g2. | g4 e e | fis2\fermata g4 | e2 d4 | d2. | b4 d2 | d2.\fermata
| d4 d d | c2 e4 | e2 e4 | c2.\fermata | e4 gis gis | a2. | a4 fis fis | g2\fermata a4 | b2 g4 | g2 g4 | fis fis\fermata g | g4. fis8 e4 | d4 d2 | d2.\fermata
}

notenDrie = \relative  c' { \global \clef "bass" | b4 b d | d4. c8 b4 | b4 a a | a2\fermata g4 | g2 g4 | fis2. | e4 a2 | b2.\fermata |
| fis4 fis gis | a2 a4 | gis4. a8 gis4 | a2.\fermata | gis4 b4 e | e4. d8 c4 | c b b | b2\fermata d4 | d2 d4 | e2 d4 | d d\fermata d | c4. a8 g4 | g g fis | b2.\fermata
}

notenVier = \relative c' { \global \clef "bass" | g4 e d | g4. a8 b4 | g4 a a, | d2\fermata g4 | c,2 g4 | d'2. | e4 d2 | g,2.\fermata
| d'4 d b | a2 c4 | e2 e4 | a,2.\fermata | e4 e e | a'4. b8 c4 | a b b | e,2\fermata d4 | g2 g4 | c,2 g4 | d' d\fermata b | c4. d8 e4 | g d2 | g,2.\fermata
}


\score {
\new StaffGroup {
<<
    \new Staff {
        \new Voice = "notenVoice" { \noten }
    } 
    \new Staff {
        \new Voice = "notenVoice" { \notenTwee }
    }        
    \new Staff {
        \new Voice = "notenVoice" { \notenDrie }
    }        
    \new Staff {
        \new Voice = "notenVoice" { \notenVier }
    }         
>>
}
}