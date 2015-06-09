//
//  ViewController.m
//  ImagePickerTest
//
//  Created by mac on 15/6/4.
//  Copyright (c) 2015年 Cloudox. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)changeAvata:(id)sender {
    //创建一个UIActionSheet，其中destructiveButton会红色显示，可以用在一些重要的选项
    UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:@"更换头像" delegate:self cancelButtonTitle:@"取消" destructiveButtonTitle:nil otherButtonTitles:@"拍照", @"从相册选择", nil];
    
    //actionSheet风格，感觉也没什么差别- -
    actionSheet.actionSheetStyle = UIActionSheetStyleDefault;//默认风格，灰色背景，白色文字
//    actionSheet.actionSheetStyle = UIActionSheetStyleAutomatic;
//    actionSheet.actionSheetStyle = UIActionSheetStyleBlackTranslucent;
//    actionSheet.actionSheetStyle = UIActionSheetStyleBlackOpaque;//纯黑背景，白色文字
    
    //如果想再添加button
//    [actionSheet addButtonWithTitle:@"其他方式"];
    
    //更改ActionSheet标题
//    actionSheet.title = @"选择照片";
    
    //获取按钮总数
    NSString *num = [NSString stringWithFormat:@"%ld", actionSheet.numberOfButtons];
    NSLog(@"%@", num);
    
    //获取某个索引按钮的标题
    NSString *btnTitle = [actionSheet buttonTitleAtIndex:1];
    NSLog(@"%@", btnTitle);
    
    [actionSheet showInView:self.view];
    
    
}

#pragma mark - UIActionSheetDelegate
//根据被点击的按钮做出反应，0对应destructiveButton，之后的button依次排序
- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex {
    if (buttonIndex == 1) {
        NSLog(@"拍照");
    }
    else if (buttonIndex == 2) {
        NSLog(@"相册");
    }
}

//取消ActionSheet时调用
- (void)actionSheetCancel:(UIActionSheet *)actionSheet {
    
}

//将要显示ActionSheet时调用
- (void)willPresentActionSheet:(UIActionSheet *)actionSheet {
    
}

//已经显示ActionSheet是调用
-(void)didPresentActionSheet:(UIActionSheet *)actionSheet {
    
}

//ActionSheet已经消失时调用
- (void)actionSheet:(UIActionSheet *)actionSheet didDismissWithButtonIndex:(NSInteger)buttonIndex {
    
}

//ActionSheet即将消失时调用
- (void)actionSheet:(UIActionSheet *)actionSheet willDismissWithButtonIndex:(NSInteger)buttonIndex {
    
}

@end
