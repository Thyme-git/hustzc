# Do-it-yourself CPU

 **Do-it-yourself CPU**  is a tiny Project used for the [computer hardware system design](https://www.icourse163.org/course/0809HUST060-1205809816) course.

## Prerequisites

To build logisim, you must first install the following tools.

### Windows visia/7/8/8.1/10/11

- jdk >= 11

### MacOS >= 10.15 (x86_64) (Intel)

- jdk >= 11

### MacOS >= 11 (ARM) (Apple M)

You'd better not use ARM MAC! ARM MAC cannot run it and the error "java.awt.Toolkit.getMenuShortcutKeyMask()" will be displayed.(test on jdk8u351 , jdk11 and jdk19)

If you want to use logisim on ARM MAC, please refer to the Linux method below.

### Linux

- jdk >= 11

## Run logisim

### Run on Windows

You should open "预装软件" and set up logisim-hust-20200118.exe.

### Run on MacOS (x86_64)
```
java -jar logisim-hust-mac.jar
```

### Run on Linux or MacOS (ARM)
```
java -jar logisim-hust-linux.jar
```


