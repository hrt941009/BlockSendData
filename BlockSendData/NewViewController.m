//
//  NewViewController.m
//  BlockSendData
//
//  Created by henyep on 15/8/6.
//  Copyright (c) 2015年 com. All rights reserved.
//

#import "NewViewController.h"

@interface NewViewController ()

@end

@implementation NewViewController
-(void)returnTextFieldString:(returnTextString)text
{
    self.textString=text;
}
-(void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    if (self.textString!=nil) {
        self.textString(self.textField.text);
    }
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor=[UIColor lightTextColor];
    self.textField=[[UITextField alloc]initWithFrame:CGRectMake(100, 100, 120, 40)];
    self.textField.backgroundColor=[UIColor redColor];
    [self.view addSubview:self.textField];
    self.btn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    _btn.frame=CGRectMake(100, 180, 120, 40);
    _btn.backgroundColor=[UIColor grayColor];
    [_btn setTitle:@"dismiss" forState:UIControlStateNormal];
    [_btn addTarget:self action:@selector(dismissTest:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_btn];
}

-(void)dismissTest:(UIButton*)btn{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
