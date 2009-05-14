\version "2.10.33"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Title and Composer Information             %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\header
{
  title    = "Arrival to Earth"
  subtitle = \markup{From {\italic Transformers} (2007)}
  composer = "Steve Jablonsky"
  arranger = "arr. T. Whitcomb"
}

%#(set-global-staff-size 20)
#(set-default-paper-size "letter")	

doublebar = { \bar "||" }
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Templates - Upper Voice                    %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

mainThemeUpper = 
 {
   <ees g c>4. g16 c16 <g bes ees>4 <g bes>4 
   <f bes d>4. f16 bes16 <f aes c>4 <f aes>4 
   <ees g c>4. g16 c16 <g g'>4 <bes ees>4 
   <d f>4 <c ees>8 <bes d>8 <aes c>4 aes4 
   <ees g c>4. g16 c16 <g bes ees>4 <g bes>4 
   <f bes d>4. f16 bes16 <f aes c>4 <f aes>4 
   <ees aes c>2 <ees g bes>4 ees'8 d8
   <ees, g c>2. g8 bes8 
   <ees, aes c>2 <ees g bes>4 d'8 ees8 
 }

mainThemeUpperFirstEnding = 
 {
   <ees, g c>2. g4
 }

mainThemeUpperSecondEnding = 
 {
   c1
 }

transformTransitionUpper = 
 {
   r4 c4 g4 ees'4
   r4 d4 bes4 f'4
   r4 ees4 bes4 ges'4
   r4 f4 des4 aes'4
   r4 ges4 des4 a'4
   r4 aes4 e4 b'4
   r4 aes4 e4 des'4
   r4 a4 e4 des'4
   r4 aes4 e4 des'4
   <ees, ges ces>1
 }

poolTransitionUpper = 
 {
   bes8 bes16 bes16 bes8 bes8 bes8 bes8 bes16 bes16 bes8
 }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Templates - Lower Voice                    %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

jump = { c16 c16 ees16 ees16 }

mainThemeLower = 
 {
   c,8 g'8 c8 g8 ees8 ees'8 bes8 g8 
   bes8 f8 bes8 d8 f8 f,8 c'8 aes8
   c8 g8 ees8 c8 ees8 ees'8 bes8 ees8
   bes,8 d8 f8 bes8 f8 c'8 f8 aes,8
   c8 g8 c,8 g'8 ees8 g8 bes8 ees8
   bes8 d8 f,8 bes8 f8 aes8 c8 f8
   aes,8 c8 ees8 c8 ees,8 g8 bes8 ees8
   c,8 g'8 c8 g8 c8 g8 bes8 g8 
   aes8 c8 ees8 c8 ees,8 g8 bes8 ees8
 }

mainThemeLowerFirstEnding = 
 {
   c8 g'8 c8 g8 c8 g8 c8 g8 
 }

mainThemeLowerSecondEnding = 
 {
   \mainThemeLowerFirstEnding
 }
transformTransitionLower = 
 {
   <g c ees g>1
   <f bes d f>1
   <ges bes ees ges>1
   <f aes des f>1
   <ges beses des ges>1
   <aes ces fes aes>1
   <aes des fes aes>1
   <beses des fes beses>1
   <aes des fes aes>1
   <ges ces ees ges>1
 }

mainThemeLowerVariation = 
 { 
   <c g' c>2
   <ees bes' ees>2
   <bes' f' bes>2
   <f c' f>2
   <c g' c>2
   <ees bes' ees>2
   <bes f' bes>2
   <f' c' f>2
   <c g' c>2
   <ees bes' ees>2
   <bes f' bes>2
   <f' c' f>2
   <aes ees' aes>2
   <ees bes' ees>2
   <c g' c>2.
   <ees bes' ees>4
   <aes ees' aes>2
   <ees bes' ees>2
   <c g' c>1
 }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Actual Score                               %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
\score
{
  \new PianoStaff
  <<
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %%% Upper Voice                                %%%
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    \new Staff
    {
      \tempo 4=90
      \time 4/4

      \clef treble
      \key c \minor

      % Bumblebee runs through the gate: Sam and Mikaela get out
      \relative
      {
        r1
        c'1 
        ees2. g,4 aes2 g2
        r2. g,4 aes2 g4
      }

      % Autobots enter the atmosphere - on second repeat, see them
      % crash land into stadiums, fields, and garages
      \relative c'
      {
	g4
	\repeat volta 2
	{
	  \once \override Score . RehearsalMark #'self-alignment-X = #left
	  \mark \markup { \italic {"(second time 8va)"} }
	  \mainThemeUpper
	}
	\alternative
	{
	  { \mainThemeUpperFirstEnding  }
	  { \mainThemeUpperSecondEnding }
	}
      }
      \doublebar

      % There's a lot of key changes here, so just bring us back to
      % C major and do everything with accidentals.  I have kept
      % everything in flats, resorting to a double every now and then,
      % to keep the chord progression in perspective.
      \key c \major

      % Autobots start to take their Earth forms - Optimus Prime's
      % pod in the field unpacks into his Cybertron form and Ratchet
      % rolls out as an Hummer H2 search-and-rescue vehicle
      \relative c'
      {
	\transformTransitionUpper
      }
      \doublebar

      % Jazz hops down off the Cadillac dealership sign, walks over
      % and scans the Pontiac Sunfire
      \key d \minor
      \transpose c d
      {
	\relative c
	{
	  \mainThemeUpper
	  \mainThemeUpperSecondEnding
	}
      }
      \doublebar
	
      % There are a few key changes here as well, but they can all
      % be captured with a two-flat key signature so there is no
      % need to use accidentals 
      \key g \minor
      
      \clef bass
      \relative c
      {
        % Ironhide comes out of the water
	<bes d f bes>2. <c f a c>4 <d f bes d>1
	<bes ees g>2. <c f a c>4 <bes d g bes>1
	<bes d g bes>2. <d f bes d>4 <c f a c>1
        % "Excuse me - are you the tooth fairy?"
      }

      \clef treble
      \relative c'
      {
	% "What happened to the pool!??!?!?!"
	<ees g bes ees>1
	<d g bes d>2 c4 d4 
	<< { r4 bes'4 a4 g4 } \\ <g, bes ees>1 >>
	<< { r4 c'4 bes4 a4 } \\ <a, c f>1     >>
	<< { r4 bes'4 a4 g4 } \\ <bes, ees g>1 >>
	<d fis a>1
	% Optimus Prime spots the Peterbilt truck and transforms
	<bes d g>1
	d16 d ees ees d d ees ees d d ees ees d d ees ees
      }

      
      % Bumblebee drives Sam and Mikaela into an alley - Optimus
      % drives in out of the fog, followed by Jazz, Ratchet, 
      % and Ironhide
      \doublebar
      \clef bass
      \relative c
      {
	d16 d ees ees d4 g4 a4 bes8 c8 d4 c2.
	c,4 f4 a4 c8 d8 ees4 bes2.
	ees,4 a8 g8 f4 g2 g2

        % Optimus begins to transform
	d4 g4 bes2 bes2
	f4 bes4 c2 

	%%% START WORK
	c4 bes8 a8

	% Rest of the Autobots transform
	g2 f4 g4 a2 d,4 g4 g2 f4 g4 d2 c4 bes4 bes2 c4 d4 d4 d4 fis4
	a4 <g c>2 f4 g4 a2 bes4 a4 d,4 g4 g4 a4 bes2 g2 a1 g1
      }

      % "Are you Samuel James Witwicky, descendant of Archibald Witwicky?"
      \bar "|."
    }
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %%% End Upper Voice                            %%%
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %%% Begin Lower Voice                          %%%
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    \new Staff
    {
      \clef bass
      \key c \minor

      % Bumblebee runs through the gate: Sam and Mikaela get out
      \relative c
      {
	\jump \jump \jump \jump
	\jump \jump \jump \jump
	\jump \jump \jump \jump
	\jump \jump \jump \jump
	\jump \jump \jump \jump
	\jump \jump c4 r4
      }

      % Autobots enter the atmosphere - on second repeat, see them
      % crash land into stadiums, fields, and garages
      \repeat volta 2
      {
	\relative c
	{
	  \mainThemeLower
	}
      }
      \alternative
      {
	{ \relative c, { \mainThemeLowerFirstEnding  } }
	{ \relative c, { \mainThemeLowerSecondEnding } }
      }
      \doublebar

      % There's a lot of key changes here, so just bring us back to
      % C major and do everything with accidentals.  I have kept
      % everything in flats, resorting to a double every now and then,
      % to keep the chord progression in perspective.
      \key c \major

      % Autobots start to take their Earth forms - Optimus Prime's
      % pod in the field unpacks into his Cybertron form and Ratchet
      % rolls out as an Hummer H2 search-and-rescue vehicle
      \relative c
      {
	\transformTransitionLower
      }
      \doublebar

      % Jazz hops down off the Cadillac dealership sign, walks over
      % and scans the Pontiac Sunfire
      \key d \minor
      \transpose c d
      {
	\relative c,
	{
	  \mainThemeLowerVariation
	}
      }
      \doublebar

      % There are a few key changes here as well, but they can all
      % be captured with a two-flat key signature so there is no
      % need to use accidentals 
      \key g \minor
      \relative c
      {
        % Ironhide comes out of the water
	<bes f' bes>2. <f c' f>4 <bes f' bes>1
	<ees, bes' ees>2. <f c' f>4 <g d' g>1
	<bes d g>2. <bes d f>4 <c f a>1
        % "Excuse me - are you the tooth fairy?"
      }

      % "What happened to the pool!??!?!?!"
      \poolTransitionUpper
      \poolTransitionUpper 
      \poolTransitionUpper 
%       <bes ees g>1
%       <bes d g>1
%       <bes ees g>1

%       % Optimus Prime spots the Peterbilt truck and transforms

%       % Bumblebee drives Sam and Mikaela into an alley - Optimus
%       % drives in out of the fog, followed by Jazz, Ratchet, 
%       % and Ironhide
%       \doublebar
%       r1 <bes d g>2 <bes d f>2 <a c f>2.
%       r4 
%       <a c f>2 <g c ees>2 
%       <bes ees g>2. r4
%       <a c f>2 <bes d g>2 r2
      
%       % Optimus begins to transform
%       <bes d g>4 <bes d g>4 <bes ees g>2( <bes ees g>2)
%       <bes d f>4 <bes d f>4 <c f a>2

%       % Rest of the Autobots transform

%       % "Are you Samuel James Witwicky, descendant of Archibald Witwicky?"
%       \bar "|."

    }
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %%% End Lower Voice                            %%%
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

  >>

  \midi
  {

  }
  \layout
  {
  }
}
\paper
{
  indent = 0
}
