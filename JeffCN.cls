%%%%%%%%%%%%%%%%%%%%
%%%%这是我用来写中文用的模板
%%%%For personal use only
%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{JeffCN}[2019/03/18]

\LoadClass[a4paper,indent,fancyhdr,AutoFakeSlant]{ctexart} %文档基于ctexart编写
\RequirePackage{titlesec}
\RequirePackage{titling}
\RequirePackage{xpatch}

\titleformat{\section}[hang]
{ \raggedright \zihao{3} \songti}
{\itshape \thesection\quad}
{0em}{}[\titlerule]
\titleformat{\subsection}{\large \raggedright}{$\bullet$ {\heiti \large \thesubsection \ } }{0em}{}

%\makeatletter
%%控制页面格式
\RequirePackage{fancyhdr}
\pagestyle{fancy}
\lhead{\@title}
\chead{}
\rhead{\thepage}
\lfoot{jeffreyyao@pku.edu.cn}
\cfoot{}
\rfoot{\thepage}
\renewcommand{\headrulewidth}{0.4pt}
\renewcommand{\footrulewidth}{0.4pt}

\renewcommand\maketitle{%
	%\hfill
	
	\begin{minipage}{0.95\textwidth}
		\vskip 2em
		%\rule{\linewidth}{0.4pt}
		{\LARGE \centering\kaishu \textbf \@title \par }
		%\rule{\linewidth}{0.4pt}
		\vskip 1 em 
		{\large \centering\songti \@author \par}
		{\large \centering\songti \@date \par}
	\end{minipage}
	\vskip 1em \par
}
\newcommand{\titlepagestyle}{fancy}
\xpatchcmd{\maketitle}{\thispagestyle{plain}}{\thispagestyle{\titlepagestyle}}{}{}  %让首页加上fancy效果  默认为plain