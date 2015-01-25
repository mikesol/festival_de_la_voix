\version "2.19.15"

melody = \relative c' {
  \key e \major
  \time 9/8
  R4.*3 |
  R4.*3 |
  R4.*3 |
  r2. b4 b8 |
  cis4. b e |
  dis4. r b4 b8 |
  cis4. b fis' |
  e4. r b4 b8 |
  b'4. gis e |
  dis4. ( cis2. ~ |
  cis4. ) r <a' cis>4 <a cis>8 |
  \time 12/8
  <gis b>2. <e gis> |
  <fis a>1. |
  \time 9/8
  <e gis>2. ~ <e gis>4. ~ |
  <e gis>2. ~ <e gis>4. \bar "|."
}

melody_crazy = \relative c' {
  \time 9/8
  R4.*3 |
  R4.*3 |
  R4.*3 |
  r2. b4 b8 |
  cis4. \glissando \tempo "plus lent" g4. c |
  b \glissando \tempo "plus rapide" ais'4 r8 fis4 fis8 \glissando |
  \tempo "encore plus rapide" b4. a e' \glissando |
  \time 4/4
  b,8 b b b b b b b 
}

joy = \lyricmode {
  Joy -- eux an -- ni -- ver -- saire
  Joy -- eux an -- ni -- ver -- saire
  Joy -- eux an -- ni -- ver -- saire
  Joy -- eux an -- ni -- ver -- saire
}

\header {
  title="Joyeux Anniversaire"
  composer="Patty Hill et Mildred J. Hill"
  arranger="Mike Solomon"  
}

\markup \italic "première fois"

\new ChoirStaff <<
  \new Staff \new Voice = "women" \melody
  \new Lyrics \lyricsto "women" \joy
  \new Staff \new Voice = "men" \transpose c c, { \clef bass \melody }
  \new Lyrics \lyricsto "men" \joy
>>

\markup \italic "deuxième fois"

\new ChoirStaff <<
  \new Staff \new Voice = "women" \melody_crazy
>>