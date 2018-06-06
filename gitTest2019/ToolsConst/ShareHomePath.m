//
//  ShareHomePath.m
//  Liankeji
//
//  Created by 李自豪 on 16/12/1.
//  Copyright © 2016年 haichuanhuiwulianxinxi. All rights reserved.
//

#import "ShareHomePath.h"
static ShareHomePath *shareHomePath = nil;
@implementation ShareHomePath
+(ShareHomePath*)GetShareHome{
   static dispatch_once_t once;
    dispatch_once(&once, ^{
        shareHomePath = [[ShareHomePath alloc]init];
    });
    return shareHomePath;
}
- (NSMutableString*)getDocumentsPath{//存放数据
    NSArray *arr = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSMutableString *documentPath = [arr objectAtIndex:0];
    return documentPath;
}
- (NSString *)getCachePath{//下次启动需要的缓存文件
    NSArray *arr = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES);
    NSString *cache = [arr objectAtIndex:0];
    return cache;
}
- (NSString *)getTmpPath{//tmp文件夹存放下次应用启用不需要的文件
    NSString *tmp = NSTemporaryDirectory();
    return tmp;
}
- (NSString *)getImagePath:(NSString*)imageName format:(NSString*)format{//获取当前应用程序中一个图片的路径
    NSString *imagePath = [[NSBundle mainBundle] pathForResource:imageName ofType:format];
    return imagePath;
}
//播放服务器返回的语音是处理需要的文件保存
- (NSString *)getFuwuqiArmPath{
    NSFileManager *fileManager = [NSFileManager defaultManager];
    
    NSString *directory = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)objectAtIndex:0];
    NSString* fileDirectory = [[[directory stringByAppendingPathComponent:@"lzhFuwuqiAmr"]
                                stringByAppendingPathExtension:@"amr"]
                               stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
        if (NO ==  [fileManager fileExistsAtPath:fileDirectory]){
            [fileManager createFileAtPath:fileDirectory contents:nil attributes:nil];
            NSLog(@"不存在已经创建arm文件路劲");
        }else{
            NSLog(@"存在已经rm文件路劲");
        }
    return fileDirectory;
}

- (NSString *)getFuwuqiArmToWAVPath{
    NSFileManager *fileManager = [NSFileManager defaultManager];
    
    NSString *directory = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)objectAtIndex:0];
    NSString* fileDirectory = [[[directory stringByAppendingPathComponent:@"lzhFuwuqiAmrTowav"]
                                stringByAppendingPathExtension:@"wav"]
                               stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    if (NO ==  [fileManager fileExistsAtPath:fileDirectory]){
        [fileManager createFileAtPath:fileDirectory contents:nil attributes:nil];
        NSLog(@"不存在已经创建wav文件路劲");
    }else{
        NSLog(@"存在已经wav文件路劲");
    }
    return fileDirectory;
}



//录制录音的文件保存
- (NSString *)getArmPath{
    NSFileManager *fileManager = [NSFileManager defaultManager];

    NSString *doumentPathStr = [self getDocumentsPath];
    //拼接新文件的路径
    //@"RecordPath/path2/amrFile.txt"
//    NSMutableString *str = [NSMutableString stringWithString:doumentPathStr];
//    [str appendString:@"/lzhAmrFile101.amr"];
//    if (NO ==  [fileManager fileExistsAtPath:str]){
//        [fileManager createFileAtPath:str contents:nil attributes:nil];
//        NSLog(@"不存在已经创建arm文件路劲");
//    }else{
//        NSLog(@"存在已经rm文件路劲");
//    }
   
        NSString *directory = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)objectAtIndex:0];;
        NSString* fileDirectory = [[[directory stringByAppendingPathComponent:@"lzhAmr200"]
                                    stringByAppendingPathExtension:@"amr"]
                                   stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    

    return fileDirectory;
}
- (NSString *)getWavSoundPath{
//    NSFileManager *fileManager = [NSFileManager defaultManager];
//    
//    NSString *doumentPathStr = [self getDocumentsPath];
//    //拼接新文件的路径
//    //@"RecordPath/path2/amrFile.txt"
//    NSMutableString *str = [NSMutableString stringWithString:doumentPathStr];
//    [str appendString:@"/lzhWavFile100.wav"];
//    if (NO ==  [fileManager fileExistsAtPath:str]){
//        [fileManager createFileAtPath:str contents:nil attributes:nil];
//        NSLog(@"不存在已经创建wav文件路劲");
//    }else{
//        NSLog(@"存在已经wav文件路劲");
//    }
    NSString *directory = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)objectAtIndex:0];;
    NSString* fileDirectory = [[[directory stringByAppendingPathComponent:@"lzhWav200"]
                                stringByAppendingPathExtension:@"wav"]
                               stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    
    
    return fileDirectory;
}


@end
