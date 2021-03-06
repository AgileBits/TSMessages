//
//  TSSecondViewController.m
//  Example
//
//  Created by Felix Krause on 13.04.13.
//  Copyright (c) 2013 Toursprung. All rights reserved.
//

#import "TSSecondViewController.h"
#import "TSMessage.h"

@implementation TSSecondViewController


- (IBAction)didTapError:(id)sender
{
    NSString *notificationTitle = NSLocalizedString(@"Something failed", nil);
    NSString *notificationDescription = (self.descriptionToggle.on ?
                                         NSLocalizedString(@"The internet connection seems to be down. Please check that!", nil) :
                                         nil);
    
    [TSMessage showNotificationInViewController:self
                                      withTitle:notificationTitle
                                    withMessage:notificationDescription
                                       withType:kNotificationError];
}

- (IBAction)didTapWarning:(id)sender
{
    NSString *notificationTitle = NSLocalizedString(@"Some random warning", nil);
    NSString *notificationDescription = (self.descriptionToggle.on ?
                                         NSLocalizedString(@"Look out! Something is happening there!", nil) :
                                         nil);
    
    [TSMessage showNotificationInViewController:self
                                      withTitle:notificationTitle
                                    withMessage:notificationDescription
                                       withType:kNotificationWarning];
}

- (IBAction)didTapMessage:(id)sender
{
    NSString *notificationTitle = NSLocalizedString(@"Tell the user something", nil);
    NSString *notificationDescription = (self.descriptionToggle.on ?
                                         NSLocalizedString(@"This is some neutral notification.", nil) :
                                         nil);
    
    [TSMessage showNotificationInViewController:self
                                      withTitle:notificationTitle
                                    withMessage:notificationDescription
                                       withType:kNotificationMessage];
}

- (IBAction)didTapSuccess:(id)sender
{
    NSString *notificationTitle = NSLocalizedString(@"Success", nil);
    NSString *notificationDescription = (self.descriptionToggle.on ?
                                         NSLocalizedString(@"Some task was successfully completed!", nil) :
                                         nil);
    
    [TSMessage showNotificationInViewController:self
                                      withTitle:notificationTitle
                                    withMessage:notificationDescription
                                       withType:kNotificationSuccessful];
}

@end
