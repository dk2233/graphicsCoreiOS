//
//  Drawings.m
//  randomBoxes
//
//  Created by Daniel Kucharski on 01.04.2018.
//  Copyright © 2018 code masterss. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Drawings.h"



@implementation DrawingShape

-(id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    self.clearsContextBeforeDrawing = false;
    
    _context = UIGraphicsGetCurrentContext();
    return self;
}

-(void)drawRect:(CGRect )rect
             //in:(UIView *)view{
{
    static BOOL iter = false;
    [super drawRect:rect];
    
    //CGContextRef context;
    if (_context == NULL)
        _context = UIGraphicsGetCurrentContext();
    
    self.clearsContextBeforeDrawing = false;
   
    
    NSLog(@" %@ ", _context);
    
    if (_context != NULL)
    {
    
    
//        CGContextBeginPath(context);
//        CGColorSpaceRef colorspace = CGColorSpaceCreateDeviceRGB();
        CGContextSetLineWidth(_context, 6.0);
        
        CGContextSetStrokeColorWithColor(_context,
                                         [UIColor blueColor].CGColor);
        CGRect rectangle = CGRectMake(_rect.origin.x,_rect.origin.y,20,20);
        CGContextAddRect(_context, rectangle);
        CGContextStrokePath(_context);
        
        
        //CGContextSaveGState(context);
        iter = true;
//        CGContextSetStrokeColorWithColor(context, [UIColor greenColor].CGColor);
//        CGContextMoveToPoint(context, rect.origin.x , rect.origin.y);
//
//        CGContextAddLineToPoint(context,rect.origin.x,rect.origin.x+rect.size.width);
//        CGContextStrokePath(context);
//        CGColorSpaceRelease(colorspace);
        
        
        
    }
    //NSLog(@" %@",self);
}



@end
