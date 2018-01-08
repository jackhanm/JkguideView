//
//  ViewController.m
//  JKguideView
//
//  Created by 余浩 on 2018/1/8.
//  Copyright © 2018年 余浩. All rights reserved.
//

#import "ViewController.h"
#import "JKguideView.h"
@interface ViewController ()
@property (nonatomic, strong) JKguideView *introductionView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    NSArray *coverImageNames = @[@"img_index_01txt", @"img_index_02txt", @"img_index_03txt"];
    NSArray *backgroundImageNames = @[@"img_index_01bg", @"img_index_02bg", @"img_index_03bg"];
    
    self.introductionView = [[JKguideView alloc] initWithCoverImageNames:coverImageNames backgroundImageNames:backgroundImageNames];
    [self.view addSubview:self.introductionView.view];
    
     __weak ViewController *weakSelf = self;
    self.introductionView.didSelectedEnter = ^() {
         weakSelf.introductionView = nil;
    };
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
