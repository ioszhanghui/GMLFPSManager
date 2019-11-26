#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "GMLFPSManager.h"
#import "WSLFPS.h"
#import "WSLSuspendingView.h"

FOUNDATION_EXPORT double GMLFPSManagerVersionNumber;
FOUNDATION_EXPORT const unsigned char GMLFPSManagerVersionString[];

