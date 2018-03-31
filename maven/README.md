# maven

 
## maven 依赖分析 
 
将项目依赖树输出到`projectName-dependency-tree.txt`文件中
```
mvn dependency:tree -Doutput=projectName-dependency-tree.txt

```

将项目依赖列表输出到`projectName-dependency-list.txt`文件中
```
mvn dependency:list -Doutput=projectName-dependency-list.txt

```