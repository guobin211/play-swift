//
//  mycfunc.c
//  macapp 实体文件
//
//  Created by 郭斌 on 2020/7/9.
//  Copyright © 2020 guobin. All rights reserved.
//

#include "mycfunc.h"

// 测试swift和c语言绑定
void handleClick()
{
    printf("call c function\n");
    av_log_set_level(AV_LOG_DEBUG);
    av_log(NULL, AV_LOG_DEBUG, "Hello from av_log()\n");

    // 注册设备
    avdevice_register_all();

    // context 音频上下文指针
    AVFormatContext *fmtContext;

    // 设备地址 [[video device]:[audio device]]
    char *deviceName = ":0";

    // format
    AVInputFormat *avformat = av_find_input_format("avfoundation");

    // option
    AVDictionary *avOptions = NULL;

    // 打开设备,接收打开操作的状态码
    int res;
    char errors[1024];
    res = avformat_open_input(&fmtContext, deviceName, avformat, &avOptions);
    // 打开失败
    if (res < 0) {
        av_strerror(res, errors, 1024);
        printf("Failed to Open Audio device, [%d] %s\n", res, errors);
        return;
    }

    // 接收读取内容
    int count = 0;
    AVPacket avPack;
    av_init_packet(&avPack);
    // 读取音频数据包
    while ((res = av_read_frame(fmtContext, &avPack) && count++ < 500) == 0)
        printf("pack size is %d \n", avPack.size);
    // 释放 AVPacket
    av_packet_unref(&avPack);

    return;
}
