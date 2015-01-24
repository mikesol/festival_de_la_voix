\version "2.15.15"

globals = {
  \key e \major
}

#(set-global-staff-size 15)

marks = {
  \tempo "Adagio" 4. = 60
  \time 9/8
  \repeat unfold 11 { s2. s4. }
  \time 12/8
  \repeat unfold 2 { s1. } |
  \time 9/8
  \repeat unfold 2 { s2. s4. } \bar "|."
}

trumpetOne = \relative c'' {
  \globals
  r2. r8. b-_ |
  b2. r8. b-_ |
  b2. b8 b8 b |
  b8. \times 2/3 { b16. b b } b8 b b b16. b b b |
  b2. gis4. |
  a4. ~ a8. \times 2/3 { fis16. fis fis } fis16. fis fis fis |
  b4. b a |
  gis4 b8 e4. e8-. e-. e-. |
  b4. b e8. dis |
  cis4 e8 a2. ~ |
  a4. r a4 a8 |
  gis2. e |
  fis1. |
  e8. \times 2/3 { e16. e e } e8 e e fis e fis |
  gis2. ~ gis4. |
}

trumpetTwo = \relative c' {
  \globals
  r2. r8. fis-_ |
  fis2. r8. fis-_ |
  fis8. \times 2/3 { gis16. gis gis } gis8. gis8. gis8 gis gis |
  a4. a4. ~ a8. a8. |
  gis2. e4. |
  dis4 e8 dis8. \times 2/3 { dis16. dis dis } dis16. dis dis dis |
  fis4. fis8. e dis8. b |
  e4 fis8 gis8. \times 2/3 { gis16. gis gis } gis16. gis gis gis |
  gis2. gis4. |
  a2. ~ a4. ~ |
  a4. r c8. a |
  gis4 a8 b4. e,4 fis8 gis4. |
  fis4 gis8 a4. dis,4 e8 fis4. |
  gis8. \times 2/3 { gis16. gis gis } gis8 gis gis a gis a |
  b2. ~ b4. |
}

hornOne = \relative c' {
  \globals
  b4. b4 b8 b4. |
  dis4. dis8 dis dis dis4. |
  fis4. fis4 fis8 fis4. |
  b2. b,4 b8 |
  b2. ~ b4. |
  cis2. cis8-. cis-. cis-. |
  a2. a4. |
  gis2. b4 b8 |
  b2. bis4. |
  cis2. ~ cis4. ~ |
  cis4. r c4. |
  b1. ~ |
  b1. |
  e2. ~ e4. ~ |
  e2. ~ e4. |
}

hornTwo = \relative c' {
  \globals
  b4. b4 b8 b4. |
  b4. b8 b b b4. |
  dis4. dis4 dis8 dis4. |
  fis2. b,4 a8 |
  gis2. ~ gis4. |
  a2. a4 ( gis8 ) |
  fis2. fis4. |
  gis2. gis4 gis8 |
  gis2. gis4. |
  a2. ~ a4. ~ |
  a4. r a4. |
  gis1. |
  a1. |
  gis2. ~ gis4. ~ |
  gis2. ~ gis4. |
}

tromboneOne = \relative c' {
  \globals
  \clef "tenor"
  R4.*3 |
  R4.*3 |
  R4.*3 |
  r2. b4 b8 |
  cis4. b e |
  dis2. b4 b8 |
  cis4. b fis' |
  e2. b4 b8 |
  b'4. gis e |
  dis4. cis2. ~ |
  cis4. r a'4 a8 |
  gis2. e2.
  fis1.
  e2. ~ e4. ~ |
  e2. ~ e4. |
}

tromboneTwo = \relative c {
  \globals
  \clef "bass"
  R4.*3 |
  R4.*3 |
  R4.*3 |
  r2. dis4 dis8 |
  e4. fis gis |
  b2. gis4 gis8 |
  a4. fis b |
  gis2. gis4 fis8 |
  e4. fis gis |
  b4. a2. ~ |
  a4. r a4 a8 |
  b2. b2.
  b2. a |
  gis8. \times 2/3 { b16. b b } b8 b b b8 b b |
  b2. ~ b4. |
}

tuba = \relative c {
  \globals
  \clef "bass"
  b2. ~ b4. |
  b,2. ~ b8. b |
  b2. ~ b4. ~ |
  b2. b4. |
  e2. ~ e4. |
  fis2. ~ fis4. |
  b,4. cis dis |
  e2. ~ e4. |
  e2. ~ e4. | 
  a2. ~ a4. ~ |
  a4. r a |
  b1. |
  b |
  e,2. ~ e4. |
  e2. ~ e4. |
}

\score {
  << 
    \new StaffGroup <<
      \new StaffGroup \with{instrumentName="Trumpets"} <<
        \new Staff = "trumpet1" \with {instrumentName="I" midiInstrument=#"trumpet"} \new Voice { << \marks \trumpetOne >> }
        \new Staff = "trumpet2" \with {instrumentName="I" midiInstrument=#"trumpet"} \new Voice { << \marks \trumpetTwo >> }
      >>
      \new StaffGroup \with{instrumentName="Horns"} <<
        \new Staff = "horn1" \with {instrumentName="I" midiInstrument=#"french horn"} \new Voice { << \marks \hornOne >> }
        \new Staff = "horn2" \with {instrumentName="II" midiInstrument=#"french horn"} \new Voice { << \marks \hornTwo >> }
      >>
      \new StaffGroup \with{instrumentName="Trombones"} <<
        \new Staff = "trombone1" \with {instrumentName="I" midiInstrument=#"trombone"} \new Voice { \tromboneOne }
        \new Staff = "trombone2" \with {instrumentName="II" midiInstrument=#"trombone"} \new Voice { \tromboneTwo }
      >>
      \new Staff = "tuba2" \with {instrumentName="Tuba" midiInstrument=#"tuba"} \new Voice { \tuba }
    >>
  >>
  \layout {
    \context {
      \StaffGroup
      systemStartDelimiter = #'SystemStartSquare
    }
  }
}