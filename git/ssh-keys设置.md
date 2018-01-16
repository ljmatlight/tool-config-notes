# git 

## git ssh-keys

### ssh 生成

```bash

git config user.name "name"
git config user.email "email"
cd ~/.ssh
ssh-keygen -t rsa -C "email"

```

### ssh 配置

将生成的公钥在对应的git服务器进行配置

### 测试

```bash

ssh -T git@github.com

```

----

## Git多账号配置

Windows下Git多账号配置，同一电脑多个ssh-key的管理

```config

# company
    Host git.oschina.net
    HostName git.oschina.net
    User            git
    PreferredAuthentications publickey
    IdentityFile ~/.ssh/id_rsa
# my.git.oschina.net
    Host my.git.oschina.net
    HostName git.oschina.net
    User            git
    PreferredAuthentications publickey
    IdentityFile ~/.ssh/galsang_rsa

# github.com
    Host github.com
    HostName github.com
    User            git
    PreferredAuthentications publickey
    IdentityFile ~/.ssh/ly_rsa

```