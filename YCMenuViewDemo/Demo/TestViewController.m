//
//  TestViewController.m
//  DOPdemo
//
//  Created by 蔡亚超 on 2018/8/29.
//  Copyright © 2018年 tanyang. All rights reserved.
//

#import "TestViewController.h"
#import "YCMenuView.h"
@interface TestViewController ()
@property(nonatomic,strong)NSArray      *arr;
@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImage *image = [UIImage imageNamed:@"ic_filter_category_0"];
    // Do any additional setup after loading the view.
    YCMenuAction *action = [YCMenuAction actionWithTitle:@"首页" image:image handler:^(YCMenuAction *action) {
        NSLog(@"点击了%@",action.title);
    }];
    YCMenuAction *action1 = [YCMenuAction actionWithTitle:@"个人" image:image handler:^(YCMenuAction *action) {
        NSLog(@"点击了%@",action.title);
    }];
    YCMenuAction *action2 = [YCMenuAction actionWithTitle:@"最新" image:image handler:^(YCMenuAction *action) {
        NSLog(@"点击了%@",action.title);
    }];
    YCMenuAction *action3 = [YCMenuAction actionWithTitle:@"搜索页" image:image handler:^(YCMenuAction *action) {
        NSLog(@"点击了%@",action.title);
    }];
    YCMenuAction *action4 = [YCMenuAction actionWithTitle:@"新闻页" image:image handler:^(YCMenuAction *action) {
        NSLog(@"点击了%@",action.title);
    }];
    
    self.arr = @[action,action1,action2,action3,action4,action,action1,action2];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    UITouch *touch = touches.anyObject;
    CGPoint P = [touch locationInView:self.view];
    
    // 创建
    YCMenuView *view = [YCMenuView menuWithActions:self.arr width:140 atPoint:P];

    // 自定义设置
//    view.menuColor = [UIColor whiteColor];
//    view.separatorColor = [UIColor whiteColor];
    view.maxDisplayCount = 20;
//    view.offset = 0;
//    view.textColor = [UIColor whiteColor];
//    view.textFont = [UIFont boldSystemFontOfSize:18];
    view.menuCellHeight = 60;
//    view.dismissOnselected = YES;
//    view.dismissOnTouchOutside = YES;

    // 显示
    [view show];
    
    
}
- (IBAction)buttonItemClick:(UIBarButtonItem *)sender {
    YCMenuView *view = [YCMenuView menuWithActions:self.arr width:140 relyonView:sender];
    view.maxDisplayCount = 10;

    [view show];

    
}
- (IBAction)button1Click:(UIButton *)sender {
    YCMenuView *view = [YCMenuView menuWithActions:self.arr width:140 relyonView:sender];
    view.maxDisplayCount = 10;

    [view show];
}
- (IBAction)button2Click:(UIButton *)sender {
    YCMenuView *view = [YCMenuView menuWithActions:self.arr width:140 relyonView:sender];
    view.maxDisplayCount = 10;

    [view show];
}
- (IBAction)button3Click:(UIButton *)sender {
    YCMenuView *view = [YCMenuView menuWithActions:self.arr width:140 relyonView:sender];
    view.maxDisplayCount = 10;

    [view show];
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
