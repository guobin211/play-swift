//
//  mycfunc.c
//  macapp 实体文件
//
//  Created by 郭斌 on 2020/7/9.
//  Copyright © 2020 guobin. All rights reserved.
//

#include "mycfunc.h"
#include "libavutil/avutil.h"

// 测试swift和c语言绑定
void handleClick()
{
    printf("call c function\n");
    av_log_set_level(AV_LOG_DEBUG);
    av_log(NULL, AV_LOG_DEBUG, "Hello from av_log()");
    return;
}
