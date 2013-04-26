#import <Foundation/Foundation.h>

@interface Cloud : NSObject
{
    NSString *title;
    NSString *fileList;
}

@property(assign) NSString *title;
@property(assign) NSString *fileList;

-(id)initWithGame:(NSString *)title;

-(BOOL)initDirectoryForGame:(NSString *)name;

-(int)fileCount;

// return file id, essentially an index
-(int)addFile:(NSString *)file;
-(void)deleteFile:(NSString *)file;
-(BOOL)fileExists:(NSString *)file;

-(int)IDForFile:(NSString *)file;
-(NSString *)fileNameForID:(int)fileID;

-(unsigned int)posixTimestampForFile:(NSString *)file;

-(void)writeData:(NSData *)toWrite toFile:(NSString *)fileName;
-(void)writeData:(NSData *)toWrite toID:(int)fileID;
-(int)appendData:(NSData *)toWrite toFile:(NSString *)fileName;
-(int)appendData:(NSData *)toWrite toID:(int)fileID;

-(int)readDataFromFile:(NSString *)fileName intoBuffer:(void *)buf
                length:(int)length;
-(int)readDataFromID:(int)fileID intoBuffer:(void *)buf length:(int)length;
-(NSData *)dataFromFile:(NSString *)fileName;
-(NSData *)dataFromID:(int)fileID;

@end
