\ProvidesClass{uebungszettel_py2017}
\LoadClass[12pt]{article} 
\RequirePackage{amsfonts}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amsthm}
\RequirePackage{array}
\RequirePackage[german]{babel} 
\RequirePackage{bm}
\RequirePackage{color}
\RequirePackage{enumitem}
\RequirePackage[utf8]{inputenc}
\RequirePackage{listings}
\RequirePackage{scrpage2}
\RequirePackage{tikz}
\RequirePackage{tikz-cd}
\RequirePackage{mathrsfs}
\RequirePackage{mathtools}
\RequirePackage{url}
\RequirePackage{verbatim}
\RequirePackage{xspace}

\RequirePackage{hyperref}
\RequirePackage[all]{hypcap}

\newcommand{\Progkursbeschreibung}{Python-Programmierkurs Mathematik 2017 von Clelia, Felix und Johannes}
\newcommand{\Progkurswebseite}{\url{http://fsmath.uni-bonn.de/de/AdvProgkurs2017}}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

\theoremstyle{definition}
\newtheorem{aufg}{Aufgabe}
\newtheorem{aufg_schw}[aufg]{Aufgabe*}
\renewcommand{\labelenumi}{\alph{enumi})}
\renewcommand{\labelenumii}{\Alph{enumii})}

\setlength{\headheight}{2.0\baselineskip}

\pagestyle{scrheadings}
\clearscrheadings
\clearscrplain
\cohead{\jobname}
\lofoot{}
\cofoot{%
  \raisebox{-5ex}{%
    \begin{tabular}{cc}
      \small \Progkursbeschreibung\\
      \small \Progkurswebseite
    \end{tabular}
  }
}
\rofoot{}
\setheadsepline{.5pt} % Linie unter dem Head
\setfootsepline{.2pt} % Ganzunten


\def\CPP{{\bfseries C\nolinebreak[4]\hspace{-.05em}\raisebox{.4ex}{\tiny\bfseries ++}}\xspace}
\newcommand{\C}{{\bfseries C}\xspace}
\newcommand{\CNeunzig}{{\bfseries C90}\xspace}
\newcommand{\CNeunundneunzig}{{\bfseries C99}\xspace}
\newcommand{\CElf}{{\bfseries C11}\xspace}
\newcommand{\CPPElf}{\CPP{}11\xspace}
\newcommand{\CC}{\C/\CPP}
\newcommand{\Python}{{\bfseries Python}\xspace}
\newcommand{\PythonZwei}{{\bfseries Python2}\xspace}
\newcommand{\PythonDrei}{{\bfseries Python3}\xspace}

% For comments
\newcommand{\todo}[1]{{\color{red}\bfseries Todo: #1 }}
\newcommand{\Felix}[1]{{\color{blue}#1}}

\definecolor{col_cppkeywords}{HTML}{808000}
\definecolor{col_cppclasses} {HTML}{800080}
\definecolor{col_cppmembers} {HTML}{800000}

\lstdefinestyle{CPP}
{
  language=C++,          % Für C++ Listings
  frame=single,
  numbers=left,
  numberstyle=\footnotesize,
  stepnumber=1,
  numbersep=5pt,
  basicstyle=\footnotesize\ttfamily\color{black},
  commentstyle=\itshape\color{gray},
  morekeywords={
    complex,
    int8_t, int32_t, int64_t,
    size_t,
    uint8_t, uint32_t, uint64_t,
  },
  keywords=[2]{
    map,
    ostream,
    std, string,
    unordered_set,
  },
  keywords=[3]{
      basis,
  },
  keywordstyle=\color{col_cppkeywords},
  keywordstyle=[2]\color{col_cppclasses},
  keywordstyle=[3]\color{col_cppmembers},
}
\lstdefinestyle{CPPinline}
{
  language=C++,          % Für C++ Listings
  frame=single,
  numbers=none,
  basicstyle=\ttfamily\color{black},
  commentstyle=\itshape\color{gray},
  morekeywords={
    complex,
    int8_t, int32_t, int64_t,
    size_t,
    uint8_t, uint32_t, uint64_t,
  },
  keywords=[2]{
    map,
    ostream,
    std, string,
    unordered_set,
  },
  keywords=[3]{
      basis,
  },
  keywordstyle=\color{col_cppkeywords},
  keywordstyle=[2]\color{col_cppclasses},
  keywordstyle=[3]\color{col_cppmembers},
}
\newcommand{\lcpp}[1]{\lstinline[style=CPPinline]{#1}}

\definecolor{col_pykeywords}{HTML}{000080}
\definecolor{col_pycomments}{HTML}{808080}
\definecolor{col_pystrings} {HTML}{008000}

\lstdefinestyle{Py}
{
  language=Python,
  frame=single,
  numbers=left,
  numberstyle=\footnotesize,
  stepnumber=1,
  numbersep=5pt,
  basicstyle=\footnotesize\ttfamily\color{black},
  commentstyle=\itshape\color{col_pycomments},
  stringstyle=\bfseries\color{col_pystrings},
  keywordstyle=\bfseries\color{col_pykeywords},
}
\lstdefinestyle{Pyinline}
{
  language=Python,
  frame=single,
  numbers=none,
  basicstyle=\ttfamily\color{black},
  commentstyle=\itshape\color{col_pycomments},
  stringstyle=\bfseries\color{col_pystrings},
  keywordstyle=\bfseries\color{col_pykeywords},
}
\lstdefinelanguage{plain}
{
  frame=single,
  numbers=left,
  numberstyle=\footnotesize,
  stepnumber=1,
  numbersep=5pt,
  basicstyle=\footnotesize\ttfamily\color{black},
}


\newcommand{\lpy}[1]{\lstinline[style=Pyinline]{#1}}

\lstset{
  language=Python,
  style=Py,
  literate={~} {$\bm{\scriptstyle\sim}$}{1}
}
