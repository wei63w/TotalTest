//
//  WYCRightBayViewController.m
//  TotalTest
//
//  Created by genilex3 on 16/7/21.
//  Copyright © 2016年 wei63w. All rights reserved.
//

#import "WYCRightBayViewController.h"

@interface WYCRightBayViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;

@end

@implementation WYCRightBayViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    [self addTableView];
    
}

-(void)addTableView{
    self.tableView = [[UITableView alloc]initWithFrame:[UIScreen mainScreen].bounds style:UITableViewStylePlain];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.view addSubview:self.tableView];
}


#pragma mark delegate

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:CellIdentifier];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        cell.selectionStyle = UITableViewCellSelectionStyleGray;
        [cell.textLabel setFont:[UIFont systemFontOfSize:16.0]];
        [cell.textLabel setTextColor:[UIColor blackColor]];
        
        
        cell.detailTextLabel.minimumScaleFactor = 0.6f;
        cell.detailTextLabel.adjustsFontSizeToFitWidth = YES;
        [cell.detailTextLabel setFont:[UIFont systemFontOfSize:15.0]];
        [cell.detailTextLabel setTextColor:[UIColor lightGrayColor]];
    }
    cell.textLabel.text = @"你好我好大家好";
    return cell;
}



@end
