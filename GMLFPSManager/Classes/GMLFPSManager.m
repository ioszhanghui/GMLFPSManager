//
//  GMLFPSManager.m
//  WSL_FPS
//
//  Created by 小飞鸟 on 2019/11/26.
//  Copyright © 2019 王双龙. All rights reserved.
//

#import "GMLFPSManager.h"

#import "WSLFPS.h"
#import "WSLSuspendingView.h"

@implementation GMLFPSManager

/*开启 卡顿帧率检测*/
+(void)startMonitoring{
    WSLSuspendingView * suspendingView = [WSLSuspendingView sharedSuspendingView];
    
    WSLFPS * fps = [WSLFPS sharedFPSIndicator];
    [fps startMonitoring];
    fps.FPSBlock = ^(float fps) {
       suspendingView.fpsLabel.text = [NSString stringWithFormat:@"FPS = %.2f",fps];
    };
}

/*开启 卡顿帧率检测*/
+(void)removeMonitoring{
    //移除检测
     WSLFPS * fps = [WSLFPS sharedFPSIndicator];
    [fps removeMonitoring];
    //移除悬窗
     WSLSuspendingView * suspendingView = [WSLSuspendingView sharedSuspendingView];
    [suspendingView closeSuspendingView];

}
/**
 暂停监测
 */
+(void)pauseMonitoring{
     WSLFPS * fps = [WSLFPS sharedFPSIndicator];
    [fps pauseMonitoring];
}

@end
