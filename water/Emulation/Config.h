#import <Foundation/Foundation.h>

#define SAVE_DIR @"~/Library/Application Support/Water"
#define PLIST @"water.plist"
#define NAME_KEY @"name"
#define NAME_DEFAULT @"game"
#define APP_ID_KEY @"app_id"
#define APP_ID_DEFAULT @123456
#define LANGUAGE_KEY @"language"
#define LANGUAGE_DEFAULT @"en"

@interface Config : NSObject

+(NSString *)configPath;
+(NSDictionary *)configDict;
+(NSString *)saveDir;
+(NSString *)getSavePathForFile:(NSString *)file;

+(NSString *)name;
+(NSString *)appId;
+(NSString *)language;

@end
