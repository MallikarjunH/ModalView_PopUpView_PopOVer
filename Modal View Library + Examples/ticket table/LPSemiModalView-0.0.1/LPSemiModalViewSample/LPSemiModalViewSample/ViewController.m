//
//  ViewController.m
//  LPSemiModalViewSample
//
//  Created by litt1e-p on 16/3/12.
//  Copyright © 2016年 litt1e-p. All rights reserved.
//

#import "ViewController.h"
#import "LPSemiModalView.h"
#import "UIColor+HexColors.h"
#import "JSCustomCell.h"

@interface ViewController ()<UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) LPSemiModalView *normalModalView;
@property (nonatomic, strong) LPSemiModalView *narrowedModalView;

@property (strong, nonatomic) UITableView *tableView;

@end

@implementation ViewController

- (IBAction)normalModalAc:(UIButton *)sender
{
    [self.normalModalView open];
}

- (IBAction)narrowedModalAc:(id)sender
{
    [self.narrowedModalView open];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"LPSemiModalView";
    
    self.normalModalView = [[LPSemiModalView alloc] initWithSize:CGSizeMake(self.view.bounds.size.width, 230) andBaseViewController:self];
  //  self.normalModalView.contentView.backgroundColor = [UIColor yellowColor];
    
    UILabel *label0;
                                                  //  x  y    w   h
    label0=[[UILabel alloc]initWithFrame:CGRectMake(15, 15, 200, 13)];
    [label0 setText:@"..."];
    [label0 setTextColor:[UIColor colorFromHexString:@"CCCCCC"]];
    [label0 setTextAlignment:NSTextAlignmentLeft];
    
    [self.normalModalView.contentView addSubview:label0];
    
    
    
    // init table view
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    
    // must set delegate & dataSource, otherwise the the table will be empty and not responsive
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    _tableView.backgroundColor = [UIColor cyanColor];
    
    // add to canvas
    [self.normalModalView.contentView addSubview:_tableView];
    
    
    // creating header
        UIView *headerView = [[UIView alloc] initWithFrame:CGRectMake(1, 50, 276, 45)];
        headerView.backgroundColor = [UIColor colorFromHexString:@"EFEFF4"];
    
        UILabel *labelView = [[UILabel alloc] initWithFrame:CGRectMake(8, 13, 300, 24)];
        labelView.text = @"Asssociated Tickets";
        labelView.textColor = [UIColor colorFromHexString:@"CCCCCC"];

        [headerView addSubview:labelView];
        _tableView.tableHeaderView = headerView;
    
    // end creating header
    
    
    self.normalModalView.narrowedOff = YES;
    self.narrowedModalView = [[LPSemiModalView alloc] initWithSize:CGSizeMake(self.view.bounds.size.width, 300) andBaseViewController:self];
    self.narrowedModalView.contentView.backgroundColor = [UIColor redColor];
}




#pragma mark - UITableViewDataSource
// number of section(s), now I assume there is only 1 section
- (NSInteger)numberOfSectionsInTableView:(UITableView *)theTableView
{
    return 1;
}

// number of row in the section, I assume there is only 1 row
- (NSInteger)tableView:(UITableView *)theTableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}


// the cell will be returned to the tableView
- (UITableViewCell *)tableView:(UITableView *)theTableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"HistoryCell";
    
    // Similar to UITableViewCell, but
    JSCustomCell *cell = (JSCustomCell *)[theTableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell == nil) {
        cell = [[JSCustomCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    // Just want to test, so I hardcode the data
    cell.textLabel.text = @"Mallikarjun";
    
    return cell;
}

#pragma mark - UITableViewDelegate
// when user tap the row, what action you want to perform
- (void)tableView:(UITableView *)theTableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"selected %ld row", (long)indexPath.row);
}


// creating header programatically

//- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
//{
//
//    return @"";
//}
//
////- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
////{
////
////    UIView *headerView = [[UIView alloc] initWithFrame:CGRectMake(1, 50, 276, 30)];
////    headerView.backgroundColor = [UIColor colorWithRed:235/255.0f green:235/255.0f blue:235/255.0f alpha:1.0f];
////
////    UILabel *labelView = [[UILabel alloc] initWithFrame:CGRectMake(4, 5, 276, 24)];
////    labelView.text = @"hello";
////
////    [headerView addSubview:labelView];
////    _tableView.tableHeaderView = headerView;
//
//
////OR OR for image
//
////    // return [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"assets.png"]];
////}
//
//- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
//{
//
//    return 55.0;
//}

// endddddd creating header programatically

@end
