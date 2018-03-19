
# gitlab和github下fork后如何同步源的新更新


1. 首先要先确定一下是否建立了主repo的远程源：

```bash

git remote -v

```

2. 如果里面只能看到你自己的两个源(fetch 和 push)，那就需要添加主repo的源：

```bash

git remote add upstream URL（fork的主库地址）  ### git remote rm upstream
git remote -v

```
然后你就能看到upstream了。

3. 如果想与主repo合并：

```bash

git fetch upstream
git merge upstream/master

```
