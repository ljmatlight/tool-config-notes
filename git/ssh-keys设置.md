# git 

> git ssh-keys

## ssh 生成

### github

```
git config user.name "ljmatlight"
git config user.email "vimx86@gmail.com"
cd ~/.ssh
ssh-keygen -t rsa -C "vimx86@gmail.com"
```

> 创建了 `ljmatligth4github_rsa` 文件


### gitee

```
git config user.name "ljmatlight"
git config user.email "vimx86@gmail.com"
cd ~/.ssh
ssh-keygen -t rsa -C "vimx86@gmail.com"
```

> 创建了 `ljmatligth4gitee_rsa` 文件


### ssh 配置

将生成的公钥在对应的git服务器进行配置

> 将公钥 ljmatligth4github_rsa.pub 内容配置到github。

> 将公钥 ljmatlight4gitee_rsa.pub 内容配置到gitee。

> 默认使用id_rsa尝试，如果你在新建秘钥的时候使用了自定义的名称，
比如github_rsa，你需要再配置一个config文件 `cd ~/.ssh/vi config`

```config

 # gitee
 Host git.oschina.net
 HostName git.oschina.net
 User git
 IdentityFile ~/.ssh/ljmatlight4gitee_rsa

 # github
 Host github.com
 HostName github.com
 User git
 IdentityFile ~/.ssh/ljmatlight4github_rsa

```

ESC+:wq保存退出

### 测试

测试github
```
ssh -T git@github.com 
```

测试gitee
```
ssh -T git@git.oschina.net 
```