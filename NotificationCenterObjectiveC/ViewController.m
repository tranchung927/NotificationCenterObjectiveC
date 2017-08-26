//
//  ViewController.m
//  NotificationCenterObjectiveC
//
//  Created by Chung Sama on 8/25/17.
//  Copyright © 2017 Chung Sama. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic)IBOutlet UILabel *nameLabel;

@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(result:) name:@"name" object:nil];
}

-(void)result:(NSNotification *) notification{
    NSString *name = notification.object;
    self.nameLabel.text = name;
}


-(void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}
@end
