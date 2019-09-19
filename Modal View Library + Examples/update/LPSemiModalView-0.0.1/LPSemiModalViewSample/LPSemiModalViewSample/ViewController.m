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


@interface ViewController ()

@property (nonatomic, strong) LPSemiModalView *normalModalView;
@property (nonatomic, strong) LPSemiModalView *narrowedModalView;

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
    UILabel *label1;
    UILabel *label2;
    UILabel *label3;
    UILabel *label4;
    
                                                  //  x  y    w   h
    label0=[[UILabel alloc]initWithFrame:CGRectMake(15, 15, 200, 13)];
    label1=[[UILabel alloc]initWithFrame:CGRectMake(58, 50, 150, 40)];//Set frame of label in your viewcontroller.
    label2=[[UILabel alloc]initWithFrame:CGRectMake(58, 90, 150, 40)];
    label3=[[UILabel alloc]initWithFrame:CGRectMake(58, 130, 150, 40)];
    label4=[[UILabel alloc]initWithFrame:CGRectMake(58, 170, 150, 40)];
    
    
    [label1 setText:@"Root Cause"];//Set text in label.
    [label2 setText:@"Impact"];
    [label3 setText:@"Symptoms"];
    [label4 setText:@"Solution"];
    [label0 setText:@"UPDATE"];
    
    [label0 setTextColor:[UIColor colorFromHexString:@"CCCCCC"]];
    [label1 setTextColor:[UIColor blackColor]];//Set text color in label.
    [label2 setTextColor:[UIColor blackColor]];
    [label3 setTextColor:[UIColor blackColor]];
    [label4 setTextColor:[UIColor blackColor]];
    
    [label0 setTextAlignment:NSTextAlignmentLeft];
    [label1 setTextAlignment:NSTextAlignmentLeft];//Set text alignment in label.
    [label2 setTextAlignment:NSTextAlignmentLeft];//Set text alignment in label.
    [label3 setTextAlignment:NSTextAlignmentLeft];
    [label4 setTextAlignment:NSTextAlignmentLeft];
    
    [label1 setBaselineAdjustment:UIBaselineAdjustmentAlignBaselines];//Set line adjustment.
    [label1 setLineBreakMode:NSLineBreakByCharWrapping];//Set linebreaking mode..
   // [label setNumberOfLines:1];//Set number of lines in label.
   
    [self.normalModalView.contentView addSubview:label0];
    [self.normalModalView.contentView addSubview:label1];
    [self.normalModalView.contentView addSubview:label2];
    [self.normalModalView.contentView addSubview:label3];
    [self.normalModalView.contentView addSubview:label4];
    
    
    
    UIImageView *imageview1 = [[UIImageView alloc]
                              initWithFrame:CGRectMake(21, 59, 25, 25)];
    [imageview1 setImage:[UIImage imageNamed:@"one"]];
    [imageview1 setContentMode:UIViewContentModeScaleAspectFit];
    [self.normalModalView.contentView addSubview:imageview1];
    
    UIImageView *imageview2 = [[UIImageView alloc]
                              initWithFrame:CGRectMake(21, 98, 25, 25)];
    [imageview2 setImage:[UIImage imageNamed:@"one"]];
    [imageview2 setContentMode:UIViewContentModeScaleAspectFit];
    [self.normalModalView.contentView addSubview:imageview2];
    
    UIImageView *imageview3 = [[UIImageView alloc]
                               initWithFrame:CGRectMake(21, 140, 25, 25)];
    [imageview3 setImage:[UIImage imageNamed:@"one"]];
    [imageview3 setContentMode:UIViewContentModeScaleAspectFit];
    [self.normalModalView.contentView addSubview:imageview3];
    
    UIImageView *imageview4 = [[UIImageView alloc]
                               initWithFrame:CGRectMake(21, 178, 25, 25)];
    [imageview4 setImage:[UIImage imageNamed:@"one"]];
    [imageview4 setContentMode:UIViewContentModeScaleAspectFit];
    [self.normalModalView.contentView addSubview:imageview4];
    
    
    self.normalModalView.narrowedOff = YES;
    self.narrowedModalView = [[LPSemiModalView alloc] initWithSize:CGSizeMake(self.view.bounds.size.width, 300) andBaseViewController:self];
    self.narrowedModalView.contentView.backgroundColor = [UIColor redColor];
}

@end
