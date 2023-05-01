%%Identification
%%The class identifies itself and the LaTeX version needed
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{semhas-tesis-filkom}[]


%%Preliminary definitions, needed by the options
% \newcommand{\headlinecolor}{\normalcolor}
% \RequirePackage{xcolor}
% \definecolor{slcolor}{HTML}{882B21}

%%This parts handles the options passed to the class.
% \DeclareOption{onecolumn}{\OptionNotUsed}
% \DeclareOption{green}{\renewcommand{\headlinecolor}{\color{green}}}
% \DeclareOption{red}{\renewcommand{\headlinecolor}{\color{slcolor}}}
% \DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
% \ProcessOptions\relax
\LoadClass[10pt,twocolumn]{article}
\usepackage{times}
\usepackage[english,bahasai]{babel}
\usepackage{multicol,blindtext,ragged2e}
  \setlength{\columnsep}{1.5em}
\usepackage{tabularx,booktabs}
\usepackage{multirow}
\usepackage{geometry}
  \geometry{a4paper, margin=2cm}
\usepackage{titlesec}
  \titleformat*{\subsubsection}{\fontsize{11}{13}\bfseries\selectfont}
  \titleformat{\section}{\fontsize{11}{13}\filcenter\bfseries\selectfont}{\Roman{section}.}{.5em}{\MakeUppercase}
  \titleformat{\subsection}{\fontsize{11}{13}\itshape\selectfont}{\Alph{subsection}.}{.5em}{\relax}
  \titlespacing*{\section}{0pt}{1em}{.2em}
  \titlespacing*{\subsection}{0pt}{0.5em}{0.5em}
  \titlespacing*{\subsubsection}{0pt}{0em}{0.25em}
  \titlespacing*{\subsubsubsection}{0pt}{1em}{0.25em}

\usepackage{caption}
  \captionsetup[table]{name=\MakeUppercase{Tabel},labelsep=period,skip=2pt}
  \captionsetup[figure]{labelsep=period,skip=10pt}
\usepackage{subcaption}
\usepackage{balance}


% \usepackage{natbib}
% \usepackage{bibentry}
% \nobibliography*
% \renewcommand\bibpreamble{\vspace{0.2\baselineskip}}
% \renewcommand{\bibpreamble}{\vskip1cm}
\let\OLDthebibliography\thebibliography
\renewcommand\thebibliography[1]{
  \OLDthebibliography{#1}
  \setlength{\parskip}{0pt}
  \setlength{\itemsep}{0pt plus 0.3ex}
}


% % \usepackage[T1]{fontenc}
% \RequirePackage[utf8]{inputenc}
% \RequirePackage{fontspec}
% \usepackage[affil-it]{authblk} 

% \titleformat*{\section}{\LARGE\headingfont}
% \titleformat*{\subsection}{\Large\headingfont}
% \titleformat*{\subsubsection}{\large\headingfont}
% \renewcommand{\maketitlehooka}{\headingfont}

\date{}

\newcommand{\theauthor}[1]{
  {\large{\fontfamily{qhv}\selectfont{#1}}}\\[4pt]
}
\newcommand{\thetitle}[1]{
  \fontfamily{qhv}\selectfont{\textbf{#1}}
}
\newcommand{\aff}[1]{
  \begin{normalsize}
    \begin{tabular}[c]{@{}c@{}}
      #1
    \end{tabular}
  \end{normalsize}
}

\renewcommand{\maketitle}{
  \twocolumn[
  \vskip -2em
  \begin {center}\let \footnote \thanks {\LARGE \thetitle{\@title} \par }\vskip 1.5em{\large \lineskip .5em\begin {tabular}[t]{c}\@author \end {tabular}\par }\end {center}\par \vskip 1.5em]
}

\newcommand{\abstrak}[1]{
  \noindent\small{\textbf{\textit{Abstract}\textemdash #1}}
  \normalsize
}

% \renewcommand{\thetable}{\arabic{table}}


% \newfontfamily\headingfont[]{Gill Sans}

% \usepackage{indentfirst}
% \usepackage{setspace}
% \usepackage{enumitem}
% \usepackage[utf8]{inputenc}
% \usepackage[autostyle=false]{csquotes}
% \usepackage{longtable}
% \usepackage[all]{nowidow}
\usepackage{graphicx}
% \usepackage{soul}
% \usepackage{ulem}
% \usepackage{gensymb}
% \usepackage{textcomp}
% \usepackage{amsmath}
% \newcommand\eqnumber{\addtocounter{equation}{1}\tag{\theequation}}

% \usepackage{chngcntr}
% \counterwithin{table}{section}
% \counterwithin{figure}{section}
% \counterwithin{equation}{section}

% \setlist[enumerate,itemize]{itemsep=0pt,parsep=0pt,before={\parskip=0pt}, topsep=2.5pt, partopsep=0pt}

% \titleformat{\section}{\normalfont\Large\filcenter\bfseries}{BAB \arabic{section}}{.5em}{\uppercase}
% \titlespacing*{\section}{0pt}{1em}{3.5em}
% \titlespacing*{\subsection}{0pt}{1em}{0.25em}
% \titlespacing*{\subsubsection}{0pt}{1em}{0.25em}
% \titlespacing*{\subsubsubsection}{0pt}{1em}{0.25em}

% \usepackage{caption} 
% \DeclareCaptionLabelSeparator{mysep}{\quad}
% \captionsetup[table]{skip=10pt,labelsep=mysep}
% \captionsetup[figure]{skip=10pt,labelsep=mysep}



% % \usepackage{tocbibind}
% \usepackage{natbib}
% \usepackage{bibentry}
% \nobibliography*
% \renewcommand{\bibpreamble}{\vskip1cm}
% \let\OLDthebibliography\thebibliography
% \renewcommand\thebibliography[1]{
%   \OLDthebibliography{#1}
%   \setlength{\parskip}{0pt}
%   \setlength{\itemsep}{0pt plus 0.3ex}
% }


% \usepackage[scaled]{beramono}
% \renewcommand*\familydefault{\ttdefault} %% Only if the base font of the document is to be typewriter style
% \usepackage[T1]{fontenc}
% \usepackage{fancyvrb}
% \usepackage{lipsum}
% \usepackage{etoolbox}
% \usepackage{xspace}
% \usepackage{xstring}
% \usepackage{ifthen}
% % \usepackage[toc,page]{appendix}
% % \usepackage[sfdefault]{carlito}
% \usepackage[default,scale=0.95]{opensans}
% \usepackage[a4paper, 
%     left=40mm,
%     bottom=30mm,
%     right=30mm, 
%     top=30mm] {geometry}
% \usepackage{tocloft}[titles]
%   \setlength{\cftsecindent}{0pt}
%   \setlength{\cftsubsecindent}{0pt}
%   \setlength{\cftsubsubsecindent}{25pt}
%   \renewcommand{\cftsecpresnum}{BAB\space\space}
%   \renewcommand{\cftsecnumwidth}{4em}
%   % \renewcommand\thesection{\Roman{section}}
%   % \renewcommand\thesubsection{\Roman{\thesection}.\arabic{subsection}}
%   \renewcommand{\thesection}{\Roman{section}}
%   \renewcommand{\thesubsection}{\arabic{section}.\arabic{subsection}}
%   \renewcommand{\cftdotsep}{2}
%   \renewcommand{\cftsecleader}{\cftdotfill{\cftdotsep}}
%   % \renewcommand{\thesection}{BAB\ \Roman{section}}
%   % \renewcommand{\thesubsection}{\thesection}
%   % \renewcommand{\thesubsubsection}{section}
% \usepackage{parskip}

% % \newcommand{\cftchapleader}{\cftdotfill{\cftdotsep}}
% % \renewcommand{\cfttoctitlefont}{\hspace*{\fill}\Large\bfseries}
% % \renewcommand{\cftaftertoctitle}{\hspace*{\fill}}
% % \renewcommand{\cftlottitlefont}{\hspace*{\fill}\Large\bfseries}
% % \renewcommand{\cftafterlottitle}{\hspace*{\fill}}
% % \renewcommand{\cftloftitlefont}{\hspace*{\fill}\Large\bfseries}
% % \renewcommand{\cftafterloftitle}{\hspace*{\fill}}
% % \renewcommand{\cftpartleader}{\cftdotfill{\cftdotsep}} % for parts
% % \renewcommand{\cftchapleader}{\cftdotfill{\cftdotsep}} % for chapters

% % \renewcommand{\thechapter}{\Roman{chapter}}


% \newcommand{\listappendixname}{
%   \newpage
%   \LARGE
%   \uppercase{\hfill Daftar Lampiran \hfill}
%   \addcontentsline{toc}{section}{\MakeUppercase{Daftar Lampiran}}
% }
% \newlistof{appendix}{app}{\listappendixname}
% \setcounter{appdepth}{2}    
% \renewcommand{\theappendix}{\Alph{appendix}}
% \renewcommand{\cftappendixpresnum}{Lampiran\space}
% \setlength{\cftbeforeappendixskip}{\baselineskip}
% \setlength{\cftappendixnumwidth}{1.2in}
% \newlistentry[appendix]{subappendix}{app}{1}
% \renewcommand{\thesubappendix}{\theappendix.\arabic{subappendix}}
% \renewcommand{\cftsubappendixpresnum}{Lampiran\space}
% \setlength{\cftsubappendixnumwidth}{1.2in}
% \setlength{\cftsubappendixindent}{0em}

% \newcommand{\myappendix}[1]{%
%   \refstepcounter{appendix}%
%   \section*{\Large Lampiran \theappendix\space\space\space #1}%
%   \addcontentsline{app}{appendix}{\protect\numberline{\theappendix}#1}%
%   \par
% }
% \newcommand{\subappendix}[1]{%
%   \refstepcounter{subappendix}%
%   \subsection*{\Large Lampiran \thesubappendix\space\space\space #1}%
%   \addcontentsline{app}{subappendix}{\protect\numberline{\thesubappendix}#1}%
% }

% % \let\subsubsubsubsection\subsubsubsection
% % \let\subsubsubsection\subsubsection
% % \let\subsubsection\subsection
% \let\chapter\section
% \let\section\subsection
% \let\subsection\subsubsection
% \let\subsubsection\subsubsubsection


% \def\empty{}
% \def\nama#1{\def\@nama{#1}}
% \def\namasingkat#1{\def\@namasingkat{#1}}
% \def\nim#1{\def\@nim{#1}}
% \def\prodi#1{\def\@prodi{#1}}
% \def\departemen#1{\def\@departemen{#1}}
% \def\fakultas#1{\def\@fakultas{#1}}
% \def\universitas#1{\def\@universitas{#1}}
% \def\tahun#1{\def\@tahun{#1}}

% \def\tanggalujian#1{\def\@tanggalujian{#1}}
% \def\tanggalpernyataan#1{\def\@tanggalpernyataan{#1}}
% \def\kotapernyataan#1{\def\@kotapernyataan{#1}}

% \def\pembimbingsatu#1{\def\@pembimbingsatu{#1}}
% \def\pembimbingdua#1{\def\@pembimbingdua{#1}}
% \def\nikpembimbingsatu#1{\def\@nikpembimbingsatu{#1}}
% \def\nikpembimbingdua#1{\def\@nikpembimbingdua{#1}}
% \def\kadep#1{\def\@kadep{#1}}
% \def\nipkadep#1{\def\@nipkadep{#1}}

% \def\titleen#1{\def\@titleen{#1}}
% \def\isproposal#1{\def\@isproposal{#1}}
% \isproposal{}
% \def\istesis{\def\@isproposal{false}}


% \renewcommand\cfttoctitlefont{\hfill\LARGE\bfseries\MakeUppercase}
% \renewcommand\cftaftertoctitle{\hfill\mbox{}}

% \renewcommand{\cftloftitlefont}{\cleardoublepage\hspace*{\fill}\LARGE\bfseries\MakeUppercase}
% \renewcommand{\cftafterloftitle}{
%   \hspace*{\fill}\vspace{5mm}
%   \addcontentsline{toc}{section}{\MakeUppercase{Daftar Gambar}}
% }
% \renewcommand{\cftfignumwidth}{6em}
% \renewcommand{\cftfigpresnum}{Gambar }
% \renewcommand{\thefigure}{\arabic{section}.\arabic{figure}}


% \renewcommand{\cftlottitlefont}{\cleardoublepage\hspace*{\fill}\LARGE\bfseries\MakeUppercase}
% \renewcommand{\cftafterlottitle}{
%   \hspace*{\fill}\vspace{5mm}
%   \addcontentsline{toc}{section}{\MakeUppercase{Daftar Tabel}}
% }

% \renewcommand{\cfttabnumwidth}{5em}
% \renewcommand{\cfttabpresnum}{Tabel }
% \renewcommand{\thetable}{\arabic{section}.\arabic{table}}

% %%Body of the class, most of the declarations appear here.
% \renewcommand{\maketitle}{%
%   \pagenumbering{gobble}
%   \noindent
%   \LARGE
  
%   \centering{
%     \selectfont
%     \bfseries
%     \MakeUppercase{\@title} \\
%     \vspace{10mm}
%     \bfseries{TESIS} \\
%     \vspace{10mm}
%   }
%   \centering{
%     \large
%     Untuk memenuhi sebagian persyaratan \\
%     memperoleh gelar Magister Ilmu Komputer/Informatika \\
%     \vspace{10mm}
%     Disusun oleh: \\
%     \@nama \\
%     NIM: \@nim \\
%     \vfill
%     \includegraphics[width=.3\textwidth]{logo-ub.png}
%     \vfill
%   }
%   \MakeUppercase{
%     \centering{
%       \Large
%       Program Studi \@prodi \\
%       % Departemen \pdepartemen \\
%       \@fakultas \\
%       \@universitas \\
%       Malang \\
%       \@tahun \\
%     }
%   }
%   % ]%
% }

% \newcommand{\isaproposal}[1] {
%   \ifthenelse{\equal{#1}{}}
%   {\MakeUppercase{Proposal Tesis}} 
%   {\MakeUppercase{Tesis}}
% }

% \newcommand{\withkadep}[1]{
%   \ifthenelse{\equal{#1}{}}
%   {} % if kadep is empty
%   {
%     \begin{tabular}{ c } 
%     Mengetahui \\
%     Ketua Departemen \@departemen \\ 
%     \vspace{15mm} \\ 
%     \@kadep \\
%     \hline
%     \@nipkadep \\ 
%     \end{tabular}
%   }
% }

% \newcommand{\pembimbingtunggal}[1] {
%   \ifthenelse{\equal{#1}{}}
%   {
%     \begin{tabular}{ c } 
%       Dosen Pembimbing \\ 
%       \vspace{15mm}  \\ 
%       \@pembimbingsatu \\
%       \cline{1-1}
%       \@nikpembimbingsatu \\ 
%     \end{tabular} 
%   } % if p2 is empty
%   {
%     \phantom{ }\vspace{10mm}
%     \begin{tabular}{ ccc } 
%       Dosen Pembimbing I & & Dosen Pembimbing II \\ 
%       \vspace{15mm} & &  \\ 
%       \@pembimbingsatu & & \@pembimbingdua \\
%       \cline{1-1}
%       \cline{3-3}
%       \@nikpembimbingsatu & &      
%       \@nikpembimbingdua \\ 
%     \end{tabular}
%   }
% }

% \newcommand{\lembarpengesahan}{
%   \newpage
%   \centering{
%     \Large{
%       \bfseries{PENGESAHAN} \\
%     }
%     \addcontentsline{toc}{section}{\MakeUppercase{Pengesahan}}
%     \vspace{10mm}
%     \MakeUppercase{\@title} \\
%     \vspace{10mm}
%     \isaproposal{\@isproposal} \\
%     \vspace{10mm}
%     \large
%     \fontsize{12}{15}\selectfont
%     \ifthenelse{\equal{\@isproposal}{}}
%     {} 
%     {
%       Diajukan untuk memenuhi sebagian persyaratan \\ memperoleh gelar Magister Ilmu Komputer/Teknik Informatika \\ 
%     }
%     \vspace{10mm}
%     Disusun oleh: \\ 
%     \@nama \\
%     NIM: \@nim \\
%     \vspace{10mm}
%     \ifthenelse{\equal{\@isproposal}{}}
%     {
%       Proposal Tesis ini\\ 
%       telah diperiksa dan disetujui oleh:\\
%       \vspace{10mm}
%       } 
%     {
%       Tesis ini telah diuji dan dinyatakan lulus pada \\
%       \@tanggalujian \\
%       Telah diperiksa dan disetujui oleh: \\ 
%       \vspace{10mm}
%     }
%     \begin{center}
%     \pembimbingtunggal{\@pembimbingdua}
%     \vspace{10mm}
%     \withkadep{\@kadep}
%     \end{center}
%   }
% }

% \newcommand{\pernyataanorisinalitas}[2][long]{
%   \newpage
%   \centering{
%     \bfseries\LARGE{
%       PERNYATAAN ORISINALITAS \\
%     }
%   }
%   \addcontentsline{toc}{section}{\MakeUppercase{Pernyataan}}
%   \vspace{10mm}
%   \renewcommand{\baselinestretch}{1.0}
%   \normalsize
%   \justifying

%   Saya menyatakan dengan sebenar-benarnya bahwa sepanjang pengetahuan saya, di dalam naskah tesis ini tidak terdapat karya ilmiah yang pernah diajukan oleh orang lain untuk memperoleh gelar akademik di suatu perguruan  tinggi, dan tidak terdapat karya atau pendapat yang pernah ditulis atau diterbitkan oleh orang lain, kecuali yang secara tertulis disitasi dalam naskah ini dan disebutkan dalam daftar referensi. 

%   Apabila ternyata didalam naskah tesis ini dapat dibuktikan terdapat unsur-unsur plagiasi, saya bersedia tesis ini digugurkan dan gelar akademik yang telah saya peroleh (sarjana) dibatalkan, serta diproses sesuai dengan peraturan perundang-undangan yang berlaku (UU No. 20 Tahun 2003, Pasal 25 ayat 2 dan Pasal 70).

%   \vspace{10mm}
%   \hfill\begin{minipage}{\dimexpr\textwidth-9cm}
%     \@kotapernyataan, \@tanggalpernyataan
    
%     \vspace{10mm}
%     \ifthenelse{\equal{#2}{meterai}}
%     {[Meterai]} % if is empty
%     {\phantom{ }}
%     \vspace{10mm}\\
%     \ifthenelse{\equal{#1}{long}}
%     {\uline{\@nama} \\}%
%     {\uline{\@namasingkat} \\}%
%     NIM: \@nim
%   \end{minipage}

% }



% \renewcommand{\section}{%
%     \@startsection
%     {section}{1}{0pt}{-1.5ex plus -1ex minus -.2ex}%
%     {1ex plus .2ex}{\large\sffamily\slshape\headlinecolor}%
% }

% \renewcommand{\normalsize}{\fontsize{9}{10}\selectfont}
% \setlength{\textwidth}{17.5cm}
% \setlength{\textheight}{22cm}
% \setcounter{secnumdepth}{0}
