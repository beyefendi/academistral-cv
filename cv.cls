\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cv}[2023-08-10 v0.1 Resume class]
\LoadClass[11pt,letterpaper]{article} % Font size and paper type

%---------- PACKAGES ----------
\usepackage{latexsym}
\usepackage[empty]{fullpage}
\usepackage{titlesec}
\usepackage{marvosym}
\usepackage[usenames,dvipsnames]{color}
\usepackage{verbatim}
\usepackage{enumitem}
\usepackage[hidelinks]{hyperref}
\usepackage{fancyhdr}
\usepackage[english]{babel}
\usepackage{tabularx}
\usepackage{hyphenat}
\usepackage{fontawesome}
\input{glyphtounicode}

\usepackage{soul} % Text underline while wrapping text
\usepackage{ifthen}

%---------- FONT OPTIONS ----------
% sans-serif
% \usepackage[sfdefault]{FiraSans}
% \usepackage[sfdefault]{roboto}
% \usepackage[sfdefault]{noto-sans}
% \usepackage[default]{sourcesanspro}

% serif
% \usepackage{CormorantGaramond}
% \usepackage{charter}

% Georgia
% \usepackage[T1]{fontenc}
% \fontfamily{georgia}\selectfont

% \pdfmapfile{+winfonts.map}
% \renewcommand\rmdefault{trebuchet}

%---------- PAGE LAYOUT ----------
\pagestyle{fancy} % fancy | emptys
\fancyhf{} % clear all header and footer fields
\fancyfoot{}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}

% Adjust margins
\addtolength{\oddsidemargin}{-0.5in}
\addtolength{\evensidemargin}{-0.5in}
\addtolength{\textwidth}{1in}
\addtolength{\topmargin}{-.5in}
\addtolength{\textheight}{1.0in}

\urlstyle{same}

\raggedbottom
\raggedright
\setlength{\tabcolsep}{0in}

% Sections formatting
\titleformat{\section}{
    \vspace{-4pt}\scshape\raggedright\large}
    {}{0em}{}[\color{black}\titlerule \vspace{-2pt}]

% Ensure that generated pdf is machine readable/ATS parsable
\pdfgentounicode=1

%---------- CUSTOM COMMANDS FOR SECTIONS ----------

\newcommand{\isEmptyLink}[1]{%
    \ifthenelse{ \equal{#1}{} }
    {%
    
    }%
    {%
    \small{\href{#1}{\faLink}}
    }%
}

\newcommand{\isEmptyRole}[1]{%
    \ifthenelse{ \equal{#1}{} }
    {%
    \vspace{-13pt}
    }%
    {%
    \textit{\small#1}
    }%
}

\newcommand{\isEmptyPlace}[1]{%
    \ifthenelse{ \equal{#1}{} }
    {%
    
    }%
    {%
    \small \faMapMarker \hspace{.5pt} #1
    }%
}

% #1: Title #2: Link #3: Year #4: Role # Place
\newcommand{\titleLinkYearRolePlace}[5]{%
    %\vspace{-2pt}
    \item
    \begin{tabular*}{0.97\linewidth}[t]{l@{\extracolsep{\fill}}r}
        #1 \isEmptyLink{#2} & \textit{\small #3} \\%
        \isEmptyRole{#4} & \isEmptyPlace{#5}%
    \end{tabular*}%\vspace{-7pt}
}


% #1: (Bold) Title #2: Year #3: Organization #4: Link #5: Place
\newcommand{\bTitleYearOrgLinkPlace}[5]{%
    %\vspace{-2pt}
    \item
    \begin{tabular*}{0.97\linewidth}[t]{l@{\extracolsep{\fill}}r}
        \textbf{#1} & \textit{\small #3}\\%
        \isEmptyRole{#4}\isEmptyLink{#2} & \isEmptyPlace{#5}%
    \end{tabular*}%\vspace{-7pt}
}

% #1: Authors #2: Paper #3: Journal #4: Pages #5: Year
\newcommand{\publicationsItem}[5]{%
    % \vspace{-2pt}
    \item
    {#1 \textit{#2} \ul{#3}#4\textit{#5}}
    % \vspace{7pt}
}

% #1: Title #2: Year #3: Agency #4: Amount  # 7:Role #8: Objective @TODO
\newcommand{\fundingItem}[9]{%
    %\vspace{-2pt}
    \item
    \begin{tabular*}{0.97\textwidth}[t]{p{0.85\linewidth}@{\extracolsep{\fill}}r}
        \textbf{#1} & \textit{\small #2}  \\
    \end{tabular*}
    {\setlength{\tabcolsep}{1em}
    \begin{tabular*}{0.97\textwidth}[t]{ll}
        Agency & #3 \small{\href{#4}{\faLink}} \\
        Fund & #6 $|$ #7\\
        PIs & #5 \\
        Role & #8 \\
        Objective & #9 \\
    \end{tabular*}}%\vspace{0pt}
}

% #1: Title #2: Year
\newcommand{\teachingItem}[2]{%
    %\vspace{-2pt}
    \item
    \begin{tabular*}{0.97\linewidth}[t]{l@{\extracolsep{\fill}}r}
        #1 & \textit{\small #2}%
    \end{tabular*}%\vspace{-7pt}
}

% #1: Name #2: Title #3: E-mail #4: Organization 
\newcommand{\referenceItem}[4]{%
    \vspace{-2pt}
    \begin{tabular}{0.97\textwidth}
        #1, \emph{#2} \small{\href{mailto:#3}{\faEnvelope}} \\%
        \small #4%
    \end{tabular}\vspace{0pt}%
    \quad%
}

% Takes two parameters. One is mandatory and one is optional
% Optional is the first one and its value is <empty>
% #1 is Label type and #2 is Sub Title
% Optional parameter is passed by using []
% So the final paramaters will be like that []{}
% Actually both parameters are optional but newcommand can have onle one optional parameter
\newcommand{\itemizeCVBegin}[2][]{%
    % Sub Title is empty
    \ifthenelse{\equal{#2}{}}
    {%
    % Sub Title is set
    }{%
        \textbf{#2}%
    }%

    % Itemize without label
    \ifthenelse{\equal{#1}{nolabel}}
    {%
        \begin{itemize}[leftmargin=0.15in, label={}]
    % Itemizes with default label 
    }{%
        \begin{itemize}
    }%
}
\newcommand{\itemizeCVEnd}{\end{itemize}}


% \usepackage{xparse}
% \NewDocumentCommand{\itemizeCVBegin}{
%   O{} % Title argument is Optional, delimited by [], if not given use NULL
%   D(){} % Label argument is Optional, delimited by (), if not given use NULL
%   }{%    
    % \ifthenelse{\equal{#1}{}}
    % {
    % }{
    %     \textbf{#1}
    % }

    % \ifthenelse{\equal{#2}{nolabel}}
    % {
        % \begin{itemize}[leftmargin=0.15in, label={}]
    % }{
    %     \begin{itemize}
    % }
    % }



% Default item
\newcommand{\resumeItem}[1]{
  \item\small{{#1 \vspace{-2pt}}}
}
% Default item [No use delete]
\newcommand{\resumeSubItem}[1]{\resumeItem{#1}\vspace{-4pt}}
\renewcommand\labelitemii{$\vcenter{\hbox{\tiny$\bullet$}}$}

% Latex bullet symbol: \item[\ding{94}]

% Select Mode
\newcommand{\mymode}{academic}
% \newcommand{\mymode}{industry}
