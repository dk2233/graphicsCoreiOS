//
//  FirstViewController.m
//  randomBoxes
//
//  Created by Daniel Kucharski on 01.04.2018.
//  Copyright © 2018 code masterss. All rights reserved.
//

#import "FirstViewController.h"
#import "Drawings.h"

DrawingShape *drawing;

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    drawing = [[DrawingShape alloc] initWithFrame:CGRectMake(20.0,20.0,335.0,660.0)];
    drawing.backgroundColor = [UIColor yellowColor];
    
    [self.view addSubview:drawing];
    self.view.clearsContextBeforeDrawing = false;
    drawing.rect = CGRectMake(10, 10, 1, 1);
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    UITouch *myTouch = [[event allTouches] anyObject];
    
    ///NO == 0;
    NSLog(@" is dictionary %@", ([touches isKindOfClass:NSClassFromString(@"NSDictionary")] == NO) ? @"NO":@"YES");
    NSLog(@" force %f",myTouch.force);
    
    NSLog(@" dane %@", touches );
    
    NSLog(@" touched x = %f  y = %f ",[myTouch locationInView:self.view].x,[myTouch locationInView:self.view].y );
    
    drawing.rect = CGRectMake([myTouch locationInView:self.view].x, [myTouch locationInView:self.view].y, 50, 50);

    [drawing setNeedsDisplay];

}

@end
