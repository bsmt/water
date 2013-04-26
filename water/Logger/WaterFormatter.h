#import <Foundation/Foundation.h>
#import "DDLog.h"

@interface WaterFormatter : NSObject <DDLogFormatter>
{
    int loggerCount;
    NSDateFormatter *formatter;
}

@end
