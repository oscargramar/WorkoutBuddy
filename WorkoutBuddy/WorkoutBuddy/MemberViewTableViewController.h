//
//  MemberViewTableViewController.h
//  WorkoutBuddy
//
//  Created by Oscar G.M on 8/16/15.
//  Copyright (c) 2015 GMStudios. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>
#import <ParseUI/ParseUI.h>
#import "Member.h"

@interface MemberViewTableViewController : PFQueryTableViewController
@property (nonatomic) NSMutableArray *displayedMemberArray;



@end
