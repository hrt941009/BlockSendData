//
//  ViewController.m
//  BlockSendData
//
//  Created by henyep on 15/8/6.
//  Copyright (c) 2015年 com. All rights reserved.
//

#import "ViewController.h"
#import "NewViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.label=[[UILabel alloc]initWithFrame:CGRectMake(100, 100, 120, 40)];
    self.label.backgroundColor=[UIColor redColor];
    [self.view addSubview:self.label];
    self.btn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    _btn.frame=CGRectMake(100, 180, 120, 40);
    _btn.backgroundColor=[UIColor grayColor];
    [_btn setTitle:@"push" forState:UIControlStateNormal];
    [_btn addTarget:self action:@selector(pushTest:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_btn];
}
-(void)pushTest:(UIButton*)btn{
    NewViewController *vc=[[NewViewController alloc]init];
    [vc returnTextFieldString:^(NSString *strText) {
        self.label.text=strText;
    }];
    [self presentViewController:vc animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
