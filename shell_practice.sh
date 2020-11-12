#!/bin/bash
# 指定解释器，通过 *./test.sh* 执行。如果是 *sh test.sh* 会忽略此标记。

age=12
name='Andy'
# 使用变量，只要在变量名前面加美元符号即可
# 花括号是可选，加花括号是为了帮助解释器识别变量的边界
echo "Hi, I'm $name, ${age} year old"
echo "name length is ${#name}"
echo "name first letter is ${name:0:1}"
# 只读变量
readonly age
# 删除变量
unset name

# 元素使用空格符号分割
arr=(1 2 'andy' 'bobo')
echo "arr is ${arr[@]}"
echo "length of arr is ${#arr[@]}"
echo "first of arr is ${arr[1]}"

# 通过 *$n* 获取参数
if [ -n $1 ]
then
    echo "first arg is $1"
fi

# 计数
count=0
while [[ count -lt 5 ]]
do
    # 4 不打印
    if [ $count -ne 4 ]
    then
        echo $count
    fi
    count=`expr $count + 1`
done
# Mac 也可使用如下表达式
echo "2 + 2 = $((2 + 2))"
    
# 打印当前目录
for file in `ls`
do
    if [ -d $file ]
    then
        echo "$file is dir"
    elif [ -f $file ]
    then
        echo "$file is file"
    fi
done
