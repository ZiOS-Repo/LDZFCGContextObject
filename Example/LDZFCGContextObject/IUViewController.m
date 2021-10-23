//
//  IUViewController.m
//  IU_CGContextObject
//
//  Created by zhuyuhui434@gmail.com on 06/04/2021.
//  Copyright (c) 2021 zhuyuhui434@gmail.com. All rights reserved.
//

#import "IUViewController.h"
#import "CRJDrawGradientColorView.h"
@interface IUViewController ()

@end

@implementation IUViewController

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
