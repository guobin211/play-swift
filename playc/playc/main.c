//
//  main.c
//  playc
//
//  Created by 郭斌 on 2020/7/9.
//  Copyright © 2020 guobin. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

// 枚举
enum ColorEnum {
    red   = 0,
    green = 100,
    blue  = 255,
};
// 结构体 没有构造函数的class
struct PxPoint {
    int x;
    int y;
    enum ColorEnum color;
};
// 函数声明
int funcName(int a)
{
    printf("a = %d\n", a);
    return 1;
}

// 创建文件
void createFile(char *fileName)
{
    // 文件类-指针-打开文件 "w"写入
    FILE *file = fopen(fileName, "w");
    if (!file) {
        printf("create file failed %s\n", fileName);
        return;
    }
    // 写入字符流
    size_t len = fwrite("hello-world", 1, 11, file);
    if (len == 11) {
        printf("fwrite over\n");
    } else {
        printf("fwrite losed\n");
    }
    // 关闭文件
    fclose(file);
    printf("file create success!\n");
    return;
}
// 读取文件
void readFile(char *fileName)
{
    // 文件类-指针-打开文件 "r"读取
    FILE *file = fopen(fileName, "r");
    if (!file) {
        printf("create file failed %s\n", fileName);
        return;
    }
    char buffer[1024] = { 0, };
    size_t len = fread(buffer, 1, 20, file);
    if (len <= 0) {
        printf("failed read file %s\n", fileName);
    } else {
        printf("read res =  %s\n", buffer);
    }
    fclose(file);
    return;
}

int main(int argc, const char *argv[])
{
    short a = 1;
    int b = 11;
    float c = 11.1;
    char *chars = "Hello";
    printf("a + b + c = %f\n", a + b + c);
    printf("%s,World!\n", chars);

    // 数组
    int arr[10] = { 0, 1, 2 };
    printf("%d\n", arr[1]);

    struct PxPoint px;
    px.x = 100;
    px.y = 200;
    printf("{x: %d,y: %d }\n", px.x, px.y);
    // 使用枚举
    enum ColorEnum color;
    color = red;
    // 复制值到结构体中
    px.color = color;
    printf("px.color = %D\n", px.color);
    color = green;
    printf("px.color = %D\n", px.color);
    printf("px.color = %D\n", color);

    // 使用指针,指向一个内存地址
    char *p = malloc(10);
    *p = '1';
    *(p + 1) = '2';
    *(p + 2) = '3';
    printf("%s\n", p);
    // 释放指针后仍然可以访问
    free(p);
    // 设置为NULL之后访问报错
    p = NULL;

    // 调用函数
    funcName(1);

    // createFile("/Users/guobin/Downloads/demo.txt");
    readFile("/Users/guobin/Downloads/demo.txt");
    int count = 0;
    // sleep和while
    while (1) {
        printf("sleep 1s... count=%D\n", count);
        count++;
        if (count > 5) {
            exit(0);
        }
        usleep(1000000);
    }

    return 0;
}
