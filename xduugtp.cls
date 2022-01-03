\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{xduugtp}[2022/01/03 Xidian University Undergraduate Thesis Proposal class, v0.1.5, created by @note286, published in https://note286.github.io/xduugtp/]

% overleaf
\newif\ifoverleaf\overleaffalse
\DeclareOption{overleaf}{\overleaftrue}

% texpage
\DeclareOption{texpage}{\overleaftrue}

\ProcessOptions\relax

% 加载ctexart文档类
\LoadClass[a4paper,zihao=-4,fontset=none]{ctexart}
% 书签
\RequirePackage[bookmarksnumbered,hidelinks]{hyperref}
% URL自动断行
\RequirePackage{xurl}
% 绘制边框
\RequirePackage[most]{tcolorbox}
% 条件判断
\RequirePackage{xifthen}
% 下划线
\RequirePackage{xeCJKfntef}
% 页面大小
\RequirePackage[left=3.17cm,right=3.17cm,top=2.54cm,bottom=2.54cm,footskip=0cm,headsep=0cm,headheight=0cm]{geometry}
% 参考文献引用
\RequirePackage[sort&compress,square,super,comma]{natbib}
\RequirePackage{gbt7714}
\@ifpackagelater{gbt7714}{2020/03/04}
  {\PassOptionsToPackage{numbers}{natbib}}
  {\PassOptionsToPackage{numbers}{gbt7714}}
\newcommand\ckwx{}
\@ifpackagelater{gbt7714}{2020/03/04}
  {\renewcommand\ckwx{\bibliographystyle{gbt7714-numerical}}}
  {}
\setlength{\bibsep}{0pt}
% 签名图片
\RequirePackage{graphicx}
\graphicspath{{figures/}}

% 设置PDF元数据
\BeforeBeginEnvironment{document}{
  \hypersetup{
    pdfauthor={\authorName},
    pdfsubject={西安电子科技大学\school{}学院\class{}届本科生毕业论文（设计）开题报告}
  }
}

% 插入签名图片
\newcommand\sign[1]{\includegraphics[height=1.5em,keepaspectratio]{#1}}
% 定义签名命令
\newcommand\zdjsqm{}
\newcommand\xyshqm{}

% 设置页面样式为空
\pagestyle{empty}

% 配置字体
% 自定义加粗加斜程度
\newcommand\FakeBoldValue{3}
\newcommand\FakeSlantValue{0.2}
\ifoverleaf
  % 配置默认英文字体
  \setmainfont{times.ttf}
    [Path=fonts/,
    BoldFont=timesbd.ttf,
    ItalicFont=timesi.ttf,
    BoldItalicFont=timesbi.ttf]
  % 配置默认中文字体
  \setCJKmainfont{simsun.ttc}
    [Path=fonts/,
    BoldFont={simsun.ttc},BoldFeatures={FakeBold=\FakeBoldValue},
    SlantedFont={simsun.ttc},SlantedFeatures={FakeSlant=\FakeSlantValue},
    BoldSlantedFont={simsun.ttc},BoldSlantedFeatures={FakeBold=\FakeBoldValue,FakeSlant=\FakeSlantValue},
    ItalicFont={simkai.ttf},
    BoldItalicFont={simkai.ttf},BoldItalicFeatures={FakeBold=\FakeBoldValue}]
  % 定义黑体字体
  \newCJKfontfamily\heiti{simhei.ttf}[Path=fonts/,BoldFont={simhei.ttf},BoldFeatures={FakeBold=\FakeBoldValue}]
  \newfontfamily\enheiti{simhei.ttf}[Path=fonts/,BoldFont={simhei.ttf},BoldFeatures={FakeBold=\FakeBoldValue}]
\else
  % 配置默认英文字体
  \setmainfont{Times New Roman}
  % 配置默认中文字体
  \setCJKmainfont{SimSun}[
    BoldFont={SimSun},BoldFeatures={FakeBold=\FakeBoldValue},
    SlantedFont={SimSun},SlantedFeatures={FakeSlant=\FakeSlantValue},
    BoldSlantedFont={SimSun},BoldSlantedFeatures={FakeBold=\FakeBoldValue,FakeSlant=\FakeSlantValue},
    ItalicFont={KaiTi},
    BoldItalicFont={KaiTi},BoldItalicFeatures={FakeBold=\FakeBoldValue}
    ]
  % 定义黑体字体
  \newCJKfontfamily\heiti{SimHei}[BoldFont={SimHei},BoldFeatures={FakeBold=\FakeBoldValue}]
  \newfontfamily\enheiti{SimHei}[BoldFont={SimHei},BoldFeatures={FakeBold=\FakeBoldValue}]
\fi

% 设置各级标题样式
\ctexset{
  section={
    name={,、},
    number={\chinese{section}},
    format={\raggedright\bfseries\zihao{-4}},
    aftername={},
    beforeskip={0pt plus 0pt minus 0pt},
    afterskip={0pt plus 0pt minus 0pt}
  }
}
\ctexset{
  subsection={name={（,）},
    number={\chinese{subsection}},
    format={\raggedright\bfseries\zihao{-4}},
    aftername={},
    titleformat={},
    beforeskip={8pt plus 0pt minus 0pt},
    afterskip={0pt plus 0pt minus 0pt}
  }
}
\ctexset{
  subsubsection={name={（,）},
    number={\arabic{subsubsection}},
    format={\raggedright\bfseries\zihao{-4}},
    aftername={},
    titleformat={},
    beforeskip={8pt plus 0pt minus 0pt},
    afterskip={0pt plus 0pt minus 0pt},
    indent={2em}
  }
}

% 设置下划线粗细
\newcommand\ulthickness{1pt}
% 自定义固定长度下划线命令
\newcommand\valueWithUL[2]{\CJKunderline[thickness=\ulthickness]{\makebox[#1]{#2}}}

% 定义封面和扉页
\AtBeginDocument{
  \begin{titlepage}
  \vspace*{-30pt}
  \begin{center}
  \zihao{-2}
  西安电子科技大学\CJKunderline[thickness=\ulthickness]{\school}学院
  \end{center}
  \vspace*{35pt}
  \begin{center}
  \heiti\zihao{2}
  本科生毕业论文（设计）开题报告
  \end{center}
  \vspace*{-23pt}
  \begin{center}
  \enheiti\heiti\zihao{-3}
  （\class{}届）
  \end{center}
  % 个人信息
  \vspace*{123pt}
  \begin{center}
  \zihao{-3}
  % 存储最长的值的宽度
  \newlength\metaValueWidth
  % 存储首页若干值的宽度便于绘制下划线
  \newlength\authorNameWidth
  \newlength\majorWidth
  \newlength\studentNoWidth
  \newlength\advisorNameWidth
  \settowidth{\authorNameWidth}{\authorName}
  \settowidth{\majorWidth}{\major}
  \settowidth{\studentNoWidth}{\studentNo}
  \settowidth{\advisorNameWidth}{\advisorName}
  % 计算最大值
  \setlength{\metaValueWidth}{
  \maxof{\authorNameWidth}{
  \maxof{\majorWidth}{
  \maxof{\studentNoWidth}{\advisorNameWidth}}}}
  % 补充2em长度 使得下划线略长于文本
  \addtolength{\metaValueWidth}{2em}
  % 增加高度
  \renewcommand{\arraystretch}{1.5}
  % 排版开题报告元数据
  \begin{tabular}{cc}
  学生姓名&\valueWithUL{\metaValueWidth}{\authorName}\\
  专\qquad{}业&\valueWithUL{\metaValueWidth}{\major}\\
  学\qquad{}号&\valueWithUL{\metaValueWidth}{\studentNo}\\
  指导教师&\valueWithUL{\metaValueWidth}{\advisorName}\\
  \end{tabular}
  \end{center}
  \vspace{80pt}
  \begin{center}
  \zihao{4}
  \submitDate
  \end{center}
  \vspace{50pt}
  \begin{center}
  \zihao{5}
  （本表一式三份，学生、指导教师、学院各一份）
  \end{center}
  \end{titlepage}
  \newpage
}

% 定义边框边距和线宽
\newlength\boxmargin
\setlength{\boxmargin}{5pt}
\newlength\boxrule
\setlength{\boxrule}{1pt}

\tcbset{
  standard jigsaw,
  sharp corners=all,
  colframe=black,
  opacityback=0,
  boxsep=0pt,
  boxrule=\boxrule,
  top=\boxmargin,
  bottom=\boxmargin,
  left=\boxmargin,
  right=\boxmargin,
  beforeafter skip=0pt,
  before upper={\setlength{\parindent}{2em}\linespread{1}\fontsize{12}{20}\selectfont}
}

\newtcolorbox{mybox1}{
  breakable,
  height fixed for=first and middle
}

\newtcolorbox{mybox2}{
  breakable,
  height fixed for=all,
  height fill=maximum
}

\newtcolorbox{mybox3}{
  height=.5\textheight+.5\boxrule,
  space to upper,
  lower separated=false,
  halign lower=flush right
}

\newenvironment{mcly}
  {\begin{mybox1}}
  {\end{mybox1}
  \vspace*{-\boxrule}}

\newenvironment{yjmdyy}
  {\begin{mybox2}}
  {\end{mybox2}}

\newenvironment{yjxz}
  {\begin{mybox2}}
  {\vspace*{8pt}
  \ckwx
  \bibliography{xduugtp}
  \end{mybox2}}

\newenvironment{yjnr}
  {\begin{mybox2}}
  {\end{mybox2}}

\newenvironment{gzjd}
  {\begin{mybox1}}
  {\end{mybox1}
  \vspace*{-\boxrule}}

\newenvironment{zbgz}
  {\begin{mybox2}}
  {\end{mybox2}}

\newenvironment{zdjsyj}
  {\begin{mybox3}}
  {\tcblower\linespread{1}\fontsize{12}{30}\selectfont
  签名\makebox[6em][l]{\zdjsqm}\\
  年\qquad 月\qquad 日
  \end{mybox3}}

\newenvironment{xyshyj}
  {\vspace*{-\boxrule}
  \begin{mybox3}}
  {\tcblower\linespread{1}\fontsize{12}{30}\selectfont
  签名\makebox[6em][l]{\xyshqm}\\
  年\qquad 月\qquad 日
  \end{mybox3}}
