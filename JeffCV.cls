%%%%%%%%%%%%%%%
%%This is Jeffrey's personal CV class
%%For personal use only
%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{JeffArticle}[2019/02/04]
%This is optional. It's only used to check the version of class

\LoadClass{article}

\RequirePackage{titlesec}%To change section title style
\titleformat{\section}[hang]{\Large\scshape\raggedright}{\fbox{\itshape \thesection\quad}}{}{}[\titlerule[0.8pt]]
\titleformat{\subsection}{\large\scshape\raggedright}{}{0em}{}

%% define datesection
\newcommand{\datesection}[2]{\section[#1]{#1 \hfill #2}}
\newcommand{\datesubsection}[2]{\subsection[#1]{#1 \hfill #2}}

\newcommand{\name}[1]{%
\centerline{\Huge{#1}}
}

