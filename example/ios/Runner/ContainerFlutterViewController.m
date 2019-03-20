//
//  ContainerFlutterViewController.m
//  Runner
//
//  Created by lianjia on 2019/3/20.
//  Copyright © 2019 The Chromium Authors. All rights reserved.
//

#import "ContainerFlutterViewController.h"

@interface ContainerFlutterViewController ()

@end

@implementation ContainerFlutterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"事件" style:UIBarButtonItemStylePlain target:self action:@selector(sendPipeEvent)];
}

- (void)sendPipeEvent {
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
