\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2015/05/25 An elegant Résumé class]
\LoadClass[11pt]{article}
\RequirePackage[
	a4paper,
	left=0.75in,
	right=0.75in,
	top=0.70in,
	bottom=0.55in,
	nohead
]{geometry}
\RequirePackage{titlesec}
\RequirePackage{enumitem}
\setlist{noitemsep} % removes spacing from items but leaves space around the whole list
%\setlist{nosep} % removes all vertical spacing within and around the list
\setlist[itemize]{topsep=0.25em, leftmargin=1.5pc}
\setlist[enumerate]{topsep=0.25em, leftmargin=1.5pc}
\RequirePackage{fontawesome}

\titleformat{\section}         % Customise the \section command 
  {\Large\scshape\raggedright} % Make the \section headers large (\Large),
                               % small capitals (\scshape) and left aligned (\raggedright)
  {}{0em}                      % Can be used to give a prefix to all sections, like 'Section ...'
  {}                           % Can be used to insert code before the heading
  [\titlerule]                 % Inserts a horizontal line after the heading
\titlespacing*{\section}{0cm}{*1.8}{*1.25}

\titleformat{\subsection}
  {\large\raggedright}
  {}{0em}
  {}
\titlespacing*{\subsection}{0cm}{*1.25}{*0.25}

\newcommand{\datedsection}[2]{%
  \section[#1]{#1 \hfill #2}%
}
\newcommand{\datedsubsection}[2]{%
  \subsection[#1]{#1 \hfill #2}%
}
\newcommand{\datedline}[2]{%
  {#1 \hfill #2 \\}%
}

\newcommand{\name}[1]{
  \centerline{\Huge{#1}}
  \vspace{0.25em}
}
\newcommand{\contact}[3]{
  \centerline{{\faEnvelope\ \large{#1}} {\large\textperiodcentered} {\faMobilePhone\ \large{#2}} {\large\textperiodcentered} {\faLink\ \large{#3}}}
}
\newcommand{\role}[2]{
  {\textit{#1} ~ #2 \\}
}