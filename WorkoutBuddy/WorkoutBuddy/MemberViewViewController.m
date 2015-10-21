//
//  MemberViewViewController.m
//  WorkoutBuddy
//
//  Created by Oscar G.M on 8/16/15.
//  Copyright (c) 2015 GMStudios. All rights reserved.
//

#import "MemberViewViewController.h"
@interface MemberViewViewController ()


@end


@implementation MemberViewViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    self.memberViewTableVC = [[MemberViewTableViewController alloc]init];
    [self addChildViewController:self.memberViewTableVC];
    [self.memberViewTableVC didMoveToParentViewController:self];    
    
    
    
    
}

-(void)viewWillAppear:(BOOL)animated{
    
}
-(void)viewDidLayoutSubviews{
    [self.memberViewTableVC.view setFrame:self.memberViewTableContainer.bounds];
    [self.memberViewTableContainer addSubview:self.memberViewTableVC.view];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
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
