//
//  MemberViewViewController.h
//  WorkoutBuddy
//
//  Created by Oscar G.M on 8/16/15.
//  Copyright (c) 2015 GMStudios. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MemberViewTableViewController.h"



@interface MemberViewViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIView *memberViewTableContainer;
@property (strong,nonatomic) MemberViewTableViewController *memberViewTableVC;
@end
