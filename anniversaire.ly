\version "2.15.15"

globals = {
  \key e \major
}

marks = {
  \tempo "Adagio" 4. = 60
  \time 9/8
  \repeat unfold 11 { s2. s4. }
  \time 12/8
  s1.
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
  e1. |
}

hornTwo = \relative c' {
  \globals
  R4.*3 |
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
  gis1. |
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
  e
}

\score {
  << 
    \new StaffGroup <<
      \new StaffGroup \with{instrumentName="Horns"} <<
        \new Staff = "horn1" \with {instrumentName="I" midiInstrument=#"french horn"} \new Voice { << \marks \hornOne >> }
        \new Staff = "horn2" \with {instrumentName="II" midiInstrument=#"french horn"} \new Voice { << \marks \hornTwo >> }
      >>
      \new StaffGroup \with{instrumentName="Trombones"} <<
        \new Staff = "trombone1" \with {instrumentName="I" midiInstrument=#"trombone"} \new Voice { \tromboneOne }
      >>
    >>
  >>
  \layout {
    \context {
      \StaffGroup
      systemStartDelimiter = #'SystemStartSquare
    }
  }
}