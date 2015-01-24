\version "2.15.15"
\include "articulate.ly"

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

fluteOne = \relative c'' {
  \globals
  R4.*3 |
  r2. b16. ( cis32. dis e fis gis a  |
  b2.\trill ) b4.\trill |
  b16. b, cis dis e fis gis a b4.\trill |
  b2.\trill b4.\trill |
  b32. ( b, cis dis e fis gis a b b, cis dis e fis gis a b4.\trill ) |
  b2.\trill b4.\trill |
  b2.\trill b4.\trill |  
  b2.\trill b4.\trill |
  cis32. ( c b bes a aes g ges f e ees d cis32. c b bes a aes g ges f e ees d |
  cis'32. d32. e fis gis a b cis-. ) r4. cis4. |
  b1.\trill |
  b1.\trill |
  b2.\trill b4.\trill |  
  b2. ~ b4. |
}

fluteTwo = \relative c'' {
  \globals
  R4.*3 |
  R4.*3 |
  R4.*3 |
  r8. r16. b cis dis e fis fis4.\trill |
  gis16 ( e fis gis a b )   cis ( b a gis fis e )   b' ( a gis fis e cis |
  b4.-_ ) b4. ~ b8. cis |
  dis16 ( e fis gis a b )   fis ( gis a b cis dis )    a16. ( b cis dis ) |
  fis16 ( e dis cis b a )     dis ( cis b a gis fis )    \times 6/7 { cis' ( b a gis fis b a ) } |
  gis32. ( e fis gis a b cis dis    e dis cis b a gis fis e  )  \times 8/9 { cis' ( b a gis fis e dis cis b }
  dis4. ) e2.\trill |
  e4. r e32. ( b cis dis e fis gis a ) |
  b32. ( bes a aes   a aes g ges   g ges f e    f e dis d 
     dis d cis c    cis c b ais    b bes a gis   a aes g fis ) |
  fis'16. ( fis e fis gis a b cis dis e dis e dis cis b8. ) |
  e,16.-. b-. cis-. gis-. e'16.-. b-. cis-. gis-. e'-. d-. c-. d-. |
  e2.\trill e4. |
}

oboeOne = \relative c'' {
  \globals
  R4.*3 |
  R4.*3 |
  R4.*3 |
  r2. b4\f b8 |
  gis8. fis gis b cis gis |
  a2. a4 a8 |
  a8. gis a b cis a |
  gis2. gis4 gis8 |
  gis8. a b cis dis b |
  a8. b cis dis e4. ~ |
  e4. r e4 e8 |
  e2. cis2.
  dis2. b |
  e2. c8-. c-. c-. |
  b2. ~ b4. |
}

clarinetOne = \relative c' {
  \globals
  b16.\p ( cis b cis b16. cis b cis b16. cis b cis ) |
  dis16. ( e dis e dis16. e dis e dis16. e dis e ) |
  fis\< ( gis fis gis fis gis fis gis fis gis fis16 fisis gis ) |
  a16. fis dis b   b' fis dis b   \times 6/7 { b'16 bes a aes g fis f } |
  e16.\mf ( fis e16. fis e16. fis e16. fis e16. fis e16. fis ) |
  fis ( gis fis gis fis gis fis gis fis gis fis gis ) |
  a ( fis dis b b' fis dis b b' fis dis b ) |
  gis' ( e cis b gis' e cis b gis' e cis b ) |
  b' ( gis e b b' gis e b b' gis e b ) |
  cis (a b cis dis e fis gis a8. b |
  a16. b cis8. ) r4. a16. (fis e c |
  b8. cis16. dis e fis gis a b cis b cis b a gis a |
  b ) b, ( cis dis e fis gis a b cis b cis b8. a |
  gis2. ~ gis4. ~ |
  gis2. ~ gis4. ) |

}

bassoonOne = \relative c' {
  \clef bass
  b4.\f b8-! b-! b-! b8 bes a |
  a8. a16-. a-. a-. a8. a gis g |
  fis fis16-. fis fis fis8. fis fis gis |
  a4. fis4. b |
  e, gis2. |
  a4. fis2. |
  b2. fis4. |
  gis16. e fis gis a b cis dis e dis cis b |
  gis4. e2. |
  fis4. e2. ~ |
  e4. r4. e |
  gis2. gis |
  a fis |
}

trumpetOne = \relative c'' {
  \globals
  R4.*3 |
  R4.*3 |
  R4.*3 |
  r2. b4\f b8 |
  cis4. b e |
  dis2. b4 b8 |
  cis4. b fis' |
  e2. b4 b8 |
  b'4. gis e |
  dis4. cis2. ~ |
  cis4. r a'4 a8 |
  gis2. e2.
  fis1.
  e8. \times 2/3 { e16. e e } e8 e e e e e |
  b'2. ~ b4. |
}

trumpetTwo = \relative c'' {
  \globals
  r2. r8. b-_\f |
  b2. r8. b-_ |
  b2. b8 b8 b |
  b8.  b16 b b b8 b b b16. b b b |
  b2.\mf gis4. |
  a4. ~ a8. fis16 fis fis  fis16. fis fis fis |
  b4. b a |
  gis4 b8 e4. e8-. e-. e-. |
  b4. b e8. dis |
  cis4 e8 a2. ~ |
  a4. r a4 a8 |
  gis2. e |
  fis2. ~ fis4. dis |
  e8. \times 2/3 { e16. e e } e8 e e fis e fis |
  gis2. ~ gis4. |
}

trumpetThree = \relative c' {
  \globals
  r2. r8. fis-_\f |
  fis2. r8. fis-_ |
  fis8. \times 2/3 { fis16. fis g } g8 g8 gis8 gis8. \times 2/3 { a16. a a } |
  a4. a4. ~ a8. a8. |
  gis2.\mf e4. |
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
  b4.\f b8-! b-! b8-! b4. |
  dis4. dis8-! dis-! dis-! dis4. |
  fis4. fis4 fis8 fis4. |
  b2. b,4 b8 |
  b2.\mf ~ b4. |
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
  b4.\f b8-! b-! b8-! b4. |
  b4. b8-! b-! b-! b4. |
  dis4. dis4 dis8 dis4. |
  fis2. b,4 a8 |
  gis2.\mf ~ gis4. |
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
  r2. b4\f b8 |
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
  r2. dis4\mf dis8 |
  e4. b gis' |
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
  b2.\mf ~ b4. |
  b,2. ~ b8. b |
  b2. ~ b4. ~ |
  b2. b4. |
  e2. ~ e4. |
  fis4. b4. fis |
  b,4. cis dis |
  e2. ~ e4. |
  e2. ~ e4. | 
  a2. ~ a4. ~ |
  a4. r a |
  b1. |
  b |
  e,4. e' a, |
  e2. ~ e4. |
}

timpani = \relative c {
  \clef bass
  b2. ~ b8. fis |
  b2. ~ b8. fis |
  b2. fis8 fis fis |
  b2. b4. |
  e2. ~ e4. |
  b2. b8 b b |
  b2. b4. |
  e,2. b'8 b b |
  e2. b4. |
  a2. e8 e e |
  a4. r4. a |
  b2. b |
  b b |
  e2. b8 b b |
  e,2. ~ e4. |
}

percussion = \drummode {
  R4.*3 |
  R4.*3 |
  R4.*3 |
  R4.*3 |
  cymc2.\f r4. |
  r4. cymc\ff r |
  R4.*3 |
  r4. cymc r |
  R4.*3
  r4. cymc r |
  R4.*3 
  R1. |
  R1. |
  R4.*3 |
  cymc2. ~ cymc4. |
}

birthdayProto = << 
    \new StaffGroup <<
      \new StaffGroup \with{instrumentName="Flutes"} <<
        \new Staff = "flute1" \with {instrumentName="I" midiInstrument=#"flute"} \new Voice { << \marks \fluteOne >> }
        \new Staff = "flute2" \with {instrumentName="II" midiInstrument=#"flute"} \new Voice { << \marks \fluteTwo >> }
      >>
      \new StaffGroup \with{instrumentName="Oboes"} <<
        \new Staff = "oboe1" \with {instrumentName="I" midiInstrument=#"oboe"} \new Voice { << \marks \oboeOne >> }
      >>
      \new StaffGroup \with{instrumentName="Clarinets"} <<
        \new Staff = "clarinet1" \with {instrumentName="I" midiInstrument=#"clarinet"} \new Voice { << \marks \clarinetOne >> }
      >>
      \new StaffGroup \with{instrumentName="Bassoons"} <<
        \new Staff = "bassoon1" \with {instrumentName="I" midiInstrument=#"bassoon"} \new Voice { << \marks \bassoonOne >> }
      >>
    >>
    \new StaffGroup <<
      \new StaffGroup \with{instrumentName="Trumpets"} <<
        \new Staff = "trumpet1" \with {instrumentName="I" midiInstrument=#"trumpet"} \new Voice { << \marks \trumpetOne >> }
        \new Staff = "trumpet2" \with {instrumentName="II" midiInstrument=#"trumpet"} \new Voice { << \marks \trumpetTwo >> }
        \new Staff = "trumpet3" \with {instrumentName="III" midiInstrument=#"trumpet"} \new Voice { << \marks \trumpetThree >> }
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
    \new StaffGroup \with{instrumentName="Percussion"} <<
      \new Staff = "timpani2" \with {instrumentName="Timpani" midiInstrument=#"timpani"} \new Voice { \timpani }
      \new DrumStaff = "timpani2" \with {instrumentName="Cymbals" } \new DrumVoice { \percussion }
    >>
  >>

\score {
  \birthdayProto
  \layout {
    \context {
      \StaffGroup
      systemStartDelimiter = #'SystemStartSquare
    }
  }
}

\score {
  \unfoldRepeats \articulate \birthdayProto
  \midi{}
}