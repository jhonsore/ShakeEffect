//
//  ViewController.m
//  ShakeEffect
//
//  Created by ios on 02/03/15.
//  Copyright (c) 2015 Jhonsore. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    //bt enviar
    UIColor *bgColor = [UIColor colorWithRed:0.0/255 green:153.0/255 blue:153.0/255 alpha:1];
    UIButton *btEntrar = [UIButton buttonWithType:UIButtonTypeCustom];
    btEntrar.frame = CGRectMake(([UIScreen mainScreen].bounds.size.width-300)/2, 200, 300, 50);
    [btEntrar setTitle:@"ENTRAR" forState:UIControlStateNormal];
    [btEntrar.titleLabel setTextAlignment: NSTextAlignmentCenter];
    btEntrar.backgroundColor = bgColor;
    [btEntrar addTarget:self action:@selector(entrarHandler:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:btEntrar];
    
    // Do any additional setup after loading the view from its nib.
}

- (void) entrarHandler:(UIButton *) button_{
    [self shake:button_];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) shake:(UIView *)view{
    CABasicAnimation *shake = [CABasicAnimation animationWithKeyPath:@"position"];
    [shake setDuration:0.1];
    [shake setRepeatCount:2];
    [shake setAutoreverses:YES];
    [shake setFromValue:[NSValue valueWithCGPoint:
                         CGPointMake(view.center.x - 5,view.center.y)]];
    [shake setToValue:[NSValue valueWithCGPoint:
                       CGPointMake(view.center.x + 5, view.center.y)]];
    [view.layer addAnimation:shake forKey:@"position"];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
