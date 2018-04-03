
# 查看和切换git项目远程仓库地址

## 查看git项目远程仓库地址

### 方法一： 

```bash

git remote -v

```

### 方法二：

查看项目详细的git配置信息：

```bash

git config -l

```

## 切换git项目的远程仓库地址

### 方法一：

```bash

# 更换远程仓库地址，URL为新地址。
git remote set-url origin url

```

### 方式二：

先删除远程仓库地址，然后再添加:

```bash

# 删除现有远程仓库
git remote rm origin

# 添加新远程仓库
git remote add origin url

```
