//
//  MYViewController.m
//  FullScreenStudy
//
//  Created by adachi yuichi on 2014/08/30.
//  Copyright (c) 2014年 yad. All rights reserved.
//

#import "MYViewController.h"

@interface MYViewController ()

@property (nonatomic) BOOL fullscreen;

- (IBAction)switchButtonDidTouchUpInside:(id)sender;

@end

@implementation MYViewController

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        _fullscreen = NO;
    }
    return self;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)switchButtonDidTouchUpInside:(id)sender
{
    if (self.fullscreen) {
        [[UIApplication sharedApplication] setStatusBarHidden:NO
                                                withAnimation:UIStatusBarAnimationSlide];
        [self.navigationController setNavigationBarHidden:NO
                                                 animated:YES];
        self.fullscreen = NO;
    } else {
        [self.navigationController setNavigationBarHidden:YES
                                                 animated:YES];
        [[UIApplication sharedApplication] setStatusBarHidden:YES
                                                withAnimation:UIStatusBarAnimationSlide];
        self.fullscreen = YES;
    }
}

@end
