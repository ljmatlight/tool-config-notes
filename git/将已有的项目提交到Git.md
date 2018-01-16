

#Git-将已有的项目提交到Git


##1、新建说明文件

```cmd
cd.>README.md
```

--- 

##2、在当前项目目录中生成本地git管理,并建立一个隐藏.git目录

```cmd
git init
```

---

##3、添加当前目录中的所有文件到索引

```cmd
git add README.md
```

---

##4、提交到本地源码库，并附加提交注释

```cmd
git commit -m "Initial commit"
```

---

##5、添加到远程项目，别名为origin

```cmd
git remote add origin xxx.xxx.git
```

---

##6、把本地源码库push到github

```cmd
git push -u origin master
```

---
 
##7、可能用到的命令
```cmd

 git fetch 
 
 git pull
 
 git branch --set-upstream-to=origin/master

```

# 其他

## IDEA 将已有项目添加到git

[IDEA 将已有项目添加到git](https://www.cnblogs.com/rongguang/p/5516300.html)