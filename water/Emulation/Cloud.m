#import "Cloud.h"
#import "Config.h"
#import "DDLog.h"

#ifdef DEBUG
static const int ddLogLevel = LOG_LEVEL_INFO;
#else
static const int ddLogLevel = LOG_LEVEL_WARN;
#endif

@implementation Cloud

@synthesize title;
@synthesize fileList;

-(id)initWithGame:(NSString *)gametitle
{
    self = [super init];
    if (self)
    {
        self.title = [NSString stringWithString:gametitle];
        self.fileList = [Config getSavePathForFile:@"files.plist"];
        
        if(![self initDirectoryForGame:gametitle])
        {
            DDLogCError(@"Failed to create game directory");
        }
    }
    return self;
}

-(BOOL)initDirectoryForGame:(NSString *)name
{
    BOOL exists;
    [[NSFileManager defaultManager]
     fileExistsAtPath:[Config saveDir] isDirectory:&exists];
    if (exists)
    {
        return TRUE;
    }
    
    NSError *error = nil;
    BOOL ret = [[NSFileManager defaultManager] createDirectoryAtPath:
                [Config saveDir] withIntermediateDirectories:YES
                                attributes:nil error:&error];
    if (ret)
    {
        // create plist for file IDs
        NSArray *ids = [NSArray array];
        [ids writeToFile:self.fileList atomically:YES];
    }
    return ret;
}

-(int)fileCount
{
    NSArray *plist = [NSArray arrayWithContentsOfFile:self.fileList];
    return [plist count];
}

-(int)addFile:(NSString *)file
{
    NSString *path = [Config getSavePathForFile:file];
    [[NSFileManager defaultManager] createFileAtPath:path
                                            contents:nil attributes:nil];
    
    NSMutableArray *plist = [NSMutableArray arrayWithContentsOfFile:self.fileList];
    [plist addObject:file];
    [plist writeToFile:self.fileList atomically:YES];
    
    return [plist indexOfObject:file];
}

-(void)deleteFile:(NSString *)file
{
    NSError *error = nil;
    NSString *path = [Config getSavePathForFile:file];
    [[NSFileManager defaultManager] removeItemAtPath:path error:&error];
    
    NSMutableArray *plist = [NSMutableArray arrayWithContentsOfFile:self.fileList];
    [plist removeObject:file];
    [plist writeToFile:self.fileList atomically:YES];
}

-(BOOL)fileExists:(NSString *)file
{
    NSString *path = [Config getSavePathForFile:file];
    return [[NSFileManager defaultManager] fileExistsAtPath:path];
}

-(int)IDForFile:(NSString *)file
{
    NSArray *plist = [NSArray arrayWithContentsOfFile:self.fileList];
    int fileID = [plist indexOfObject:file];
    if (fileID == NSNotFound)
    {
        return [self addFile:file];
    }
    else
    {
        return fileID;
    }
}

-(unsigned int)posixTimestampForFile:(NSString *)file
{
    NSError *error = nil;
    NSString *path = [Config getSavePathForFile:file];
    NSDictionary *attr = [[NSFileManager defaultManager]
                          attributesOfItemAtPath:path error:&error];
    NSDate *modified = [attr fileModificationDate];
    return [modified timeIntervalSince1970]; // posix timestamp is in seconds
}

-(NSString *)fileNameForID:(int)fileID
{
    NSArray *plist = [NSArray arrayWithContentsOfFile:self.fileList];
    return [NSString stringWithString:[plist objectAtIndex:fileID]];
}

-(void)writeData:(NSData *)toWrite toFile:(NSString *)fileName
{
    NSString *path = [Config getSavePathForFile:fileName];
    if (![[NSFileManager defaultManager] fileExistsAtPath:path])
    {
        [self addFile:fileName];
    }
        
    FILE *file = fopen([path UTF8String], "wb+");
    fseek(file, 0x0, SEEK_SET);
    fwrite([toWrite bytes], 1, [toWrite length], file);
    fclose(file);
}

-(void)writeData:(NSData *)toWrite toID:(int)fileID
{
    NSString *file = [self fileNameForID:fileID];
    [self writeData:toWrite toFile:file];
}

-(int)appendData:(NSData *)toWrite toFile:(NSString *)fileName
{
    NSString *path = [Config getSavePathForFile:fileName];
    if (![[NSFileManager defaultManager] fileExistsAtPath:path])
    {
        [self addFile:fileName];
    }
    
    FILE *file = fopen([path UTF8String], "wb+");
    fseek(file, 0, SEEK_END); // seek to end
    int len = fwrite([toWrite bytes], 1, [toWrite length], file);
    fclose(file);
    return len;
}

-(int)appendData:(NSData *)toWrite toID:(int)fileID
{
    NSString *file = [self fileNameForID:fileID];
    return [self appendData:toWrite toFile:file];
}

-(int)readDataFromFile:(NSString *)fileName intoBuffer:(void *)buf length:(int)length
{
    NSString *path = [Config getSavePathForFile:fileName];
    FILE *file = fopen([path UTF8String], "rb+");
    fseek(file, 0, SEEK_SET);
    fread(buf, length, 1, file);
    fclose(file);
    return length;
}

-(int)readDataFromID:(int)fileID intoBuffer:(void *)buf length:(int)length
{
    NSString *file = [self fileNameForID:fileID];
    return [self readDataFromFile:file intoBuffer:buf length:length];
}

-(NSData *)dataFromFile:(NSString *)fileName
{
    NSString *path = [Config getSavePathForFile:fileName];
    return [NSData dataWithContentsOfFile:path];
}

-(NSData *)dataFromID:(int)fileID
{
    NSString *file = [self fileNameForID:fileID];
    return [self dataFromFile:file];
}

@end
