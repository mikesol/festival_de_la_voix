\version "2.19.15"
\include "defs-devel.ly"

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


joy = \lyricmode {
  Joy -- eux an -- ni -- ver -- saire
  Joy -- eux an -- ni -- ver -- saire
  Joy -- eux an -- ni -- ver -- saire
  Joy -- eux an -- ni -- ver -- saire
}


melody_crazy = \relative c' {
  \time 9/8
  R4.*3 |
  R4.*3 |
  R4.*3 |
  r2. b4 b8 |
  cis4. \glissando \tempo "plus lent" g4. c |
  b ( \glissando \tempo "plus rapide" ais'4 ) r8 fis4 fis8 \glissando |
  \tempo "encore plus rapide" b4. a e' \glissando |
  \time 4/4
  b,8 b b b b b b b | 
  \time 3/4
  fis'4 fis fis |
  \time 2/4
  gis8 gis gis gis |
  \time 3/4
  fis2 b,4 |
  \time 4/4
  dis8 dis dis dis dis dis dis dis |
  \time 2/4
  R2 |
  \time 3/4
  dis8 dis dis dis dis dis |
  \time 2/4
  R2 |
  \time 1/4
  dis8 dis |
  \time 5/4
  R1*5/4 |
  \time 3/4
  b'4 fis2 |
  \time 3/8
  cis4 cis8 |
  \time 9/8
  dis4. cis4. fis4.
  \time 6/8
  e a4 fis8 |
  cis4. dis |
  \time 9/8
  d'4. c g' |
  \time 3/4
  b,2. |
  \time 6/4
  fis \glissando b, \glissando fis' \glissando b, \glissando fis' \glissando b, |
  \time 2/4
  b'4. gis8 |
  \time 9/8
  b2. fis4 fis8 |
  \time 6/8
  dis4. ( cis ) | 
  \time 9/8
  dis4 dis8 gis4. fis4.-\bendAfter #-2 |
  \time 3/8
  \cricket
  c4^\markup \italic "note très grave, fry"  c8 |
  \time 6/8
  c4. c4. |
  \saNormal
  \time 9/8
  gis'4. fis b |
  ais2. fis4 fis8 |
  gis4. fis cis' |
  \time 5/8
  b,4. a4 |
  \time 2/4
  gis'2 |
  \time 6/8
  ais,4 \tempo rapide e'8 dis4. |
  \time 4/4
  \tempo lent
  cis1 |
  \time 6/8
  dis8 dis dis dis dis dis |
  \time 4/4
  dis8 b fis' r b, b r dis |
  \time 2/4
  dis b fis' b, |
  \time 4/4
  \times 2/3 { fis'8 fis fis8 } b, dis b dis fis b, |
  \time 3/4
  \times 2/3 { fis'8 fis fis } b, dis b dis |
  \time 4/4
  b'4 fis b fis |
  b4 fis b fis |
  b4 fis b fis |
  b4 fis b fis |
  dis2 dis2 |
  dis dis |
  b'4 b b b |
  b b b b |
  b b b b |
  \time 3/4
  b b b |
  \time 3/8
  b,4 b8 |
  \time 9/8
  cis4.-\bendAfter #-3 cis4.-\bendAfter #-3 cis4.-\bendAfter #-3 |
  \time 6/8
  cis8.-\bendAfter #-3 fis16. dis cis8.-\bendAfter #-3 fis16 fis fis |
  c2. |
  \time 9/8
  b'4. gis e |
  dis'4. ( cis2. ~ |
  cis4. ) r4. a4 a8 |
  \time 12/8
  gis2. e |
  fis1. |
  \cricket 
  \time 4/4
  c1^\markup \italic "phoques qui grognent" |
  \saNormal
  \time 2/4
  fis2 |
  \cricket
  \time 3/4
  c2.^\markup \italic "chiens qui aboient" |
  \saNormal
  \time 3/8
  fis4. |
  \time 1/4
  \cricket
  c4^\markup \italic "coqs qui coquelinent" |
  \saNormal
  fis4 |
  \cricket
  c4^\markup \italic "agneux qui bêlent" |
  \saNormal
  fis4 |
  \cricket
  c4^\markup \italic "chevaux qui hennissent" |
  \saNormal
  fis4 |
  \time 23/4
  R4*23^\markup \italic "girafes qui ........ qui ......    .... ?"
  \time 4/4
  g4 \glissando d2 \glissando bes'4 \glissando |
  aes \glissando des \glissando g,2 \glissando
  b1 ~ |
  b1 \glissando |
  \cricket
  c,1^\markup \italic "note très grave, fry" \glissando |
  \time 4/4
  \saNormal
  b'1^\fermata \bar "|."
}

joyDeux = \lyricmode {
  Joy -- eux an -- ni -- ver -- saire
  Joy -- eux an -- ni -- ver -- saire
  \repeat unfold 7 saire
  \repeat unfold 3 Joie
  \repeat unfold 4 an
  ver Joie
  \repeat unfold 8 yeux
  \repeat unfold 6 yeux
  \repeat unfold 2 yeux
  yeux ni
  Joy -- eux an -- ni -- ver -- saire
  Joy -- eux an -- ni
  an -- ni -- ver -- saire
  ver Joie ver Joie ver Joie
  an -- ni
  saire Joy -- eux
  saire
  Joy -- eux an
  saire
  Joy -- eux an -- ni
  an -- ni -- ver -- saire
  Joy -- eux an -- ni -- ver
  an -- ni
  yeux
  Joy -- eux an
  saire
  an an an an Joie Joie
  an -- ni -- ver
  Joy -- eux an
  an -- ni -- ver Joie 

  an -- ni -- ver Joy -- eux Joy -- eux saire an
  an -- ni -- ver Joy -- eux Joy -- eux

  \repeat unfold 16 Joie
  \repeat unfold 4 saire
  \repeat unfold 15 ni

  Joy -- eux
  an an an an Joie Joie an ni ni ni

  Joie
  an -- ni -- ver saire
  Joy -- eux an -- ni -- ver

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
  \new Lyrics \lyricsto "women" \joyDeux
>>