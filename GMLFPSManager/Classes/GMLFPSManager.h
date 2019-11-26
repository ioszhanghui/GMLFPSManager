//
//  GMLFPSManager.h
//  WSL_FPS
//
//  Created by 小飞鸟 on 2019/11/26.
//  Copyright © 2019 王双龙. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface GMLFPSManager : NSObject

/*开启 卡顿帧率检测*/
+(void)startMonitoring;

/*开启 卡顿帧率检测*/
+(void)removeMonitoring;
/*暂停监测*/
+(void)pauseMonitoring;

@end

NS_ASSUME_NONNULL_END
