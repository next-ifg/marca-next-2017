
% Manual de Marca do Núcleo de Estudos e Pesquisas Experimentais e Tecnológicas (NExT)

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{manualmarca}[2017/05/04]

\LoadClass{report}

\RequirePackage[no-math]{fontspec}
\RequirePackage[utf8]{inputenc}
\RequirePackage{graphicx}
\RequirePackage[brazilian]{babel}
\RequirePackage{xcolor}
\RequirePackage{epstopdf}
\RequirePackage[explicit]{titlesec}
\RequirePackage[rightlabels]{titletoc}
\RequirePackage{fancyhdr}
\RequirePackage{array}

\RequirePackage[%
colorlinks=true,
]{hyperref}

\usepackage{tikz}
\usetikzlibrary{arrows,decorations.pathmorphing,backgrounds,positioning,fit}

\newcommand{\NExT}{\href{http://nextpesquisa.com.br/}{NExT}}

\newcommand{\TituloDocumento}[1]{\gdef\@TituloDocumento{#1}}
\newcommand{\InstituicaoDocumento}[1]{\gdef\@InstituicaoDocumento{#1}}
\newcommand{\AutorDocumento}[1]{\gdef\@AutorDocumento{#1}}
\newcommand{\DataDocumento}[1]{\gdef\@DataDocumento{#1}}
\newcommand{\VersaoDocumento}[1]{\gdef\@VersaoDocumento{#1}}

% Aumenta o espaço interno das celulas da tabela
\renewcommand*{\arraystretch}{1.5}

\newcommand*{\CabTabela}[1]{\multicolumn{1}{c}{\bfseries #1}}

\newcommand{\Revisao}[4]{#1 & #2 & #3 & #4 \\ \hline}
\newenvironment{TabelaRevisao}{%
  \begin{center}
    \begin{tabular*}{.8\linewidth}{cccm{6cm}}
      \hline \hline
      \CabTabela{Versão} & \CabTabela{Data} & \CabTabela{Responsável} & \CabTabela{Descrição} \\
      \hline \hline
      }{%&&&
    \end{tabular*}
  \end{center}
}

% Desabilita a indetação automática de paragrafos.
\setlength{\parindent}{0pt}
\setlength{\parskip}{12pt}

% Aumenta o espaço entre as figuras e o texto
\setlength{\textfloatsep}{30pt plus 20pt minus 10pt}
\setlength{\intextsep}{30pt plus 20pt minus 10pt}


% Aumenta o espaço entre paragrafos

% Configuração de fontes
\setmainfont[%
BoldFont={Open Sans Bold},%
BoldItalicFont={Open Sans Bold Italic},%
]{Open Sans}
\setsansfont[Ligatures=TeX]{Roboto}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% Font
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
\defaultfontfeatures{Ligatures=TeX}
\frenchspacing

% For source code
\setmonofont[%
BoldFont=DejaVu Sans Mono Bold,
]{DejaVu Sans Mono Bold}

% Normal font
\setsansfont{Open Sans}[
BoldFont=Open Sans Bold,
ItalicFont=Open Sans Italic,
BoldItalicFont=Open Sans Bold Italic,
]

% Font for section, subsection, subsubsection, etc
\newfontfamily{\titlefont}{Roboto Condensed}[
BoldFont=Roboto Condensed Regular,
ItalicFont=Roboto Condensed Italic,
BoldItalicFont=Roboto Condensed Bold Italic,
]

% Font for chapter number
\newfontfamily{\upperNumber}{Roboto}[
BoldFont=Roboto Regular,
ItalicFont=Roboto Italic,
BoldItalicFont=Roboto Bold Italic,
]
% Font for chapter title
% \newfontfamily{\chapterfont}{BIRTH OF A HERO}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% Layout
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
\usepackage[
xetex,
a4paper,
% ignoreheadfoot,
left=3cm,
right=2cm,
top=1cm,
bottom=2.5cm,
marginparwidth=0cm,
marginparsep=0mm,
headheight=2cm,
headsep=1cm,
includehead,
]{geometry}
% \setlength{\skip\footins}{1cm}
% \setlength{\footnotesep}{2mm}
% \setlength{\parskip}{1ex}
% \setlength{\parindent}{0ex}

% Configuração do Cabeçalho
% \lhead{%
%   \null
%   \vfill
%   \parbox{.33\textwidth}{%
%     \@InstituicaoDocumento%
%   }
%   \vfill
% }
\lhead{%
  \null
  \vfill
  \includegraphics[height=1.25cm]{logo-instituicao}
  \vfill
}
\rhead{%
  \null
  \vfill
  \includegraphics[height=1cm]{logo-nucleo}
  \vfill
}

\lfoot{\@TituloDocumento{} \\ \@InstituicaoDocumento}
\cfoot{}
\rfoot{%
  \null
  \vfill
  \thepage
  \vfill
}

\renewcommand*{\footrulewidth}{1pt}
\renewcommand*{\headrulewidth}{2pt}

% Define as Cores da Paleta

\definecolor[named]{CorPrimaria}{HTML}{FF1D06}
\definecolor[named]{CorSecundaria}{HTML}{262626}

% ==============================================================================
% CAPA DO MANUAL
% ==============================================================================
\renewcommand*{\maketitle}{%
  \pagestyle{empty}
  \newgeometry{margin=1cm}
  \begin{titlepage}
    \tikz[remember picture, overlay]{%
      \node[opacity=1,inner sep=0pt] at (current page.center){%
        \includegraphics[width=\paperwidth,height=\paperheight]{./capa/capa.eps}%
      };%
      \node (titulo) [above=2cm of current page.south]{%
        \parbox{\textwidth}{%
          \raggedleft{
            \fontsize{30pt}{36pt}\selectfont
            \fontspec{Roboto Condensed Bold}
            \MakeUppercase\@TituloDocumento\\
            {\color{CorSecundaria}\rule[4mm]{\linewidth}{1mm}}\\
            {%
              \fontspec{Roboto Light}
              \LARGE\color{CorPrimaria}
              \@InstituicaoDocumento
            }
          }
        }
      };
    }%
  \end{titlepage}
  \restoregeometry{}
  \cleardoublepage{}
  %
  % Contra Capa
  %

    \vspace*{\stretch{2}}
    \begin{tabular}{ll}
      \textbf{Autor}& \@AutorDocumento\\
      \textbf{Data}& \@DataDocumento\\
      \textbf{Versão}& \@VersaoDocumento\\
    \end{tabular}
    
    \vspace*{\stretch{2}}

    \input{tab-revisoes.tex}

    \vspace*{\stretch{1}}
    \pagebreak[4]
}

% ==============================================================================
% TOC
% ==============================================================================


% ==============================================================================
\newcommand{\InicioDocumento}{%
\pagestyle{fancy}

\titleformat{\chapter}[display]%
{
  \thispagestyle{empty}%
  \null%
  \vspace*{\stretch{1}}
  \MakeUppercase\bfseries}%
{\raggedleft\LARGE\chaptertitlename\quad\thechapter}%
{5cm}{%
  \raggedleft\huge\bfseries\MakeUppercase{##1}
}[%
\vspace*{\stretch{3}}
\clearpage{}]

}

% ==============================================================================

% \titleformat{\chapter}[display]%
% {\null%
% \vspace*{\stretch{1}}
% \MakeUppercase\bfseries}%
% {\raggedleft\LARGE\chaptertitlename\quad\thechapter}%
% {5cm}{%
% \raggedleft\huge\bfseries\MakeUppercase{#1}
% }[%
%   \vspace*{\stretch{3}}
%   \clearpage{}]

\newcommand{\DescricaoCor}[3]{%
  \definecolor[named]{descCor}{HTML}{#1}
  \begin{tikzpicture}
    \node (quadro) [%
    rectangle,minimum width=1cm,minimum height=2cm,
    thick,draw=white,fill=descCor,] {};
  \node (texto) [right=6pt of quadro.north east, anchor=north west,] {%
    \begin{tabular}{l l}
      \textbf{HTML} & \##1\\
      \textbf{RGB} & #2\\
      \textbf{CMYK} & #3\\
    \end{tabular}
  };
\end{tikzpicture}
}




%%% Local Variables: 
%%% coding: utf-8
%%% TeX-engine: xetex 
%%% End: 
