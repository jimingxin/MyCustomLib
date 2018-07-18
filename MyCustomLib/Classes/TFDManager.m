//
//  TFDManager.m
//  Expecta
//
//  Created by mingxin.ji on 2018/7/18.
//

#import "TFDManager.h"
#import <AFNetworking/AFNetworking.h>

@implementation TFDManager


- (void) httpAction:(NSString *) urlStr complete:(void(^)(id data)) complete{
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    
    [manager POST:urlStr parameters:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nonnull responseObject) {
        
        complete(responseObject);
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        complete(nil);
    }];
    
}

@end
