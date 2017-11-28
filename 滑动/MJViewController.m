//
//  MJViewController.m
//  滑动
//
//  Created by 古振坤 on 2017/11/27.
//  Copyright © 2017年 Snail-zk. All rights reserved.
//

#import "MJViewController.h"

@interface MJViewController ()
{
    UIScrollView  *_scroollView;
}
@end

@implementation MJViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIScrollView  *scrollerV = [[UIScrollView alloc] init ];
    scrollerV.frame = CGRectMake(0, 0, 250, 250);
    scrollerV.backgroundColor  = [UIColor grayColor];
    [self.view addSubview: scrollerV];
    //创建图片
    UIImageView  *imageView = [[UIImageView alloc]init];
    imageView.image = [UIImage imageNamed:@"5"];
    CGFloat  imgW = imageView.image.size.width;
    CGFloat imgH = imageView.image.size.height;
    imageView.frame = CGRectMake(0, 0, imgW, imgH);
    [scrollerV addSubview:imageView];
    //设置UISdrollView的滚动范围
    scrollerV.contentSize = imageView.image.size;
    //隐藏水平滚动条
    scrollerV.showsVerticalScrollIndicator = NO;
    scrollerV.showsHorizontalScrollIndicator = NO;
    // 用来记录scrollview滚动的位置
    //    scrollView.contentOffset = ;
    
    // 去掉弹簧效果
    //    scrollView.bounces = NO;
    
      // 增加额外的滚动区域（逆时针，上、左、下、右）
    // top  left  bottom  right
       scrollerV.contentInset = UIEdgeInsetsMake(20, 20, 20, 20);
    _scroollView = scrollerV;
    
  
    
    
    
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
