
# `git` 拉取远程分支并创建本地分支

## 查看远程分支

```bash

git branch -r

```

## 拉取远程分支并创建本地分支
 
### 方法一：

使用该方式会在本地新建分支x，并自动切换到该本地分支x。
采用此种方法建立的本地分支会和远程分支建立映射关系。

```bash

git checkout -b 本地分支名x origin/远程分支名x

```
 
### 方式二：

使用该方式会在本地新建分支x，但是不会自动切换到该本地分支x，需要手动checkout。
采用此种方法建立的本地分支不会和远程分支建立映射关系。

```bash

git fetch origin 远程分支名x:本地分支名x

```

手动checkout

```bash

git checkout 本地分支名x

```

## 删除本地分支

```bash

git branch -d branchName

```

## 删除远程分支

```bash

git branch -r -d origin/branchName
git push origin:branchName

```

 