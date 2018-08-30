# YCMenuView
a popup menu which can be highly customized.(一个可以根据关联点和关联视图弹出的菜单，类似QQ导航栏右侧菜单。可满足高度自定义需求。)

![image](https://github.com/WellsYC/YCMenuView/blob/master/menuView.gif)


## Usage


**Method:**  using Cocoapods

``pod 'YCMenuView'``

then

```objective-c
#import <YCMenuView.h>
```

**Method2**: moving ``YCMenuViewCompont``folder into your project.


## Example

```
- (IBAction)buttonItemClick:(UIBarButtonItem *)sender {

    // 创建YCMenuAction
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

    //  创建YCMenuView(根据关联点或者关联视图)
    YCMenuView *view = [YCMenuView menuWithActions:self.arr width:140 relyonView:sender];
    
    // 自定义设置
    //    view.menuColor = [UIColor whiteColor];
    //    view.separatorColor = [UIColor whiteColor];
    //    view.maxDisplayCount = 5;
    //    view.offset = 0;
    //    view.textColor = [UIColor whiteColor];
    //    view.textFont = [UIFont boldSystemFontOfSize:18];
    //    view.menuCellHeight = 60;
    //    view.dismissOnselected = YES;
    //    view.dismissOnTouchOutside = YES;
    
    // 显示
    [view show];


}
```

