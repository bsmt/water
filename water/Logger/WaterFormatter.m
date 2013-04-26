#import "WaterFormatter.h"

@implementation WaterFormatter

-(NSString *)formatLogMessage:(DDLogMessage *)logMessage
{
    formatter = [[NSDateFormatter alloc] init];
    formatter.dateFormat = @"HH:mm:ss";
    NSString *time = [formatter stringFromDate:logMessage->timestamp];
    
    NSString *logLevel;
    switch (logMessage->logFlag)
    {
        case LOG_FLAG_ERROR : logLevel = @"Error"; break;
        case LOG_FLAG_WARN  : logLevel = @"Warning"; break;
        case LOG_FLAG_INFO  : logLevel = @"Info"; break;
        default             : logLevel = @"Verbose"; break;
    }
    
    return [NSString stringWithFormat:@"[%@][%@][Water] %@", time, logLevel,
            logMessage->logMsg];
}

-(void)didAddToLogger:(id <DDLogger>)logger
{
    loggerCount++;
    NSAssert(loggerCount <= 1, @"This logger isn't thread-safe");
}

- (void)willRemoveFromLogger:(id <DDLogger>)logger
{
    loggerCount--;
}

@end
