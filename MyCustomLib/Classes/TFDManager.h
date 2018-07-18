//
//  TFDManager.h
//  Expecta
//
//  Created by mingxin.ji on 2018/7/18.
//

#import <Foundation/Foundation.h>

@interface TFDManager : NSObject


- (void) httpAction:(NSString *) urlStr complete:(void(^)(id data)) complete;

@end
