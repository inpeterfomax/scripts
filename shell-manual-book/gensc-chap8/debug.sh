#!/bin/bash

for i in {1..5}
do
set -x
 echo $i
set +x
done

echo "end"

1、使用选项 -x

bash -x script.sh

或者

sh -x script.sh
-x 选项是打印所有行的信息。

2、使用 set +/-x ;set +/-v

set -x：在执行时候显示参数和命令。
set +x：禁止调式。
set -v：当命令进入读取时候显示输入。
set +v：禁止打印输入。
示例

#!/bin/bash

for i in {1..5}
do
set -x
 echo $i
set +x
done

echo "end"
上例中，仅在 -x 和 +x 的区域中才会显示调式信息。

3、使用 _DEBUG 环境变量

如果需要自定义格式显示调式信息可以通过_DEBUG环境变量来建立：

#!/bin/bash

DEBUG() {
[ "$_DEBUG" = "on" ] && $@ || :
}

for i in {1..5}
do
DEBUG echo $i
done
将调试功能设置为“on”来运行脚本：

_DEBUG=on ./script.sh
将需要调式的行前加上DEBUG，运行脚本前没有加_DEBUG=on就不会显示任何信息，脚本中“:”告诉shell不要进行任何操作。

4、使用shebang调式方法

这是最便捷的方法。把shebang 从#!/bin/bash 修改成 #!/bin/bash -xv ，其他就不用做任何操作了。
