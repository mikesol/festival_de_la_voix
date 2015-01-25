
cricket = {
  \revert Stem #'stencil
  \revert Flag #'stencil
  \revert Accidental #'stencil
  \override Accidental #'stencil = ##f
  \stopStaff
  \override Staff . StaffSymbol #'line-count = #1
  \override Staff . BarLine #'bar-extent = #'(-1 . 1)
  \startStaff
  \override NoteHead #'style = #'harmonic-mixed
  \override NoteHead #'no-ledgers = ##t
  \set melismaBusyProperties = #'(tieMelismaBusy beamMelismaBusy)
  \autoBeamOff
  \clef percussion
  \stemUp
  \revert TupletNumber #'text
  \revert TupletNumber #'Y-offset
%  \set Staff.dynamicAbsoluteVolumeFunction  = #(lambda (dyn) 0.0)
}

normal = {
  \stopStaff
  \revert Accidental #'stencil
  \revert DynamicText #'outside-staff-priority
  \revert Staff . StaffSymbol #'line-count
  \revert Staff . StaffSymbol #'line-positions
  \revert Staff . BarLine #'bar-extent
  \startStaff
  \revert NoteHead #'style
  \revert TupletNumber #'text
  \revert TupletNumber #'Y-offset
  \revert TupletBracket #'bracket-visibility
  \unset tupletFullLength
  \revert Flag #'style
  \revert Stem #'stencil
  \revert Flag #'stencil
  \revert NoteHead #'no-ledgers
  \unHideNotes
  \revert Stem #'direction
  \stemNeutral
%  \unset Staff.dynamicAbsoluteVolumeFunction
  \set melismaBusyProperties = #'(tieMelismaBusy beamMelismaBusy slurMelismaBusy)
}

saNormal = { \clef treble \normal }
tNormal = { \clef "treble_8" \normal }
bNormal = { \clef bass \normal }
