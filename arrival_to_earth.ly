%\version "2.10.33"

\header
{
  title    = "Arrival to Earth"
%  subtitle = "From Transformers (2007)"
  subtitle = \markup{From {\italic Transformers} (2007)}
  composer = "Steve Jablonsky"
  arranger = "arr. T. Whitcomb"
}

%#(set-global-staff-size 20)
%#(set-default-paper-size "letter")	

jump = { c16 c16 ees16 ees16 }

\score
{
  \new PianoStaff
  <<

    % Treble clef
    \new Staff
    {
      \tempo 4=90
      \clef treble
      \time 4/4
      {
	\key c \minor

	% Introduction
	\relative
	{
	  r1
	  c'1 
	  ees2. g,4 aes2 g2
	  r2. g,4 aes2 g4
	}



	% Main theme
	\relative c'
	{
	  % Only need partial if we leave off the intro
	  %\partial 4 g4
	  g4
	  <ees g c>4. g16 c16 <g bes ees>4 <g bes>4 
	  <f bes d>4. f16 bes16 <f aes c>4 <f aes>4 
	  <ees g c>4. g16 c16 <g g'>4 <bes ees>4 
	  <d f>4 <c ees>8 <bes d>8 <aes c>4 aes4 
	  <ees g c>4. g16 c16 <g bes ees>4 <g bes>4 
	  <f bes d>4. f16 bes16 <f aes c>4 <f aes>4 
	  <ees aes c>2 <ees g bes>4 ees'8 d8
	  <ees, g c>2. g8 bes8 
	  <ees, aes c>2 <ees g bes>4 d'8 ees8 
	  <ees, g c>2. 
	}
	% Main theme - octave up
	\relative c''
	{
	  g4 
	  c4. g16 c16 ees4 bes4 
	  d4. f,16 bes16 c4 aes4 
	  c4. g16 c16 g'4 ees4 
	  f4 ees8 d8 c4 aes4 
	  c4. g16 c16 ees4 bes4 
	  d4. f,16 bes16 c4 aes4 
	  c2 bes4 ees8 d8
	  c2. g8 bes8 
	  c2 bes4 d8 ees8
	  c1
	}

	\bar "||"
	\key c \major
	\relative c'
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
	  <dis, fis b>1
	}

	\bar "||"
	\key d \minor
	% Main theme - restatement
	\transpose c d
	{
	  \relative c''
	  {
	    c4. g16 c16 ees4 bes4 
	    d4. f,16 bes16 c4 aes4 
	    c4. g16 c16 g'4 ees4 
	    f4 ees8 d8 c4 aes4 
	    c4. g16 c16 ees4 bes4 
	    d4. f,16 bes16 c4 aes4 
	    c2 bes4 ees8 d8
	    c2. g8 bes8 
	    c2 bes4 d8 ees8
	    c1
	  }
	}

	
	\bar "||"
	\key c \major
	% Choral bit
	\relative c'
	{
	  \clef bass
	  <bes, d f bes>2. <c f a c>4 <d f bes d>1
	  <bes ees g>2. <c f a c>4 <bes d g bes>1
	  <bes d g bes>2. <d f bes d>4 <c f a c>1

	  \time 3/4
	  \clef treble
	  bes'8 bes16 bes16 bes8 bes8 bes16 bes16 bes8
	  bes8 bes16 bes16 bes8 bes8 bes16 bes16 bes8
	  bes8 bes16 bes16 bes8 bes8 bes16 bes16 bes8
	  \time 4/4
	}
	
	% "Autobots" theme
	\bar "||"
	\clef bass
	\relative c
	{
	  r2. d4 g4 a4 bes8 c8 d4 c2.
	  c,4 f4 a4 c8 d8 ees4 bes2.
	  ees,4 a8 g8 f4 g2( g2)
	  % Another choral bit
	  d4 g4 bes2( bes2)
	  f4 bes4 c2
	}

	\bar "|."
      }
    }


    % Bass clef
    \new Staff
    {
      \clef bass
      \key c \minor

      \relative c
      {
	\jump \jump \jump \jump
	\jump \jump \jump \jump
	\jump \jump \jump \jump
	\jump \jump \jump \jump
	\jump \jump \jump \jump
	\jump \jump c4 
      }

      \relative c
      {
	% Only need partial if we leave off the intro
	%\partial 4 r4
	r4

	% Main theme
	c,8 g'8 c8 g8 ees8 ees'8 bes8 g8 
	%<c, g' c>2 <ees bes' ees>2
	bes8 f8 bes8 d8 f8 f,8 c'8 aes8
	%<bes' f' bes>2 <f c' f>2
	c8 g8 ees8 c8 ees8 ees'8 bes8 ees8
	%<c g' c>2 <ees bes' ees>2
	bes,8 d8 f8 bes8 f8 c'8 f8 aes,8
	%<bes, f' bes>2 <f' c' f>2
	c8 g8 c,8 g'8 ees8 g8 bes8 ees8
	%<c g' c>2 <ees bes' ees>2
	bes8 d8 f,8 bes8 f8 aes8 c8 f8
	%<bes, f' bes>2 <f' c' f>2
	
	<aes, ees' aes>2	<ees bes' ees>2
	<c g' c>2.
	<ees bes' ees>4
	<aes ees' aes>2
	<ees bes' ees>2
	<c g' c>2 r2

	% Main theme - one octave up
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
	
	% Brass
	\key c \major
	<ees' g ees'>1
	<bes f' bes>1
	<bes ges>1
	<des aes>1
	<des a>1
	<e b>1
	<e des>1
	<e des>1
	<e des>1
	<b>1

	\key d \minor
	\transpose c d
	{
	  \relative c
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
	}

	% Choral bit
	\key c \major
	#(set-octavation -1)
	<bes, f' bes>2. <f c' f>4 <bes f' bes>1
%	<bes d g>2. <c f a>4 <d f bes>1
	<ees bes' ees>2. <f c' f>4 <g d' g>1
%	<bes'' ees g>2. <c f a>4 <bes d g>1
	<bes' d g>2. <bes d f>4 <c f a>1
	#(set-octavation 0)
	\time 3/4
	<bes ees g>2.
	<bes d g>2.
	<bes ees g>2.
	\time 4/4
	% "Autobots" theme
	r1 <bes d g>2 <bes d f>2 <a c f>2.
%	r4 r1 <bes ees g>2. r4
	r4 
	<a c f>2 <g c ees>2 
	<bes ees g>2. r4
	<a c f>2 <bes d g>2 r2
	% Another choral bit
	<bes d g>4 <bes d g>4 <bes ees g>2( <bes ees g>2)
	<bes d f>4 <bes d f>4 <c f a>2


	\bar "|."
      }
    }
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