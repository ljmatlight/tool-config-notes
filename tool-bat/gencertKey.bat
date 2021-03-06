
:: gencert key

:: "设置变量"
:: "设置生成密钥别名"
set keystoreAlias="ssokeystore"

:: "设置生成密钥路径"
set keystorePath="%cd%/sso.keystore"

:: "设置JDK密钥库路径"
set keystoreJDKPath="C:\devSpace\Java\jdk1.8.0_131\jre\lib\security\cacerts "

:: "导出证书路径"
set cacertPath="%cd%/ssokeystore.crt"

:: "设置密钥密码"
set keypass=123456

:: "设置保存密码"
set storepass=123456

:: "执行脚本"
::  "从密钥库中删除指定别名密钥"
keytool -delete -alias %keystoreAlias% -keystore %keystoreJDKPath% -keypass changeit -storepass changeit

::  "生成key"
keytool -genkey -alias %keystoreAlias% -keyalg RSA -keysize 2048 -keypass %keypass% -storepass %storepass% -keystore %keystorePath% -dname "CN=www.galsang.org,OU=galsang.org,O=galsang,L=Shanghai,ST=Shanghai,C=CN" -ext "san=dns:www.galsang.org,ip:127.0.0.1"

::  "生成key完成"

:: "导出证书"
keytool -exportcert -alias %keystoreAlias% -keystore %keystorePath% -file %cacertPath% -keypass %keypass% -storepass %storepass%

:: "导入证书到本地JDK（客户端认证）"
keytool -import -alias %keystoreAlias% -keystore %keystoreJDKPath% -file %cacertPath% -keypass changeit -storepass changeit

PAUSE