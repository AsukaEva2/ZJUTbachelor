本着“内容和格式相分离”的理念，加上一些细节上的优化最终完成了《浙江工业大学本科毕业论文LaTeX模板》。《浙江工业大学理学院毕业论文规范2021》规范本身就有或多或少的问题，是否还需要修改要再问。

本模板基于LaTeX2e，目前为止还是以LaTeX2e为主流，地位还不可撼动。

使用本模板之前，请仔细阅读此文档以及main.pdf的第二章。可用xeLaTeX（我这里环境是Win10下的TexLive+TeXstudio）编译main.tex查看是否有正常编译。

模板项目地址：

* [Github](https://github.com/AsukaEva2/ZJUTbachelor)
* [Gitee](https://gitee.com/asukaeva2/zjutbachelor)

另参考我的博客[浙江工业大学本科毕业论文LaTeX模板](https://haoyufang.gitee.io/2022/03/24/%E6%B5%99%E6%B1%9F%E5%B7%A5%E4%B8%9A%E5%A4%A7%E5%AD%A6%E6%9C%AC%E7%A7%91%E6%AF%95%E4%B8%9A%E8%AE%BA%E6%96%87LaTeX%E6%A8%A1%E6%9D%BF/)和[正儿八经学习LaTeX](https://haoyufang.gitee.io/2022/03/01/%E6%AD%A3%E5%84%BF%E5%85%AB%E7%BB%8F%E5%AD%A6%E4%B9%A0LaTex/)

欢迎本学院以及LaTeX开发者、爱好者一起使用和维护。

![16b692877f4312853cb988b45eca021](./README/README-2022-03-24-18-18-06-1.png)

<!--more-->

# 模板框架

```mermaid
graph LR
	模板--编译-->main.tex
	模板--样式-->ZJUTbachelor.cls
	模板--参考文献宏包-->gbt7714.sty
	模板--参考文献格式-->gbt7714-2005-unsrt.bst
	模板--参考文献数据库-->ref.bib
	模板--思源黑体-->SourceHanSansSC.zip
	模板--删除编译辅助文件-->del.bat
	模板--章节-->parts
	parts-->第一章.tex
	parts-->第二章.tex
	parts-->第...章.tex
	parts-->致谢.tex
	parts-->附录.tex
	模板--图片-->pics
	pics-->logo.png
	pics-->...
	模板--插入PDF文件-->pdf
	pdf-->诚信承诺书.pdf
	pdf-->任务书.pdf
```



# 模板编译

感谢[思源黑体](https://github.com/adobe-fonts/source-han-sans/releases)提供的开源字体和[walkerguo](https://gitee.com/walkeraguo/gbt7714-bibtex-style)的提供的参考文献宏包支持。

首先要安装字体，解压`SourceHanSansSC.zip`文件，然后选中所有字体右键`为所有用户安装(A)`，如下图所示。

![e665e28de82751d316ed26491c84a96](./README/README-2022-03-24-18-18-06-2.png)

打开`main.tex`文件，用xeLaTeX编译。将源文件分割成若干个文件，例如将每章内容单独写在一个文件中，会大大简化修改和校对的工作。

需要做的是更改个人信息、中文摘要、英文摘要、在正文插入章节等等。目录、参考文献（只需有`.bib`数据库）会自动生成、字体、字号、行距已经在`ZJUTbachelor.cls`中全部定义好。所以说$\LaTeX$的理念是**内容和格式相分离**。

重新编译最好删除辅助文件，特别是遇到目录、参考文献有报错的时候。双击`del.bat`文件即可删除辅助文件。

![47f6555c68aaa418111dd53b0e7e815](./README/README-2022-03-24-18-18-06-3.png)

# 模板实例

![长图](./README/长图.jpg)