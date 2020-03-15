% A minimal design to show your skills by Maurizio Ponti

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mcv}[2020/03/10 mCV LaTeX class]

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Killing spare time while quarantined
% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Requirements
% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

\LoadClass[11pt]{article}
\RequirePackage{xcolor}
\usepackage[utf8]{inputenc}
\usepackage[english]{babel}
\usepackage{xstring}

\usepackage{float}
\usepackage{wrapfig}
\usepackage{tikz}
\usetikzlibrary{patterns}
\usepackage{pgf-pie}
\usepackage{graphicx}
\usepackage{lipsum} % To fill the void

\usepackage[a4paper, left=93mm, right=12mm,	top=12mm, bottom=12mm]{geometry}
\usepackage{cmbright}
\usepackage[T1]{fontenc}
\usepackage[skins]{tcolorbox}
\usepackage{tabto}
\usepackage{xfp}

\usepackage{xstring}
\usepackage{textpos}

\usepackage[ddmmyyyy]{datetime}

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Definitions and global properties
% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

\setlength{\columnsep}{20mm} %Wrapfig side

\pagestyle{empty}

\setlength\parindent{0pt} % No indentation, just like our founding fathers foresaw

\newcommand{\vdashline}{\tikz[overlay,remember picture]\draw[gun, dashed, line width=0.2mm](-1.05,0.4)--(-1.05,-26.9);}

% GDPR footer, 'cause privacy, you know?
\newcommand{\gdpr}[1]{\begin{textblock*}{18.5cm}(-8cm,0.2cm)
	\begin{center}
		{\tiny #1}.
	\end{center}
\end{textblock*}}

\newcommand{\bernieside}[1]{\begin{wrapfigure}{L}{60mm}
#1
\end{wrapfigure}
}

\newcommand{\berniedash}{
\begin{tikzpicture}[white]
\draw[gun, dashed, line width=0.2mm](0,0)--(6,0);
\end{tikzpicture}\vspace{10pt}
}

\newenvironment{tabs}[1]
 {\flushleft\TabPositions{#1}}
 {\endflushleft}
% If needed
%\begin{tabs}{2cm,4cm}
%A side \tab B side
%\end{tabs}

\newcommand{\joeside}[1]{\vspace{-4.3mm}#1
\vspace*{\fill}}

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Candidate's name
% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
\newcommand{\candidate}[2]{\vspace{-10pt}\begin{center}
{\fontsize{30}{70} \uppercase{\textbf{#1}}\\[5pt]\uppercase{\textbf{#2}}\\[5pt]}
\end{center}}

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Birthday & Date
% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
\newcommand{\birthday}[3]{Date of birth\hfill#1 \textbar{} #2 \textbar{} #3\\[5pt]}

\def\mydate{\leavevmode\hbox{\the\year { }\textbar{} \twodigits\month { }\textbar{} \twodigits\day}}
\def\twodigits#1{\ifnum#1<10 0\fi\the#1}

\newcommand{\wherewhen}[1]{
#1\hfill \mydate}

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

\newcommand*{\IsInteger}[3]{%
    \IfStrEq{#1}{ }{%
        #3% is a blank string
    }{%
        \IfInteger{#1}{#2}{#3}%
    }%
}%

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Picture and quick skills
% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
\newcommand{\splashinfo}[4]{
\vspace{23pt}
\begin{tcolorbox}[
enhanced,
frame hidden,
opacityframe=0,
arc=1mm,
colback=gun,
boxsep=-1mm,
left=3mm,
grow to right by=-0.4cm ]
\textcolor{white}{#1}
\end{tcolorbox}

\begin{tcolorbox}[
enhanced,
frame hidden,
opacityframe=0,
arc=1mm,
colback=peacock,
boxsep=-1mm,
left=3mm,
grow to right by=-0.4cm ]
\textcolor{white}{#2}
\end{tcolorbox}

\begin{tcolorbox}[
enhanced,
frame hidden,
opacityframe=0,
arc=1mm,
colback=mouse,
boxsep=-1mm,
left=3mm,
grow to right by=-0.4cm ]
#3
\end{tcolorbox}
\vspace{-108pt}
\begin{tcolorbox}[
enhanced,
opacityfill=0,
arc=3mm,
boxrule=0.5mm,
frame hidden,
frame style = {fill plain image*={scale=0.12}{#4}},  % Background image
borderline={0.2mm}{0mm}{gun,dashed},
height=4.5cm,
width=3.5cm,
grow to left by=-2.65cm,
grow to right by=2.48cm ]
\end{tcolorbox}\vspace{-3pt}
}

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Languages display
% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
\newcommand{\lang}[2]{
\IsInteger{#2}{%
%
\ifnum #2<101
	\ifnum #2>0
		% Everything's fine!
		#1  
		\vspace{-17pt}
		\begin{tcolorbox}[
			enhanced,
			frame hidden,
			opacityframe=0,
			colback=peacock,
			arc=0mm,
			width=\fpeval{#2/100*4}cm,
			boxsep=-1.4mm,
			grow to left by=-2cm,
			grow to right by=2cm ]
		\end{tcolorbox}
		\ifnum #2=100
			% Do nothing!
		\else
			\vspace{-19.7pt}
			\begin{tcolorbox}[
				enhanced,
				frame hidden,
				opacityframe=0,
				colback=mouse,
				arc=0mm,
				width=4cm,
				boxsep=-1.4mm,
				grow to left by=-\fpeval{2+#2/100*4}cm,
				grow to right by=2cm ]
			\end{tcolorbox}
		\fi	
	\else
		\textit{\textcolor{red}{\footnotesize{Less than $0$ it's a no no.}}}
	\fi
\else
	\textit{\textcolor{red}{\footnotesize{More than $100$ it's a no no.}}}
\fi
}{\textit{\textcolor{red}{\footnotesize{Unable to comply if the second attribute is not an integer!}}}}
}

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Contact info
% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
\newcommand{\reachmetitle}[1]{
\begin{center}
\begin{tikzpicture}[] 
	% Map
	\draw [mouse, fill=mouse, rounded corners=0.05mm] (-0.8,-0.4) to (-0.3,-0.2) to (-0.3,-1.5) to (-0.8,-1.7) to (-0.8,-0.4);
	\draw [gun, fill=gun, rounded corners=0.05mm] (-0.7,-0.49) to (-0.3,-0.325) to (-0.3,-0.65) to (-0.7,-1.05) to (-0.7,-0.5);
	\draw [gun, fill=gun, rounded corners=0.05mm] (-0.3,-0.8) to (-0.3,-1.25) to (-0.7,-1.2);
	\draw [gun, fill=gun, rounded corners=0.05mm] (-0.3,-1.35) to (-0.3,-1.4) to (-0.7,-1.56) to (-0.7,-1.3);
	%
	\draw [mouse, fill=mouse, rounded corners=0.05mm] (-0.2,-0.2) to (0.3,-0.4) to (0.3,-1.7) to (-0.2,-1.5) to (-0.2,-0.2);
	\draw [gun, fill=gun, rounded corners=0.05mm] (-0.2,-1.4) to (0.2,-1.56) to (0.2,-0.96);
	\draw [gun, fill=gun, rounded corners=0.05mm] (-0.1,-1.1) to (0.3,-0.65) to (0.3,-0.55) to (-0.1,-0.5);
	%
	\draw [mouse, fill=mouse, rounded corners=0.05mm] (0.4,-0.4) to (0.9,-0.2) to (0.9,-1.5) to (0.4,-1.7) to (0.4,-0.4);
	\draw [gun, fill=gun, rounded corners=0.05mm] (0.4,-0.8) to (0.4,-1.6) to (0.6,-1.52) to (0.6,-0.72);
	\draw [gun, fill=gun, rounded corners=0.05mm] (0.4,-0.65) to (0.6, -0.57) to (0.6,-0.43) to (0.4,-0.51);
	\draw [gun, fill=gun, rounded corners=0.05mm] (0.7,-1.49) to (0.7,-0.39) to (0.8,-0.36) to (0.8,-1.45);
	%
	\filldraw [white,fill=white, line width=1.5mm] (0,-0.05) circle (10pt);
	\draw [white, fill=white,  line width=1.5mm, rounded corners=0.5mm] (-0.27,-0.1) [out=135,in=135] to (0,-0.85) to [out=45,in=45] (0.27,-0.1);
	\draw [peacock, fill=peacock, rounded corners=0.5mm] (-0.27,-0.1) [out=135,in=135] to (0,-0.85) to [out=45,in=45] (0.27,-0.1);
	%
	\filldraw [peacock,fill=peacock] (0,-0.05) circle (10pt);
	\filldraw [white,fill=white] (0,-0.05) circle (5pt);
\end{tikzpicture}
	\\\uppercase{\textbf{#1}}
\end{center}
}
%
\newcommand{\customfield}[2]{\vspace{-5pt}
#1
\vspace{-14.5pt}
			\begin{tcolorbox}[
				enhanced,
				frame hidden,
				opacityframe=0,
				colback=white,
				left=1.5mm,
				arc=0mm,
				width=4cm,
				boxsep=-1.4mm,
				grow to left by=-2cm,
				grow to right by=2.3cm ]
				\textcolor{gun}{#2}
			\end{tcolorbox}
}
% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Typical activities
% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
\newcommand{\usuallydo}[1]{
\begin{center}
	\begin{tikzpicture}
		\draw [white, fill=gun, rounded corners=0.05mm] (0.65,0.4) to [bend right] (0.8,0.6) to [bend right] (0.75,0.7) to (-0.25,0.7) to [bend right] (-0.3,0.6) to [bend right] (-0.15,0.4);	
		%
    		\draw [white, fill=peacock, rounded corners=0.05mm] (0,0) to [out=60,in=120] (0.5,0)  to (0.35,-0.25) to (0.15,-0.25) to (0,0);
 		\draw [white, fill=peacock, rounded corners=0.05mm] (0.15,-0.3) to (0.35,-0.3) to (0.5,-1.3) to (0.25,-1.5)  to (0,-1.3) to (0.15,-0.32);
 		%
 		\draw [white, fill=mouse, rounded corners=0.05mm] (0,0.1) to (-0.3,0.5) to [out=140,in=90] (-0.35,0.65) to [out=90, in=60] (-0.3,0.7) to [out=60,in=85] (-0.5,0.5) to (-0.6,-0.3) to (0,0.1);
 		\draw [white, fill=mouse, rounded corners=0.05mm] (0.5,0.1) to (0.8,0.5) to [out=50,in=90] (0.85,0.65) to [out=90, in=150] (0.8,0.7) to [out=150,in=95] (1,0.5) to (1.1,-0.3) to (0.5,0.1);
  	\end{tikzpicture}
	\\\uppercase{\textbf{#1}}
\end{center}
}

%
% Defining the new dimensions and parameters
\newlength{\hatchspread}
\newlength{\hatchthickness}
\newlength{\hatchshift}
\newcommand{\hatchcolor}{}
% Declaring the keys in tikz
\tikzset{hatchspread/.code={\setlength{\hatchspread}{#1}},
         hatchthickness/.code={\setlength{\hatchthickness}{#1}},
         hatchshift/.code={\setlength{\hatchshift}{#1}},% Must be >= 0
         hatchcolor/.code={\renewcommand{\hatchcolor}{#1}}}
% Setting the default values
\tikzset{hatchspread=3pt,
         hatchthickness=0.4pt,
         hatchshift=0pt,% must be >= 0
         hatchcolor=gun}
% Declaring the pattern
\pgfdeclarepatternformonly[\hatchspread,\hatchthickness,\hatchshift,\hatchcolor] % Variables
   {custom north west lines} % Name
   {\pgfqpoint{\dimexpr-2\hatchthickness}{\dimexpr-2\hatchthickness}} % Lower left corner
   {\pgfqpoint{\dimexpr\hatchspread+2\hatchthickness}{\dimexpr\hatchspread+2\hatchthickness}} % Upper right corner
   {\pgfqpoint{\dimexpr\hatchspread}{\dimexpr\hatchspread}}% Tile size
   {% Shape description
    \pgfsetlinewidth{\hatchthickness}
    \pgfpathmoveto{\pgfqpoint{0pt}{\dimexpr\hatchspread+\hatchshift}}
    \pgfpathlineto{\pgfqpoint{\dimexpr\hatchspread+0.15pt+\hatchshift}{-0.15pt}}
    \ifdim \hatchshift > 0pt
      \pgfpathmoveto{\pgfqpoint{0pt}{\hatchshift}}
      \pgfpathlineto{\pgfqpoint{\dimexpr0.15pt+\hatchshift}{-0.15pt}}
    \fi
    \pgfsetstrokecolor{\hatchcolor}
    \pgfusepath{stroke}
   }

% Skill pie
\newcommand{\skillpie}[5]{
\vspace{-20pt}
\newcounter{K}
\setcounter{K}{1}
\newcounter{A}
\newcounter{B}
\newcounter{C}
\newcounter{D}
\newcounter{E}
\noexpandarg
\exploregroups
\def\legendA{\StrBehind{#1}{/}}

\def\legendB{\StrBehind{#2}{/}}

\def\legendC{\StrBehind{#3}{/}}

\def\legendD{\StrBehind{#4}{/}}

\def\legendE{\StrBehind{#5}{/}}
\foreach \x/\name in {#1,#2,#3,#4,#5}
{
	\ifnum \theK=1
		\setcounter{A}{\x}
	\fi
	\ifnum \theK=2
		\setcounter{B}{\x}
	\fi
	\ifnum \theK=3
		\setcounter{C}{\x}
	\fi
	\ifnum \theK=4
		\setcounter{D}{\x}
	\fi
	\ifnum \theK=5
		\setcounter{E}{\x}
	\fi
	\stepcounter{K}
}

\newcommand{\totalskills}{\fpeval{\theA+\theB+\theC+\theD+\theE}}
\ifnum \totalskills=100
	\begin{center}
	\begin{tikzpicture}[white]
		\tikzset{
		lines/.style={line width=1mm},
		}		
		%
		\draw[white,fill=peacock,rounded corners=0.05mm, line width=1.5mm] (0,0) --  (90:2) arc(90:\fpeval{90-360/100*\theA}:2) -- cycle;
		%
		\draw[white,fill=gun,rounded corners=0.05mm, line width=1.5mm,pattern=custom north west lines,hatchspread=6pt,hatchthickness=3pt] (0,0) --  (\fpeval{90-360/100*\theA}:2) arc(\fpeval{90-360/100*\theA}:\fpeval{90-360/100*(\theA+\theB)}:2) -- cycle;
		%
		\draw[white,fill=mouse,rounded corners=0.05mm, line width=1.5mm] (0,0) --  (\fpeval{90-360/100*(\theA+\theB)}:2) arc(\fpeval{90-360/100*(\theA+\theB)}:\fpeval{90-360/100*(\theA+\theB+\theC)}:2) -- cycle;
		%
		\draw[white,fill=peacock,rounded corners=0.05mm, line width=1.5mm,pattern=custom north west lines,hatchspread=6pt,hatchthickness=3pt,hatchcolor=peacock] (0,0) --  (\fpeval{90-360/100*(\theA+\theB+\theC)}:2) arc(\fpeval{90-360/100*(\theA+\theB+\theC)}:\fpeval{90-360/100*(\theA+\theB+\theC+\theD)}:2) -- cycle;
		%
		\draw[white,fill=gun,rounded corners=0.05mm, line width=1.5mm] (0,0) --  (\fpeval{90-360/100*(\theA+\theB+\theC+\theD)}:2) arc(\fpeval{90-360/100*(\theA+\theB+\theC+\theD)}:\fpeval{90-360/100*(\theA+\theB+\theC+\theD+\theE)}:2) -- cycle;
		%
		\filldraw [fill=white,style={lines}] (0,0) circle (25pt);
	\end{tikzpicture}
	\end{center}
	\vspace{-17pt}
	\ifnum \theA>0
		\begin{tikzpicture}[white]
		\draw[white,fill=peacock,rounded corners=0.05mm, line width=0.5mm] (0,0) -- (0,0.5) -- (1,0.5) -- (1,0) -- cycle;
		\end{tikzpicture}
		\vspace{-19pt}
		\begin{tcolorbox}[
			enhanced,
			frame hidden,
			opacityframe=0,
			colback=white,
			left=1.5mm,
			arc=0mm,
			width=4cm,
			boxsep=-1.4mm,
			grow to left by=-1.3cm,
			grow to right by=2.5cm ]
			\textcolor{gun}{\legendA}
		\end{tcolorbox}
		\vspace{-2pt}
	\fi
	
	\ifnum \theB>0
		\begin{tikzpicture}[white]
		\draw[white,fill=gun,rounded corners=0.05mm, line width=0.5mm,pattern=custom north west lines,hatchspread=6pt,hatchthickness=3pt] (0,0) -- (0,0.5) -- (1,0.5) -- (1,0) -- cycle;
		\end{tikzpicture}
		\vspace{-19pt}
		\begin{tcolorbox}[
			enhanced,
			frame hidden,
			opacityframe=0,
			colback=white,
			left=1.5mm,
			arc=0mm,
			width=4cm,
			boxsep=-1.4mm,
			grow to left by=-1.3cm,
			grow to right by=2.5cm ]
			\textcolor{gun}{\legendB}
		\end{tcolorbox}
		\vspace{-2pt}
	\fi
	
	\ifnum \theC>0
		\begin{tikzpicture}[white]
		\draw[white,fill=mouse,rounded corners=0.05mm, line width=0.5mm] (0,0) -- (0,0.5) -- (1,0.5) -- (1,0) -- cycle;
		\end{tikzpicture}
		\vspace{-19pt}
		\begin{tcolorbox}[
			enhanced,
			frame hidden,
			opacityframe=0,
			colback=white,
			left=1.5mm,
			arc=0mm,
			width=4cm,
			boxsep=-1.4mm,
			grow to left by=-1.3cm,
			grow to right by=2.5cm ]
			\textcolor{gun}{\legendC}
		\end{tcolorbox}
		\vspace{-2pt}
	\fi
	
	\ifnum \theD>0
		\begin{tikzpicture}[white]
		\draw[white,fill=peacock,rounded corners=0.05mm, line width=0.5mm,pattern=custom north west lines,hatchspread=6pt,hatchthickness=3pt,hatchcolor=peacock] (0,0) -- (0,0.5) -- (1,0.5) -- (1,0) -- cycle;
		\end{tikzpicture}
		\vspace{-19pt}
		\begin{tcolorbox}[
			enhanced,
			frame hidden,
			opacityframe=0,
			colback=white,
			left=1.5mm,
			arc=0mm,
			width=4cm,
			boxsep=-1.4mm,
			grow to left by=-1.3cm,
			grow to right by=2.5cm ]
			\textcolor{gun}{\legendD}
		\end{tcolorbox}
		\vspace{-2pt}
	\fi
	
	\ifnum \theE>0
		\begin{tikzpicture}[white]
		\draw[white,fill=gun,rounded corners=0.05mm, line width=0.5mm] (0,0) -- (0,0.5) -- (1,0.5) -- (1,0) -- cycle;
		\end{tikzpicture}
		\vspace{-19pt}
		\begin{tcolorbox}[
			enhanced,
			frame hidden,
			opacityframe=0,
			colback=white,
			left=1.5mm,
			arc=0mm,
			width=4cm,
			boxsep=-1.4mm,
			grow to left by=-1.3cm,
			grow to right by=2.5cm ]
			\textcolor{gun}{\legendE}
		\end{tcolorbox}
	\fi
\else
	\begin{center}
		\textit{\textcolor{red}{\footnotesize{You're either lazy or overworking!}}}
	\end{center}
\fi

}

% Come to the right side

% Section title
\newcommand{\sectiontitle}[1]{
\begin{tikzpicture}[white]
\draw[gun, dashed, line width=0.2mm](-0.3,0)--(10.2,0);
\end{tikzpicture}
\vspace{-26pt}

\begin{tcolorbox}[
	enhanced,
	frame hidden,
	opacityframe=0,
	colback=white,
	left=4.5mm,
	arc=0mm,
	height=5mm,
	hbox,
	%width= \boxwidth mm,
	boxsep=-1.4mm,
	grow to left by=-2.4cm ]
	\textcolor{gun}{\uppercase{\textbf{#1}}}
\end{tcolorbox}
}

% Section item
\newcommand{\sectionitem}[5]{\vspace{-2pt}
\begin{tcolorbox}[
	enhanced,
	frame hidden,
	opacityframe=0,
	colback=white,
	left=2mm,
	arc=0mm,
	width=4cm,
	boxsep=-1.4mm ]
	\textcolor{gun}{#1}
\end{tcolorbox}
\vspace{-21pt}
\begin{tcolorbox}[
	enhanced,
	frame hidden,
	opacityframe=0,
	colback=white,
	left=4.5mm,
	arc=0mm,
	width=10.7cm,
	boxsep=-1.4mm,
	grow to left by=-2.4cm ]
	\textcolor{gun}{#2, #3, #4.\\[1pt]\textit{#5}.}
\end{tcolorbox}
}

\newcommand{\sectionitemless}[4]{\vspace{-2pt}
\begin{tcolorbox}[
	enhanced,
	frame hidden,
	opacityframe=0,
	colback=white,
	left=2mm,
	arc=0mm,
	width=4cm,
	boxsep=-1.4mm ]
	\textcolor{gun}{#1}
\end{tcolorbox}
\vspace{-21pt}
\begin{tcolorbox}[
	enhanced,
	frame hidden,
	opacityframe=0,
	colback=white,
	left=4.5mm,
	arc=0mm,
	width=10.7cm,
	boxsep=-1.4mm,
	grow to left by=-2.4cm ]
	\textcolor{gun}{#2, #3.\\[1pt]\textit{#4}.}
\end{tcolorbox}
}

\newcommand{\sectionitemlight}[4]{\vspace{-2pt}
\begin{tcolorbox}[
	enhanced,
	frame hidden,
	opacityframe=0,
	colback=white,
	left=2mm,
	arc=0mm,
	width=4cm,
	boxsep=-1.4mm ]
	\textcolor{gun}{#1}
\end{tcolorbox}
\vspace{-21pt}
\begin{tcolorbox}[
	enhanced,
	frame hidden,
	opacityframe=0,
	colback=white,
	left=4.5mm,
	arc=0mm,
	width=10.7cm,
	boxsep=-1.4mm,
	grow to left by=-2.4cm ]
	\textcolor{gun}{#2, #3, #4.}
\end{tcolorbox}
}

\newcommand{\otherskill}[1]{\vspace{-2pt}
\begin{tcolorbox}[
	enhanced,
	frame hidden,
	opacityframe=0,
	colback=white,
	left=4.5mm,
	arc=0mm,
	width=10.7cm,
	boxsep=-1.4mm,
	grow to left by=-2.4cm ]
	\textcolor{gun}{#1.}
\end{tcolorbox}
\vspace{-22pt}
\begin{tikzpicture}[white]
	\filldraw [peacock,fill=peacock] (0,0) circle (3pt);
	\filldraw [white,fill=white] (0,0) circle (1.5pt);
	\filldraw [white,fill=white] (-2.3,0) circle (1pt); % Just to shift things right
\end{tikzpicture}
\vspace{7pt}
}

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Cover letter
% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

\newcommand{\cletter}[1]{
\begin{tcolorbox}[
	enhanced,
	frame hidden,
	opacityframe=0,
	colback=white,
	left=-2.4cm,
	arc=0mm,
	width=10.7cm,
	boxsep=-1.4mm,
	grow to left by=-2.4cm ]
	\textcolor{gun}{#1}
\end{tcolorbox}}

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% In case you were wondering, you're awesome!
% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -