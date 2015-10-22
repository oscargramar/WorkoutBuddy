//
//  Member.m
//  WorkoutBuddy
//
//  Created by Oscar G.M on 10/21/15.
//  Copyright © 2015 GMStudios. All rights reserved.
//

#import "Member.h"

@implementation Member

-(void)setProfilePic:(UIImage *)profilePic{
    self.profilePic = profilePic;
}

-(void)setRoutineDescription:(NSString *)routineDescription{
    self.routineDescription = routineDescription;
}
-(void)setSummary:(NSString *)summary{
    self.summary = summary;
}
-(void)setLookingForDescription:(NSString *)lookingForDescription{
    self.lookingForDescription = lookingForDescription;
}

-(id)createMemberWith:(NSString *)summary andDescription:(NSString *)lookingForDescription andRoutine:(NSString *)routineDescription andProfilePic:(UIImage *)profilePic{
    
    //NSLog(@"here");
    _profilePic = profilePic;
    _routineDescription = routineDescription;
    _lookingForDescription = lookingForDescription;
    _summary = summary;

    
    
    
    
    return self;
}


@end
