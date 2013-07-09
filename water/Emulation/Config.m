#import "Config.h"

#include <dlfcn.h>

@implementation Config

const char *dylib_path()
{
    Dl_info info;
    if (dladdr(dylib_path, &info))
    {
        return info.dli_fname;
    }
    else
    {
        return NULL;
    }
}

+(NSString *)configPath
{
    NSString *dir = [[NSString stringWithUTF8String:dylib_path()] stringByDeletingLastPathComponent];
    NSString *path = [dir stringByAppendingPathComponent:PLIST];
    return [NSString stringWithString:path];
}

+(NSDictionary *)configDict
{
    NSDictionary *plist = [NSDictionary dictionaryWithContentsOfFile:[Config configPath]];
    if (!plist) // use default values
    {
        NSDictionary *defaults = @{@"name": @"game", @"app_id": @123456, @"language": @"en"};
        return defaults;
    }
    else
    {
        return plist;
    }
}

+(NSString *)saveDir
{
    NSString *path = [[SAVE_DIR stringByExpandingTildeInPath] stringByAppendingPathComponent:[Config name]];
    return [NSString stringWithString:path];
}

+(NSString *)getSavePathForFile:(NSString *)file
{
    return [[Config saveDir] stringByAppendingPathComponent:file];
}

+(NSString *)name
{
    return [NSString stringWithString:[[Config configDict]
                                       valueForKey:NAME_KEY]];
}

+(NSString *)appId
{
    return [NSString stringWithString:[[Config configDict]
                                       valueForKey:APP_ID_KEY]];
}

+(NSString *)language
{
    return [NSString stringWithString:[[Config configDict]
                                       valueForKey:LANGUAGE_KEY]];
}

@end
