//
//  RCTTestViewManager.m
//  AwesomeProject
//
//  Created by OrrHsiao on 2023/6/9.
//

#import "RCTTestViewManager.h"
#import "XATestView.h"

@implementation RCTTestViewManager

RCT_EXPORT_MODULE(RTCIMIImageView)

- (UIView *)view {
  NSLog(@"RCTTestViewManager view init");

  return [[XATestView alloc] init];
}

- (void)dealloc {
  NSLog(@"RCTTestViewManager dealloc");
}

@end
