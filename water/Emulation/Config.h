#import <Foundation/Foundation.h>

#define SAVE_DIR @"~/Library/Application Support/Water"
#define PLIST @"water.plist"
#define NAME_KEY @"name"
#define APP_ID_KEY @"app_id"
#define LANGUAGE_KEY @"language"

@interface Config : NSObject

+(NSString *)configPath;
+(NSDictionary *)configDict;
+(NSString *)saveDir;
+(NSString *)getSavePathForFile:(NSString *)file;

+(NSString *)name;
+(NSString *)appId;
+(NSString *)language;

@end
