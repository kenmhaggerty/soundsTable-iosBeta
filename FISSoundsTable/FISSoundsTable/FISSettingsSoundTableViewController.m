//
//  FISSettingsSoundTableViewController.m
//  FISSoundsTable
//
//  Created by Ken M. Haggerty on 2/5/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

#import "FISSettingsSoundTableViewController.h"
#import "FISSwitchTableViewCell.h"

@interface FISSettingsSoundTableViewController ()

@end

@implementation FISSettingsSoundTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    if (section == 0) return 2;
    
    if (section == 1) return 2;
    
    if (section == 2) return 3;
    
    return 0;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    if (section == 0) return @"VIBRATE";
    
    if (section == 1) return @"RINGER AND ALERTS";
    
    if (section == 2) return @"SOUNDS AND VIBRATION PATTERNS";
    
    return nil;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (indexPath.section == 0)
    {
        FISSwitchTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"switchCell" forIndexPath:indexPath];
        if (indexPath.row == 0)
        {
            [cell.textLabel setText:@"Vibrate on Ring"];
            return cell;
        }
        else if (indexPath.row == 1)
        {
            [cell.textLabel setText:@"Vibrate on Silent"];
            return cell;
        }
    }
    else if (indexPath.section == 1)
    {
        if (indexPath.row == 0)
        {
            UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"sliderCell" forIndexPath:indexPath];
            return cell;
        }
        else if (indexPath.row == 1)
        {
            FISSwitchTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"switchCell" forIndexPath:indexPath];
            [cell.textLabel setText:@"Change with Buttons"];
            return cell;
        }
    }
    else if (indexPath.section == 2)
    {
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"rightDetailCell" forIndexPath:indexPath];
        if (indexPath.row == 0)
        {
            [cell.textLabel setText:@"Ringtone"];
            [cell.detailTextLabel setText:@"Trill"];
            return cell;
        }
        else if (indexPath.row == 1)
        {
            [cell.textLabel setText:@"Text Tone"];
            [cell.detailTextLabel setText:@"Glass"];
            return cell;
        }
        else if (indexPath.row == 2)
        {
            [cell.textLabel setText:@"New Voicemail"];
            [cell.detailTextLabel setText:@"Tri-tone"];
            return cell;
        }
    }
    
    return nil;
}

- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
{
    if (section == 1) return @"The volume of the ringer and alerts can be adjusted using the volume buttons.";
    
    return nil;
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
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
