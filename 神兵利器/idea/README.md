# idea

> 工欲善其事必先利其器

## 配置文件的导出导入

IntelliJ IDEA导出设置
导出：

【File】->【Export Settings】

导入：

【File】->【Import Settings】

## 常用插件

- spring assistant
- formatYaml
- snakeyaml
- Properties to Yaml Converter
- .ignore
- lombok plugin

## 工程管理

### 项目输出成文档树 
    在 IDEA 中 写文档的时候，想把项目输出成文档树的形式，可以使用以下命令：
```bash
  # 只有文件夹
  tree  >>	D:/tree.txt 
  
  # 包括文件夹和文件
  tree /f >>	D:/tree.txt 
```



## 配置


1、基础环境的搭建

 1.1、IDEA使用--字体、编码和基本设置

2、插件的安装

2.1、在IDEA中配置Gauge环境  

2.2、IdeaVim的安装：：： linux爱好者的最爱

3、对比Eclipse使用习惯进行的一些设置

3.1、IntelliJ IDEA 鼠标放置在变量、方法、类上面显示api  

 3.2、下载指定包的源码包和文档

 3.3、 IntelliJ IDEA，代码行宽度超出限制时自动换行

 3.4、设置文件头注释、方法头注释

/**
 * Description： 
 * <br />Author： galsang
 * <br />Date： ${DATE}
 */
 

4、常用快捷键

4.1、 代码折叠展开：

ctrl + shift + -    折叠所有的

ctrl + shift + +   按键组合每按一次展开一层

Ctrl + Alt + O    去除无用导入类

Alt + Enter        导入类

Ctrl + Alt + L     格式化

 .                       提示参数

Ctrl + Alt + B    跳转到接口实现类

Ctrl + F 查找当前文件内容
Ctrl + R 替换当前文件内容

Alt + 7 展开类的方法结构

全文搜索功能（类似eclipse的ctrl + h） - Ctrl + Shift + F
shift + F6 - 重构类名


5、 导入含有多个模块的项目，保留工程目录

进入工程目录，删除 .idea 文件夹，

打开 Idea ， 点击 "Open"， 选择 要导入的工程目录即可 