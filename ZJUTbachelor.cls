\NeedsTeXFormat{LaTeX2e}
%此文档类基于CTeX文档类，作为preamble部分，有以下功能性
%0.香香的A.T力场，对BUG的最强拒绝
%1.导入必要宏包
%2.设置页边距、行距、默认字号、字体
%3.设置页眉页脚
%4.设置目录样式
%5.声明思源黑体字体族（此字体需要安装，免费商用），这是由于\heiti只有一种字重且不想使用伪加粗
%6.设置一级、二级、三级、四级标题的格式、图表标题样式、脚注样式
%7.设置中英文摘要的样式
%8.设置封面样式
%9.设置参考文献格式，采用GBT7714 2005版
\ProvidesClass{ZJUTbachelor}[2022/03/15 2021理学院本科毕业论文，Edited by方昊宇]
%默认5号字体，a4纸张，1.25倍行距（LaTeX中单倍行距为字体的1.2倍，word中单倍行距是字体的1.3倍）因此1.25*1.3/1.2=1.3541667
\LoadClass[zihao=5,a4paer,linespread=1.3541667,UTF8]{ctexart} 

%%-----------------------------------------BUG——————>↕A.T.FIELD全開-------------------------------------------%%
%. M M . . . . . . . . . . . . . . . . . . . M . . . . . . M . . . . . . . . M . M . . . . . . . . . . . M . . .
%M M . . . . . . . . . . . . . . . . . . . . M . . . . . . . M . . . . . . . M . M . . . . . . . . . . . . M . .
%M M . . . . . . . . . . . . . . . . . . . . M . . . . . . . M . . . . . . . M M M . . . . . . . . . . . . M . .
%M . . . . . . . . . . . . . . . . . . M . . M . . . . . . . M . . . . . . . . M M . . . . . . . . . . . . . M .
%. . . . . M . . . . M . . . . . . . . M . . M . . . . . . . . . . . . . . . . M M . . . . . . . . M . . . . M .
%. . . . . . . . . . M . . . . . . . . R . . M . . . . . . . . . . . . . . . . M M . . . . . . . . M . . . . M .
%. . . . M . . . . M . . . . M M . . M R . M . M . . . . . . . M . . . . . . . M M . . . . . . . . M . . . . M .
%. . . . . . . . . M . . . . M . . . M R . M . M . . . . . M . M . . M . . . . M M . . . . . . . . . M . . . . M
%. . . . . . . . M . . . . M M . . M M X M M . M . . . . . M . M . . M . . . . . R . . . . . . . . . M . . . . M
%. . . . . . . . M . . . . M M . . M M X M M . M . . . . . M . . M . X M . . . . R . . . . . . . . . M . . . . M
%. . . . . . . M . . . . . M R M . . M X M M . M . . . . . M . . R . R R . . . . R M . . . . . . . . M . . . . .
%. . . . . . . M . M . . . R R M M M M X M M M . . . . . . M . . X M M R . . . . M M . . . M . . . . M . . . . .
%. . . . . . . M . M . . M R R M M M M X M M M M . . . . . M M . R M M M M . . . M M M . . M . . . . . M . . . .
%. . . . . . . . . M . . M R M M R . M R M M . M . . . . . . M . R R M R R . . . M M M . . M . . . . M M . . . .
%. . . M . . M . M M . . R R . R R . M R R M . R . . . . . . M . R R M R M M . . M . M M . M . . . . M M . . . .
%M . . M . . M M M M . . R M . R M M M R M M M R M . . . . . M . M R M M R R M M R M R M . M . . . . M M . . . .
%M . . M . . M M M R M R X R R R R R R X R R M R M . . . . . M . M M R R X X R M R M R M M R M . . . M . . . . .
%M . . M . . M M M R . M R M M R X R M X X R R X R . . . . . M R X R R R M R X M M M M M . M M . . . M . . . . .
%M . M M . . M M M R . M R M M R X X R X R X M R M M . . . . M . R R R R R M M M M M R M . M M . . . M . . . . .
%M . M M . . M R . R . R R X M M R M R a R R R R M M . . . . M . R R M R M M M R M M R R . M R . . . M . . . M .
%M . M R . . M M . X M X X R M R M R R R R M M R M . R . . . M M M R M R M M M M M M M R M M R . . M M . . . R .
%M . M M M . M M . R R X R R R R R R R R R M M X M . M M . . . M M M M R M M M M R M M R M R R M . M M . . M R .
%M M M M M . M R . R R X M M R X R R R M M . M R M . M R M . . M R M M M M M M M M M M M M R M M . M R . . M M M
%. M R M M . M M M R M X M . R R R X M . . . M R R . . M R M . M R M M . M M M M M M M M M R M M . R R M M M . M
%. M R M M . M M M R R M M . M X R R . . . . . R R . . M M R . . R M M . M M M M M M M M M R R R M M R M . M . M
%. M R M M M M M M R M M . . M M M M . . . . . M M . . . M M R M R M M . M M M M M M M M M M R M R M R R M M . M
%. M M R . R M R . R M M . . . . . . . . . . . . M . . . M M M M M M M M M M M M M M M M M R M M R M M R R . . .
%. M M R . R M R M M . . . . . . . . . . . . . . . . . . . M R . M M . M M M M M M M M M R M M R R R M R R . . .
%. M M M M R M R X M . . . . . . . . . . . . . . . . . . . . M M . M M M M M M M M M M M M . M R M R R R R . . .
%. . M M . R R R R M . . . . . . . . . . . . . . . . . . . . . . . . . . M R . M R M M M . M M R M M M R M . . .
%. . M M . . M M M R . . . . . . . . . . . . . . . . . . . . . . . . . . . . M M M M M . . M M M M R . M M . . .
%. . M M . . . M M R M . . . . . . . . . . . . . . . M M . . . . . . . . . . . M M R M . . . M M R . M M R . . .
%. . R M . . . M M . R . . . . . . . . . . . . . . . M M . . . . . . . . . . . . . M M . . M . R M . . . R . . .
%. . R M M . . . M M R . . . . . . . . . . . . . . . M . . . . . . . . . . . . . . M R . . M M M M . . . R M . .
%. M M M M . . . . M M R . . . . . . . . . . . . . . R . . . . . . . . . . . . . . . R M M R R M M . . . M M . .
%. M M . M . . . . M M R . . . . . . . . . . . . . . M . M M . . . . . . . . . . . . M R M M M M . . . . M M . .
%. M M M M . . . . . M R M . . . . . . . . . . . . . . . . . . . . . . . . . . . . . M R R M M . . . . . M M . .
%. M M M M . . . . . . M M . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . R M M . . . . . M M M . .
%. M M M M . . . . . . M M M . . . . . . . . . . . . . . . . . . . . . . . . . . . . M M R . . M . . . M . M . .
%M M . M M . . . . . . M M X M . . . . . . . . . . . . . . . . . . . . . . . . . . . R M R M M . . . . M . M . .
%M . . M M . . . . . . M M . X M . . . . . . . M R M M M M M M M M . . . . . . . . R M M R M . . . . . M . M . .
%R . . M M . . . . . . M M M M X M . . . . . . . . . . . . . . . . . . . . . . . R M M M R M . . . . . M . M M .
%R . . M M . . . . . . M M M M M X R . . . . . . . . M R M M . . . . . . . . M X M M M M R . . . . . . M . . M .
%R . . M M . . . . . . M M M . M M X R . . . . . . . . M M . . . . . . . . M * R M M M M M M M . . . . M . . M .
%R . . M . . . . . . . M M M . M M M M R . . . . . . . . . . . . . . . . M a R M M M M M M M . . . . M M . . M .
%R M . M . . . . . . . R M M M . M M M M R . . . . . . . . . . . . . . M X M M M M M M M M M . . . . M . . . M .
%R M . M . . . . . . . M M M M M M M M M . R M . . . . . . . . . . . M R M . R M M M M M M R . . . . M . . . . M
%M M . M . . . . . . . M . M . M M R M . . . M M . . . . . . . . . M M M . . R R M M M M M M . . . . M . . . . M
%. M . M . . . . . . M M M . M M R M M . . . . M M . . . . . . . M M M . M M M M R M . M . M . . . . M . . . . M
%. M . M . . . . . . M R M M M R R M M M M . . . M M . . . . M R M M M R R M M M R M M M . R . . . . M . . . . M
%. M . M . . . . . . M M M M M M R M M M M R M M M M M . . M R M M M M M M M M R M M M M M R . . . . M . . . . .
%. M . M . . . . . . M M M M M . M R M M M M M M M M M M . M M M M M M M M R R M M M M M M M M . . . M . . . . .
%. M . M . . . . . . M M M M . M M M M R M M M M M M M M M R R M M M M R R M R R M M M M . M M . . . M . . . . .
%. M M M . . . . . . M M M . M M M M M M M R R M M M M M M M M M M R R M M R R R M M M M M . R . . . M . . . . .
%. . R . . . . . . . M M M M M M M R M M M M M M R R M M R M M M M M M M M X M R M M M M . M M . . . M M . . . .
%. . R . . . . . . . M M M M M . M M M M M M M M M R M M M M M R M M M M M R M M . M . M M . M . . . . M . . . .

\RequirePackage{pdfpages} %用于嵌入pdf
\RequirePackage{cite} %破折号连接连续引用
\RequirePackage{mathrsfs,amsfonts,amssymb,amsmath,amscd,bm} %数学包
\RequirePackage{array} %增强了tabular环境的功能，可以更好的排版表格。
\RequirePackage{enumitem} %增强列表功能
\RequirePackage{zhnumber} %中文数字，其实可以不导入，CTeX已集成可以用\chinese{计数器}实现。
\RequirePackage{datetime}
\RequirePackage{booktabs} %三线表
\RequirePackage{graphicx} %导入图片
\RequirePackage{float} %浮动体位置
\RequirePackage{multirow} %纵向合并表格单元格，不支持换行
\RequirePackage{makecell} %也能纵向合并表单单元格，支持换行
\RequirePackage{listings} %插入代码块
\RequirePackage{extarrows} %为了用长等号

\RequirePackage{mhchem} %无机化学公式
\RequirePackage{chemfig}
\newcommand*{\newchemfig}[1]{~\chemfig{#1}~}

\RequirePackage{caption} %标题
\DeclareCaptionFont{songxiaosi}{\songti\zihao{-4}} %表、图的标题用宋体小四，需要声明
\captionsetup{
	font=songxiaosi, 
	justification=centering %多行标题居中
}

%ref,eqref命令没有间距太丑了
\newcommand*{\tabref}[1]{\tablename~\ref{#1}~}
\newcommand*{\figref}[1]{\figurename~\ref{#1}~}
\newcommand*{\neweqref}[1]{公式~\eqref{#1}~}

\RequirePackage{hyperref} %超链接
\hypersetup{hidelinks} %不显示颜色框

\RequirePackage{fontspec} %字体设置
\setmainfont{Times New Roman} %西文字体Times New Roman
\setCJKmainfont{宋体} %正文（衬线）字体默认宋体

\RequirePackage{geometry}  % 页面设置
\geometry{a4paper,left=2.5cm,right=2cm,bottom=2.5cm,,top=3cm} %版面页边距上3cm，下2.5cm，左2.5cm，右2cm

\RequirePackage{fancyhdr} %页眉页脚
\pagestyle{fancy} %empty不显示页眉页脚
\fancyhf{}
\fancyhead[C]{\centering\songti\zihao{-5}浙江工业大学毕业设计（论文）} %页眉加“浙江工业大学毕业设计（论文）”，字体为宋体小五号，居中
\fancyfoot[C]{\centering\songti\zihao{-5}\thepage} %页码用宋体小五号字页面底端居中。

\RequirePackage[bottom]{footmisc} %脚注紧贴页脚
\RequirePackage{pifont} %脚注圆圈内数字
\renewcommand\thefootnote{\ding{\numexpr171+\value{footnote}}}

\captionsetup{labelsep=quad} %取消图表冒号


\RequirePackage{tocloft} %目录设置
\setlength{\cftbeforetoctitleskip}{0ex}\setlength{\cftaftertoctitleskip}{0ex} %“目录”这个标题的前后垂直距离
\setlength{\cftbeforesecskip}{0ex}\setlength{\cftbeforesubsecskip}{0ex}\setlength{\cftbeforesubsubsecskip}{0ex} %section,subsection,subsubsection垂直距离
\cftsetpnumwidth{1em}  %\@pnumwidth，页码离最后一个点的距离
\cftsetindents{section}{0em}{5em} %section的indent和numwidth
\cftsetindents{subsection}{2.5em}{3em} %subsection的的indent和numwidth
\cftsetindents{subsubsection}{5em}{4em} %subsubsection的indent和numwidth
\cftsetindents{figure}{0em}{5em} %figure的indent和numwidth
\cftsetindents{table}{0em}{5em} %table的indent和numwidth
\renewcommand{\cftdotsep}{2} %标题和页码中间的点的间距
\renewcommand{\cftsecdotsep}{\cftdotsep} %section标题和页码中间画点，点间距为\cftdotsep
\renewcommand{\cfttabpresnum}{表} %图列前面加上“表”字
\renewcommand{\cftfigpresnum}{图} %图列前面加上“图”字
\counterwithin{table}{section} %table计数器以section计数器为上级计数器
\counterwithin{figure}{section} %%figure计数器以section计数器为上级计数器
\counterwithin{equation}{section} %%equation计数器以section计数器为上级计数器
\renewcommand{\cftsecpagefont}{\songti\zihao{5}} %以下，定义页码字体宋体小四
\renewcommand{\cftsubsecpagefont}{\songti\zihao{-4}}
\renewcommand{\cftsubsubsecpagefont}{\songti\zihao{-4}}
\renewcommand{\cftfigpagefont}{\songti\zihao{-4}}
\renewcommand{\cfttabpagefont}{\songti\zihao{-4}}
\renewcommand{\cftsecfont}{\songti\zihao{-4}} %以下，定义标题字体宋体小四
\renewcommand{\cftsubsecfont}{\songti\zihao{-4}}
\renewcommand{\cftsubsubsecfont}{\songti\zihao{-4}}
\renewcommand{\cftfigfont}{\songti\zihao{-4}}
\renewcommand{\cfttabfont}{\songti\zihao{-4}}
\renewcommand{\cftsubsecleader}{\cftsecleader} %以下，定义所有leader都和section一样
\renewcommand{\cftsubsubsecleader}{\cftsecleader}
\renewcommand{\cftsubsubsecleader}{\cftsecleader}
\renewcommand{\cfttableader}{\cftsecleader}
\renewcommand{\cftfigleader}{\cftsecleader}


%因为\heiti只有一种字重（粗细），不选择使用伪粗体。这里安装了思源黑体（7种字重），声明一个字体族，用\CJKfamily调用更改
\setCJKfamilyfont{siyuanheiti}{Source Han Sans SC}[BoldFont=*-Medium]
\newcommand*{\siyuanheiti}{\CJKfamily{siyuanheiti}}
\newcommand*{\siyuanheitiBold}{\CJKfamily{siyuanheiti}\bfseries}

%章节标题设置
\ctexset{
	bibname = {\siyuanheitiBold\zihao{2}参考文献},
	contentsname = {\siyuanheitiBold\zihao{2}目\hspace{1em}录},
	listfigurename = {\siyuanheitiBold\zihao{2}图\hspace{1em}列},
	listtablename = {\siyuanheitiBold\zihao{2}表\hspace{1em}列},
	figurename = {图},
	tablename = {表},
	section/name = {第,章},
	section/number = \Chinese{section},
	subsection/number = \arabic{section}. \arabic{subsection},
	subsubsection/number = \arabic{section}. \arabic{subsection}. \arabic{subsubsection},
	section/format =  \centering\siyuanheitiBold\zihao{2},
	subsection/format = \heiti\zihao{-3},
	subsubsection/format = \heiti\zihao{4},
	paragraph/format = \heiti\zihao{-4},
	appendix/name={附录}
}

%摘要的中英文标题切换
\newif\ifAbstractEN
\providecommand\AbstractEN{
	\ifAbstractEN
		\ctexset{abstractname={\mdseries\zihao{-3}\fontfamily{Times New Roman}Abstract}}
	\else
		\ctexset{abstractname={\siyuanheitiBold\zihao{-3}摘\hspace{2.5em}要}}
	\fi
} 



%自定义宏包，项目地址https://gitee.com/walkeraguo/gbt7714-bibtex-style
%参照《文后参考文献著录规则》（GBT 7714-2005）执行。
\RequirePackage[numbers,2005]{gbt7714} 
%\bibliographystyle{unsrt}

%字号
%初号 \zihao{0}
%小初号 \zihao{-0}
%一号 \zihao{1}
%小一号 \zihao{-1}
%二号 \zihao{2}
%小二号 \zihao{-2}
%三号 \zihao{3}
%小三号 \zihao{-3}
%四号 \zihao{4}
%小四号 \zihao{-4}
%五号 \zihao{5}
%小五号 \zihao{-5}
%六号 \zihao{6}
%小六号 \zihao{-6}
%七号 \zihao{7}
%八号 \zihao{8}

%字体
%宋体 \songti
%黑体 \heiti
%楷体 \kaishu
%微软雅黑 \yahei
%思源黑体 \siyuanheiti
%思源黑体加粗 \siyuanheitiBold

%定义传递参数：论文题目
\providecommand\thesis[1]{\providecommand\@thesis{#1}}
\providecommand\mysupervisor[1]{\providecommand\@mysupervisor{#1}}
\providecommand\myname[1]{\providecommand\@myname{#1}}
\providecommand\studentid[1]{\providecommand\@studentid{#1}}
\providecommand\department[1]{\providecommand\@department{#1}}
\providecommand\major[1]{\providecommand\@major{#1}}
\providecommand\class[1]{\providecommand\@class{#1}}



%封面：不改变字体大小，若论文标题过长，则换行处理
\providecommand{\Cover}{
	\thispagestyle{empty}
	{\centering
		%适用思源黑体，要自行安装。因为CTeX的\heiti只有一种字重（粗细），思源黑体有7种
		\begin{figure}[H]
			\centering
			\includegraphics*[width=0.8\linewidth]{pics/logo}
		\end{figure}
		\vspace{3ex}				
		\siyuanheitiBold\zihao{-0}本科毕业设计（论文）
		\vspace{1ex}
		\begin{table}[H]
			\centering
			\zihao{3}\heiti
%			\resizebox{\linewidth}{!}{
			\begin{tabular}[b]{p{4em}p{4em}p{10em}<{\centering}c}				
			\parbox[b]{5em}{设计(论文)题\hspace{2em}目}& \multicolumn{3}{c}{\makebox[17em][c]{\centering\enspace\enspace\parbox[b]{15em}{\centering\@thesis}\enspace\enspace}} \\ \cline{2-4} \\[2ex]
			指导教师&\multicolumn{3}{c}{\@mysupervisor}  \\ \cline{2-4} \\[2ex]
			学\hspace{2em}生&\multicolumn{3}{c}{\centering\@myname} \\ \cline{2-4} \\[2ex]
			学\hspace{2em}号&\multicolumn{3}{c}{\centering\@studentid} \\ \cline{2-4} \\[2ex]
			& 院\hspace{2em}系 & \@department & \\ \cline{3-3} \\[2ex]
			& 专\hspace{2em}业 & \@major & \\ \cline{3-3} \\[2ex]
			& 班\hspace{2em}级 & \@class & \\ \cline{3-3} 
			\end{tabular}
%		}
		\end{table}
%		\vfill
		\newpage
	}
}


%中文摘要
\providecommand{\ZhAbstract}[2]{	
	\begin{table}[H]
		\centering
		%黑体，二号，居中
		\heiti\zihao{2}\parbox{0.85\linewidth}{\centering \@thesis} \\[4ex]
		%宋体，小四
		\songti\zihao{-4}\makebox[\linewidth][c]{学生姓名：\@myname\hspace{5em}指导教师：\@mysupervisor~教授} \\[3ex]
		\songti\zihao{-4}\makebox[\linewidth][c]{浙江工业大学\@department} \\[4ex]
	\end{table}
	\AbstractENfalse\AbstractEN
	\begin{abstract}
		%楷体，小四，行距1.25倍
		\zihao{-4}\kaishu					
		\noindent\hspace{2em}#1 \\[2ex]
		\siyuanheitiBold\bfseries 关键词：\songti\mdseries #2				
	\end{abstract}
	\addcontentsline{toc}{section}{中文摘要}	
	\pagebreak
}


\providecommand\Enthesis[1]{\providecommand\@Enthesis{#1}}
\providecommand\Enmyname[1]{\providecommand\@Enmyname{#1}}
\providecommand\Enmysupervisor[1]{\providecommand\@Enmysupervisor{#1}}
\providecommand\Endepartment[1]{\providecommand\@Endepartment{#1}}

%英文摘要
\providecommand{\EnAbstract}[2]{
	\begin{table}[H]
		\centering
		%Times New Roman ，三号，居中
		\zihao{3}\parbox{\linewidth}{\centering \@Enthesis} \\[4ex]
		%Times New Roman ，小四
		\zihao{-4}\makebox[\linewidth][c]{Student：\@Enmyname\hspace{5em}Advisor：Dr. \@Enmysupervisor} \\[4ex]
		\zihao{-4}\parbox{\linewidth}{\centering \@Endepartment\\Zhejiang University of Technology} \\[4ex]
	\end{table}
	\AbstractENtrue\AbstractEN
	\begin{abstract}
		\zihao{-4}				
		\noindent #1\\[2ex]		
		Keywords：#2			
	\end{abstract}
	\addcontentsline{toc}{section}{英文摘要}	
	\pagebreak
}

%目录、表列、图列
\providecommand{\makeTOCandLOTandLOF}{	
	%1.5倍行距
	{ 
		\linespread{1.625}\selectfont	%行间距1.5*1.3/1.2，\selectfont选中字体
		%需要选定字体字号，行间距才能生效，否则默认5号宋体的1.5倍(word版)行间距
		%而真正显示的字体在tocloft中定义
		\centering\songti\zihao{-4} 
		\tableofcontents
		\thispagestyle{fancy}	
		\addcontentsline{toc}{section}{目录}
		\pagebreak	
		\centering\listoftables
		\thispagestyle{fancy}
		\addcontentsline{toc}{section}{表列}	
		\pagebreak	
		\centering\listoffigures
		\thispagestyle{fancy}	
		\addcontentsline{toc}{section}{图列}
		\pagebreak	
	}
	
}


%致谢
\providecommand{\makeAcknowledge}[1]{	
	\newpage
	\addcontentsline{toc}{section}{致谢}
	\section*{致\hspace{1em}谢}
	\songti\zihao{5} #1
}

%附录
\providecommand{\makeAppendix}[1]{	
	\newpage
	\appendix		
	\songti\zihao{5} #1
}





