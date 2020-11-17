# Shell(Bash)
`#!/bin/bash`告诉系统其后路径所指定的程序即是解释此脚本文件的 Shell 程序。
## 运行Shell脚本
- 作为可执行程序
```
chmod +x ./test.sh  #使脚本具有执行权限
./test.sh  #执行脚本
```

- 作为解释器参数
```
/bin/sh test.sh
/bin/php test.php
```

## 变量
### 命名变量
```bash
your_name="runoob.com"
```
* 变量名和等号之间不能有空格
* 命名只能使用英文字母，数字和下划线，首个字符不能以数字开头。
* 中间不能有空格，可以使用下划线（_）。
* 不能使用标点符号。
* 不能使用bash里的关键字（可用help命令查看保留关键字）。

### 使用变量
```bash
echo $your_name
```
- 变量名前面加美元符号
- 花括号是可选的，帮助解释器识别变量的边界

### 只读变量
```bash
myUrl="http://www.google.com"
readonly myUrl
```

### 删除变量
```bash
unset variable_name
```

### 字符串
#### 单引号
* 单引号里的任何字符都会原样输出，单引号字符串中的变量是无效的；
* 单引号字串中不能出现单独一个的单引号（对单引号使用转义符后也不行），但可成对出现，作为字符串拼接使用。

#### 双引号
* 双引号里可以有变量
* 双引号里可以出现转义字符

#### 拼接字符串
```bash
your_name="runoob"
# 使用双引号拼接
greeting="hello, "$your_name" !"
greeting_1="hello, ${your_name} !"
echo $greeting  $greeting_1
# 使用单引号拼接
greeting_2='hello, '$your_name' !'
greeting_3='hello, ${your_name} !'
echo $greeting_2  $greeting_3
```
#### 获取字符串长度
```bash
string="abcd"
echo ${#string} #输出 4
```
#### 提取子字符串
```bash
string="runoob is a great site"
echo ${string:1:4} # 输出 unoo
```
#### 查找子字符串
查找字符 i 或 o 的位置(哪个字母先出现就计算哪个)
```
string="runoob is a great site"
echo `expr index "$string" io`  # 输出 4
```
### 数组
bash仅支持一维数组
#### 定义
```bash
数组名=(值1 值2 ... 值n)
```
* 括号表示，**空格**分割
#### 读取
```bash
value=${array_name[n]}
echo ${array_name[@]} # 读取所有元素
```

## 传递参数

| 参数 | 说明 |
|----|----|
| $#	| 传递到脚本的参数个数 |
| $*	| 以一个单字符串显示所有向脚本传递的参数。如"$*"用「"」括起来的情况、以"$1 $2 … $n"的形式输出所有参数。|
| $$	| 脚本运行的当前进程ID号 |
| $!	| 后台运行的最后一个进程的ID号|
| $@	| 与$*相同，但是使用时加引号，并在引号中返回每个参数。如"$@"用「"」括起来的情况、以"$1" "$2" … "$n" 的形式输出所有参数。 |
| $-	| 显示Shell使用的当前选项，与set命令功能相同。|
| $?	| 显示最后命令的退出状态。0表示没有错误，其他任何值表明有错误。|

## 基本运算符
```bash
val=`expr 2 + 2`
echo "两数之和为 : $val"

if [ $a == $b ]
then
   echo "a 等于 b"
fi
```
| 参数 | 说明 | 举例 |
|----|----|----|
| + | 加法 | `expr $a + $b` 结果为 30。|
| - | 减法 | `expr $a - $b` 结果为 -10。|
| * | 乘法 | `expr $a \* $b` 结果为  200。|
| / | 除法 | `expr $b / $a` 结果为 2。|
| % | 取余 | `expr $b % $a` 结果为 0。|
| = | 赋值 | a=$b 将把变量 b 的值赋给 a。|
| == |相等。用于比较两个数字，相同则返回 true。|	[ \$a == \$b ] 返回 false。|
| != | 不相等。用于比较两个数字，不相同则返回 true. |	[ \$a != \$b ] 返回 true。|

## 流程控制
### if循环
```bash
if condition1
then
    command1
elif condition2 
then 
    command2
else
    commandN
fi
```
### for循环
```bash
for var in item1 item2 ... itemN
do
    command1
    command2
    ...
    commandN
done
```
### while循环
```bash
while condition
do
    command
done
```
### 选择语句
```bash
echo -n "输入 1 到 5 之间的数字:"
read aNum
case $aNum in
    1|2|3|4|5) echo "你输入的数字为 $aNum!"
    ;;
    *) echo "你输入的数字不是 1 到 5 之间的! 游戏结束"
        break
    ;;
esac
```

### 函数
#### 定义
```
demoFun(){
    echo "这是我的第一个 shell 函数!"
}
```
#### 传递参数
在函数体内部，通过 $n 的形式来获取参数的值



