//
//  WYCMainViewController.m
//  TotalTest
//
//  Created by genilex3 on 16/7/20.
//  Copyright © 2016年 wei63w. All rights reserved.
//

#import "WYCMainViewController.h"

#import "STNavBarView.h"

@interface WYCMainViewController ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation WYCMainViewController{
    UITableView *leftTableView;
    UITableView *rightTableView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
   
    
    UIImage *img = [self reSizeImage:[UIImage imageNamed:@"bkg"] toSize:[UIScreen mainScreen].bounds.size];
    
    [self.view setBackgroundColor:[UIColor colorWithPatternImage:img]];
    

    
    STNavBarView *navbar = [[STNavBarView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, [STNavBarView barSize].width, [STNavBarView barSize].height)];
    [navbar setBackgroundColor:[UIColor whiteColor]];
    [navbar setLeftBtn:  nil];
    [navbar setTitle:@"首页"];
    [self.view addSubview:navbar];

    
    
    
    
    
    
    
    
    leftTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 20, self.leftContentView.frame.size.width, self.leftContentView.frame.size.height-20)];
    leftTableView.backgroundColor = [UIColor clearColor];
    leftTableView.tableFooterView = leftTableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
    leftTableView.dataSource = self;
    leftTableView.delegate = self;
    [self.leftContentView addSubview:leftTableView];
    
    
    /**
     省去右侧栏
     */
//    rightTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 20, self.leftContentView.frame.size.width, self.leftContentView.frame.size.height-20)];
//    rightTableView.backgroundColor = [UIColor clearColor];
//    rightTableView.tableFooterView = leftTableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
//    rightTableView.dataSource = self;
//    rightTableView.delegate = self;
//    [self.rightContentView addSubview:rightTableView];
    
    
}
/**
 *  修改图片大小
 */
- (UIImage *)reSizeImage:(UIImage *)image toSize:(CGSize)reSize

{
    UIGraphicsBeginImageContext(CGSizeMake(reSize.width, reSize.height));
    [image drawInRect:CGRectMake(0, 0, reSize.width, reSize.height)];
    UIImage *reSizeImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return reSizeImage;
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    if (cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
        cell.backgroundColor = [UIColor clearColor];
        cell.textLabel.textColor = [UIColor whiteColor];
    }
    
    cell.textLabel.text = @"Item";
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    [self closeSideView:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}































@end
