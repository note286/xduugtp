<p align="center"><a href="https://github.com/note286/xduugtp"><img src="logo.svg" height="50px"></a></p>
<p align="center">
<a href="https://github.com/note286/xduugtp/blob/main/LICENSE"><img src="https://img.shields.io/github/license/note286/xduugtp"></a>
<a href="https://github.com/note286/xduugtp"><img src="https://img.shields.io/github/stars/note286/xduugtp"></a>
<a href="https://github.com/note286/xduugtp/issues?q=is%3Aopen+is%3Aissue"><img src="https://img.shields.io/github/issues/note286/xduugtp"></a>
<a href="https://github.com/note286/xduugtp/issues?q=is%3Aissue+is%3Aclosed"><img src="https://img.shields.io/github/issues-closed/note286/xduugtp"></a>
<a href="https://github.com/note286/xduugtp/commits/main"><img src="https://img.shields.io/github/commit-activity/m/note286/xduugtp"></a>
<a href="https://github.com/note286/xduugtp/commits/main"><img src="https://img.shields.io/github/last-commit/note286/xduugtp"></a>
<a href="https://github.com/note286/xduugtp/tags"><img src="https://img.shields.io/github/v/tag/note286/xduugtp"></a>
</p>

# 简介

西安电子科技大学本科生毕业论文（设计）开题报告LaTeX模板

# 获取

下载[源码](https://codeload.github.com/note286/xduugtp/zip/refs/heads/main)后，解压并进入`xduugtp-main`文件夹。

运行如下命令得到文档类文件及相应的示例文件：

```shell
xelatex xduugtp.ins
```

运行如下命令得到文档类手册：

```shell
xelatex xduugtp.dtx
makeindex -s gind.ist -o xduugtp.ind xduugtp.idx
makeindex -s gglo.ist -o xduugtp.gls xduugtp.glo
xelatex xduugtp.dtx
xelatex xduugtp.dtx
```

最后保留如下文件即可：

- `latexmkrc`：latexmk编译配置文件
- `xduugtp.bib`：参考文献样例文件
- `xduugtp.cls`：文档类文件
- `xduugtp.pdf`：文档类手册，建议重命名为`xduugtp-doc.pdf`
- `xduugtp.tex`：LaTeX源文件

对于没有条件进行如上操作的用户，也可以直接在[Releases](https://github.com/note286/xduugtp/releases)处下载最新版。
