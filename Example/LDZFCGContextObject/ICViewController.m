//
//  ICViewController.m
//  LDZFCGContextObject
//
//  Created by zhuyuhui434@gmail.com on 10/23/2021.
//  Copyright (c) 2021 zhuyuhui434@gmail.com. All rights reserved.
//

#import "ICViewController.h"
#import "CRJDrawGradientColorView.h"

@interface ICViewController ()

@end

@implementation ICViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    CRJDrawGradientColorView *view = [[CRJDrawGradientColorView alloc] initWithFrame:CGRectMake(10, 100, self.view.frame.size.width - 20 , 200)];
    view.layer.borderColor = [UIColor redColor].CGColor;
    view.layer.borderWidth = 1;
    [self.view addSubview:view];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
