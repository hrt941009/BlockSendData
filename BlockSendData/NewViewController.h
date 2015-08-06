//
//  NewViewController.h
//  BlockSendData
//
//  Created by henyep on 15/8/6.
//  Copyright (c) 2015年 com. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void(^returnTextString)(NSString *strText);
@interface NewViewController : UIViewController
@property (strong, nonatomic)  UITextField *textField;
@property (strong, nonatomic)  UIButton    *btn;
@property(nonatomic,strong)returnTextString textString;
-(void)returnTextFieldString:(returnTextString)text;

@end
