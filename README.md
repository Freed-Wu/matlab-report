
matlab-report
=============

A backup of my homework.

## Matlab软件基本操作考查

### 目的

掌握Matlab软件基本使用，以及简单程序调试。

### 内容

应用学过的信号与系统知识，编写M文件程序，并调试运行，得到正确结果。

### 要求

- 本软件实验作为实验成绩的依据，每位同学必须在完成3个硬件实验的基础上，才可以进行；
- 实验成绩满分为10分，可以选用教材和实验16~24中的程序作为实验题目，调试成功，最高得分为7分；
- 为鼓励大家学习积极性，凡自己找适当题目，调试完成，根据题目难易程度，加0~3分；
- 实验时间在课程结束后实施，上机时间另行安排，每位同学1小时，每次25人。

### 实验验收：

上机调试完成后，验收一下3部分内容：

- 题目（Word文档）
- 程序的M文件
- 运行结果。

### 特别说明：

- 程序调试不得在Matlab命令窗口进行；
- 为了防止病毒传播，请大家不得用实验电脑的USB拷贝文件。
- 凡成绩在7分以上的同学，3项内容需要保留在电脑中文件夹中，文件夹名为该同学“学号+姓名”，例如：0904210168林枚。
- 可以带书，教材和事先准备好的程序等，只是不准带U盘拷贝。

### 测试地点

基础实验楼421室

Dependent
---------

1.  A LaTex distribution. Such as [texlive].

Install
-------

``` {.zsh}
git clone git@github.com:Freed-Wu/matlab-report
cd matlab-report
latexmk -pvc main.tex
```

Q & A
-----

More question see [Issues].

If you don't wanna compile, you can download the complied paper from
[Release]

  [texlive]: https://github.com/TeX-Live/texlive-source
  [Issues]: https://github.com/Freed-Wu/matlab-report/issues
  [Release]: https://github.com/Freed-Wu/matlab-report/releases/

