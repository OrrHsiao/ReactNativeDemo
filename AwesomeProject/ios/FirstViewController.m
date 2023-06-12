//
//  FirstViewController.m
//  AwesomeProject
//
//  Created by OrrHsiao on 2023/6/9.
//

#import "FirstViewController.h"
#import "SecondViewController.h"

@interface FirstViewController ()

@property (nonatomic, strong)UIButton *btn;

@end

@implementation FirstViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view.
  self.navigationItem.title = @"VC1";
  [self initViews];
}

- (void)initViews {
  self.view.backgroundColor = [UIColor whiteColor];
  [self.view addSubview:self.btn];
}

- (void)viewWillLayoutSubviews {
  [super viewWillLayoutSubviews];
  self.btn.bounds = CGRectMake(0, 0, 100, 100);
  self.btn.center = self.view.center;
}

- (void)btnClick {
  SecondViewController *vc = [[SecondViewController alloc] init];
  [self.navigationController pushViewController:vc animated:YES];
}

- (UIButton *)btn {
  if (!_btn) {
    _btn = [UIButton buttonWithType:UIButtonTypeSystem];
    [_btn setTitle:@"push" forState:UIControlStateNormal];
    [_btn setBackgroundColor:[UIColor lightGrayColor]];
    [_btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
  }
  return _btn;
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
