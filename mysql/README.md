# mysql

## 权限

允许root用户在任何地方进行远程登录，并具有所有库任何操作权限，

具体操作如下：

在本机先使用root用户登录mysql： mysql -u root -p"youpassword" 进行授权操作：

```cmd

#授权操作
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'youpassword' WITH GRANT OPTION;

# 重载授权表：
FLUSH PRIVILEGES;


```


#### 查看系统的运行的mysql版本
```bash
 
 select @@version;
 
```

#### 查看事物的隔离级别
```bash
 
 select @@tx_isolation;
 
```

### MySQL 查看表的索引

#### 查看表的索引：
```bash
show index from table_name（表名）
```

结果列表中各字段的含义：

```bash
Non_unique
```
如果索引不能包括重复词，则为0。如果可以，则为1。

```bash
Key_name
```
索引的名称。

```bash
Seq_in_index
```
索引中的列序列号，从1开始。

```bash
Column_name
```
列名称。

```bash
Collation
```
列以什么方式存储在索引中。在MySQL中，有值‘A’（升序）或NULL（无分类）。

```bash
Cardinality
```
索引中唯一值的数目的估计值。通过运行ANALYZE TABLE或myisamchk -a可以更新。基数根据被存储为整数的统计数据来计数，所以即使对于小型表，该值也没有必要是精确的。基数越大，当进行联合时，MySQL使用该索引的机 会就越大。

```bash
Sub_part
```
如果列只是被部分地编入索引，则为被编入索引的字符的数目。如果整列被编入索引，则为NULL。

```bash
Packed
```
指示关键字如何被压缩。如果没有被压缩，则为NULL。

```bash
Null
```
如果列含有NULL，则含有YES。如果没有，则该列含有NO。

```bash
Index_type
```
用过的索引方法（BTREE, FULLTEXT, HASH, RTREE）