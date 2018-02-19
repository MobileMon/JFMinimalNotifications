

#import "DetailWithoutViewController.h"
#import "JFMinimalNotification.h"


@interface DetailWithoutViewController ()

@end

@implementation DetailWithoutViewController

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    JFMinimalNotification* notification;
    notification = [JFMinimalNotification notificationWithStyle:JFMinimalNotificationStyleSuccess title:@"Testing" subTitle:@"Testing 1 2 3" dismissalDelay:2.0];
    notification.edgePadding = UIEdgeInsetsMake(10, 0, 0, 0);
    [self.navigationController.view addSubview:notification];
    notification.presentFromTop = YES;
    notification.delegate = self;
    [notification show];
}

- (IBAction)dismissAndShowNotificationAfterDelayAction:(id)sender {
    
    // This is to simulate the view being dismissed, and therby deallocated, before the notification is shown. This causes a similar crash as reported here https://github.com/atljeremy/JFMinimalNotifications/issues/10
    [self.navigationController popViewControllerAnimated:YES];
    
}




@end

