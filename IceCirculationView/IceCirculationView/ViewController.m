//
//  ViewController.m
//  IceCirculationView
//
//  Created by shoujizhifu on 2017/5/27.
//  Copyright © 2017年 hairong. All rights reserved.
//

#import "ViewController.h"
#import "IceCirculationView.h"

@interface ViewController ()<IceCirculationViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor orangeColor];
    IceCirculationView *iceCircleView = [[IceCirculationView alloc] initWithFrame:CGRectMake(0, 64, self.view.width, 200) Images:@[@"https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=3424226810,3788025634&fm=23&gp=0.jpg", @"https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1984060613,3473764934&fm=23&gp=0.jpg", @"https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=2586472413,677685330&fm=23&gp=0.jpg", @"https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=2261844264,1398222573&fm=23&gp=0.jpg", @"https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=2801782160,3456854724&fm=23&gp=0.jpg", @"https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=2348585824,784672926&fm=23&gp=0.jpg", @"https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=967919111,969882314&fm=23&gp=0.jpg"]];
    iceCircleView.delegate = self;
    iceCircleView.touchEnlarge = YES;
    [self.view addSubview:iceCircleView];
}

-(void)iceCirculationView:(IceCirculationView *)iceCirculationView whichPicureBeChanged:(NSInteger)index {
    NSLog(@"点击了第%d张图片", index);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
