//
//  SecondViewController.m
//  AwesomeProject
//
//  Created by OrrHsiao on 2023/6/9.
//

#import "SecondViewController.h"
#import <React/RCTLog.h>
#import <React/RCTBridge.h>
#import <React/RCTRootView.h>
#import <React/RCTBundleURLProvider.h>
#import <React/RCTDevSettings.h>
#import <React/RCTRedBox.h>

@interface SecondViewController ()<RCTBridgeDelegate>

/// 桥接类
@property(nonatomic, strong) RCTBridge *bridge;

/// RN根视图
@property(nonatomic, strong) RCTRootView *rootView;

@end

@implementation SecondViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view.
  self.navigationItem.title = @"VC2";
  [self initViews];
}

- (void)initViews {
  //RN打点捕捉
  RCTSetFatalHandler(^(NSError *error) {
    NSLog(@"RN崩溃:%@", error);
  });
  self.view.backgroundColor = [UIColor whiteColor];
  self.bridge = [[RCTBridge alloc] initWithDelegate:self launchOptions:nil];
  self.rootView = [[RCTRootView alloc] initWithBridge:self.bridge moduleName:@"imihome_rn" initialProperties:nil];
  [self.view addSubview:self.rootView];
}

- (void)viewWillLayoutSubviews {
  [super viewWillLayoutSubviews];
   self.rootView.frame = self.view.frame;
}

- (void)dealloc {
    [self.bridge invalidate];
    [self.rootView.bridge invalidate];
}

#pragma mark - RCTBridgeDelegate
- (NSURL *)sourceURLForBridge:(RCTBridge *)bridge {
//  [RCTBundleURLProvider sharedSettings].jsLocation = @"";
//  [RCTBundleURLProvider sharedSettings].enableDev = YES;
//  return [[RCTBundleURLProvider sharedSettings] jsBundleURLForBundleRoot:@"index"];
  NSURL *url = [[RCTBundleURLProvider sharedSettings] jsBundleURLForBundleRoot:@"index"];
  return url;
}

- (NSArray<id<RCTBridgeModule>> *)extraModulesForBridge:(RCTBridge *)bridge {
    NSArray<id<RCTBridgeModule>> *arr = @[
        [[RCTDevSettings alloc] init],
//        [[RCTAsyncLocalStorage alloc] init],
        [[RCTRedBox alloc] init],
    ];
    return arr;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
