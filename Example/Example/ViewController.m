//
//  ViewController.m
//  Example
//
//  Created by apple on 14/12/23.
//  Copyright (c) 2014年 goalijun. All rights reserved.
//

#import "ViewController.h"

#import "LJPopMenu.h"


@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *oneLabel;
@property (weak, nonatomic) IBOutlet UILabel *twoLabel;
@property (weak, nonatomic) IBOutlet UILabel *threeLabel;
@property (weak, nonatomic) IBOutlet UILabel *fourLabel;


- (IBAction)firstButton:(id)sender;
- (IBAction)secondBUtton:(id)sender;
- (IBAction)thirdBUtton:(id)sender;
- (IBAction)fourthBUtton:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}



- (IBAction)firstButton:(id)sender {
    UIView *view = [[UIView alloc]init];
    view.backgroundColor = [UIColor whiteColor];
    view.size = CGSizeMake(80, 40);
    /**
     *  点击第一个按钮，并传入一个控件即第二个Label，和一个下拉框里面的内容（view），就会生成一个下拉框
     */
    [LJPopMenu popFromView:self.oneLabel content:view dismiss:nil];
    
}

- (IBAction)secondBUtton:(id)sender {
    UITableViewController *tableController = [[UITableViewController alloc]init];
    tableController.view.autoresizingMask = NO ;
    tableController.view.size = CGSizeMake(100,50);
    /**
     *  点击第一个按钮，并传入一个控件即第一个Label，和一个下拉框里面的内容（控制器），就会生成一个下拉框
     */
    [LJPopMenu popFromView:self.twoLabel contentVc:tableController dismiss:nil];
}

- (IBAction)thirdBUtton:(id)sender {
    UIView *view = [[UIView alloc]init];
    view.backgroundColor = [UIColor whiteColor];
    view.size = CGSizeMake(80, 40);
    /**
     *  点击第一个按钮，并传入一个控件即第三个Label的区域，和一个下拉框里面的内容（VIEW），就会生成一个下拉框
     */
    [LJPopMenu popFromRect:self.threeLabel.frame inView:self.view content:view dismiss:nil];
     NSLog(@"3333");
    
}

- (IBAction)fourthBUtton:(id)sender {
   UITableViewController *tableController = [[UITableViewController alloc]init];
    tableController.view.autoresizingMask = NO ;
    tableController.view.size = CGSizeMake(100,50);
    /**
     *  点击第四个按钮，并传入一个控件即第四个Label的区域，和一个下拉框里面的内容（控制器），就会生成一个下拉框
     */
   [LJPopMenu popFromRect:self.fourLabel.frame inView:self.view contentVc:tableController dismiss:nil];
}
@end
