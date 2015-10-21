//
//  MemberViewTableViewController.m
//  WorkoutBuddy
//
//  Created by Oscar G.M on 8/16/15.
//  Copyright (c) 2015 GMStudios. All rights reserved.
//

#import "MemberViewTableViewController.h"

@interface MemberViewTableViewController ()

@end

@implementation MemberViewTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.displayedMemberArray = [[NSMutableArray alloc]init];

    self.tableView.delegate = self;
    self.tableView.dataSource = self;
   
    [self fetchMemberData];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



#pragma mark - Fetching member data





-(void)fetchMemberData{
//    UIImage *image = [UIImage imageNamed:@"husky.jpg"];
//    NSData *imageData = UIImageJPEGRepresentation(image,0.5f);
//    PFFile *file = [PFFile fileWithName:@"profilePic" data:imageData];
//
//    
//    
//    
//    PFObject *userPhoto = [PFObject objectWithClassName:@"MemberData"];
//    userPhoto[@"Summary"] = @"I'm trying to bulk";
//    userPhoto[@"AvatarFile"] = file;
//    userPhoto[@"RoutineDescription"] = @"I lift 5 times a week";
//    userPhoto[@"LookingForDescription"] = @"A gym buddy";
//    [userPhoto saveInBackground];
    
    
    PFQuery *query = [PFQuery queryWithClassName:@"MemberData"];
    [query getFirstObjectInBackgroundWithBlock:^(PFObject *object, NSError *error) {
        if (!object) {
            NSLog(@"The getFirstObject request failed.");
        } else {
            // The find succeeded.
            NSLog(@"Successfully retrieved the object.");
            PFFile *userPic = object[@"AvatarFile"];
            [userPic getDataInBackgroundWithBlock:^(NSData * _Nullable data, NSError * _Nullable error) {
                                
                if(!error){
                    
                    dispatch_async(dispatch_get_main_queue(), ^{
                        [self.displayedMemberArray addObject:data];
                        [self.tableView reloadData];

                    });
                    
                }
                
                

            }];
            
        }
    }];
    
}






#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return 10;
}




- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifier = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if(cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
        }
    
    if([self.displayedMemberArray count] !=0 ){
        cell.imageView.image = [UIImage imageWithData:([self.displayedMemberArray objectAtIndex:0])];
    }
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;

    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Table view delegate

// In a xib-based application, navigation from a table can be handled in -tableView:didSelectRowAtIndexPath:
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    // Navigation logic may go here, for example:
    // Create the next view controller.
    <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:<#@"Nib name"#> bundle:nil];
    
    // Pass the selected object to the new view controller.
    
    // Push the view controller.
    [self.navigationController pushViewController:detailViewController animated:YES];
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
