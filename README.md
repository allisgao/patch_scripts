说明：
# 1 助手介绍
本助手包括如下几个脚本：
## 1.1 解压缩脚本
* `unzip_file.sh`				
普通的解压缩脚本
* `unzip_file_Nooverwrite.sh`		
解压缩，不覆盖
* `unzip_file_overwrite.sh`		
解压缩，覆盖

## 1.2 补丁相关脚本
### 1.2.1 脚本生成脚本
`create_scripts.sh`		根据补丁名生成对应的可执行脚本
`basic_patch_scripts.sh`	脚本母版，被`create_scripts.sh`调用后，生成对应的具体补丁的脚本。
### 1.2.2 补丁脚本使用示例
假设有一个补丁脚本名为“`123456.sh`”，使用方法：
`sh 123456.sh`

## 1.3 环境变量脚本
PATCH_ENV
脚本公用配置文件，存放公用环境变量信息。

# 2 助手使用场景介绍
## 2.1 情景模拟
OracleEBS打补丁，使用Autoconfig模式。补丁包为`.zip`格式，有的补丁包有中文包，示例：
~~~text
p123456_R1.ABC.zip
p123456_R1.ABC_zhs.zip
~~~
`.zip`包解压后生成一个以数字命名的目录，示例：`123456`，`123456_ZHS`
所有的压缩包都存放在$PATCH_HOME目录下。
## 2.2 脚本使用步骤
### 2.2.1 复制脚本
将所有脚本复制到和补丁文件p123456_R1.ABC.zip同级目录（如果有其他需求，可以灵活更改）
### 2.2.2 解压补丁
这里，提供了3种解压方式：普通解压缩（有重复文件提示是否覆盖）、覆盖解压缩、解压缩跳过重复文件。初次使用，采用普通解压缩方式即可：
~~~shell
unzip_file.sh
~~~
### 2.2.3 为每个补丁生成一个可执行脚本
执行脚本生成脚本：
~~~bash
create_scripts.sh
~~~

## 2.3 使用脚本打补丁
例如，打补丁p123456：
~~~bash
sh 123456.sh
~~~
脚本会自动识别补丁包有没有中文补丁包，如果没有会跳过。
脚本运行后，只需要根据提示执行输入验证信息、确认/取消等操作。

# 3 已知问题
* 助手只能处理同级目录下的补丁，子目录/上级目录的补丁，需要将助手复制到对应目录即可。








