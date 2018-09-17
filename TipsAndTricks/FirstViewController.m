//
//  FirstViewController.m
//  TipsAndTricks
//
//  Created by Sergiu Todirascu on 3/5/18.
//  Copyright © 2018 Sergiu Todirascu. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()
@property (weak, nonatomic) IBOutlet UIView *containerView;

@end

@implementation FirstViewController

- (void)viewDidLoad {
  [super viewDidLoad];

  UIView *welcomeView = [[NSBundle mainBundle] loadNibNamed:@"WelcomeView" owner:self options:nil].firstObject;
  [self.containerView addSubview:welcomeView];
  welcomeView.frame = self.containerView.bounds;
  welcomeView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
}

- (IBAction)raiseException {
  id a = [NSArray array][1];
}

@end
