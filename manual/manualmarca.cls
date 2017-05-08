
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

\RequirePackage[%
colorlinks=true,
]{hyperref}

\usepackage{tikz}
\usetikzlibrary{arrows,decorations.pathmorphing,backgrounds,positioning,fit}

\newcommand{\NExT}{\href{http://nextpesquisa.com.br/}{NExT}}

\newcommand{\TituloDocumento}[1]{\gdef\@TituloDocumento{#1}}
\newcommand{\AutorDocumento}[1]{\gdef\@AutorDocumento{#1}}
\newcommand{\DataDocumento}[1]{\gdef\@DataDocumento{#1}}
\newcommand{\VersaoDocumento}[1]{\gdef\@VersaoDocumento{#1}}

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
% Numbers=OldStyle,
BoldFont=Open Sans Bold,
ItalicFont=Open Sans Italic,
BoldItalicFont=Open Sans Bold Italic,
]
% Font for section, subsection, subsubsection, etc
\newfontfamily{\titlefont}{Roboto Condensed}[
Numbers=OldStyle,
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
\lhead{%
  \null
  \vfill
  Núcleo de Estudos e Pesquisas\\
  Experimentais e Tecnológicas%\
  \vfill
}
\chead{}
\rhead{%
  \includegraphics[height=1.5cm]{logo-next-color}
}

\lfoot{\@TituloDocumento{} - \NExT}
\cfoot{Versão: \@VersaoDocumento}
\rfoot{\thepage}

\renewcommand*{\footrulewidth}{1pt}
\renewcommand*{\headrulewidth}{2pt}

% Define as Cores da Paleta

\definecolor[named]{NextVermelho}{HTML}{FF1D06}

\definecolor[named]{NextCinza}{HTML}{262626}
\definecolor[named]{NextCinzaClaro}{HTML}{676767}


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
            {\color{NextCinza}\rule[4mm]{\linewidth}{1mm}}\\
            {%
              \fontspec{Roboto Light}
              \LARGE\color{NextVermelho}
              Núcleo de Estudos e Pesquisas Experimentais e Tecnológicas
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
  
  \vspace*{\stretch{1}}
  {%
    \noindent\huge\color{NextVermelho}
    A história do NExT}\\
  \vspace*{1cm}
  \noindent

  Em 2013, alguns pesquisadores do IFG criaram o \textbf{Núcleo de Estudos e
    Pesquisas Experimentais e Tecnológicas} (\NExT{}) do Instituto Federal de
  Goiás, que nasceu da vontade de realizar pesquisas de alto nível (básica e
  aplicada) e investigar conjuntamente, entre os seus departamentos e de outras
  instituições e dentro das linhas de pesquisa estabelecidas e enquadradas em
  áreas de concentração da Coordenadoria de Aperfeiçoamento de Pessoal de Nível
  Superior (CAPES) e do Conselho Nacional de Desenvolvimento Científico e
  Tecnológico (CNPq).

  \vspace*{1cm}
  Acesso ao Diretório de Grupos de Pesquisa no Brasil:\\ \url{http://dgp.cnpq.br/dgp/espelhogrupo/0235687263399443}

  \vspace*{1cm}
  Área predominante: Engenharias; Engenharia Elétrica

  \vspace*{1cm}
  Linhas de pesquisa:

  \begin{itemize}
  \item Controle e Automação de Processos
  \item Modelagem, Otimização e Simulação de Sistemas
  \item Sistema Elétrico de Potência
  \end{itemize}


    \vspace*{\stretch{1}}
    \begin{tabular}{ll}
      \textbf{Autor}& \@AutorDocumento\\
      \textbf{Data}& \@DataDocumento\\
      \textbf{Versão}& \@VersaoDocumento\\
    \end{tabular}

    \vspace*{\stretch{1}}
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
%%% End: 
