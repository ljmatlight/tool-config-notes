# mysql

## 允许root用户在任何地方进行远程登录，并具有所有库任何操作权限，

具体操作如下：

在本机先使用root用户登录mysql： mysql -u root -p"youpassword" 进行授权操作：

```cmd

#授权操作
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'youpassword' WITH GRANT OPTION;

# 重载授权表：
FLUSH PRIVILEGES;


```
 