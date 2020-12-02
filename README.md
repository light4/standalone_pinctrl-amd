# 修复联想 R7000/R7000P 触摸板

这是一个独立的 `pinctrl-amd` 内核模块，修复了联想 R7000/R7000P 触摸板无法使用的情况

代码来自 [launchpad.net](https://bugs.launchpad.net/ubuntu/+source/linux/+bug/1887190/comments/189)

注意，此模块适用于 `kernel >= 5.9`

使用方法

```bash
$ make
$ sudo make install
```
