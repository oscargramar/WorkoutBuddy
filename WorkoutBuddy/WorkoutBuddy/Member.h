//
//  Member.h
//  WorkoutBuddy
//
//  Created by Oscar G.M on 10/21/15.
//  Copyright © 2015 GMStudios. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Member : NSObject
@property (assign,nonatomic) NSString *summary;
@property (assign,nonatomic) NSString *lookingForDescription;
@property (assign,nonatomic) NSString *routineDescription;
@property (assign,nonatomic) UIImage *profilePic;
-(id) createMemberWith:(NSString *)summary andDescription:(NSString*)lookingForDescription andRoutine:(NSString*)routineDescription andProfilePic:(UIImage*)profilePic;


@end
