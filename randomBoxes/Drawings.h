//
//  Drawings.h
//  randomBoxes
//
//  Created by Daniel Kucharski on 01.04.2018.
//  Copyright © 2018 code masterss. All rights reserved.
//

#ifndef Drawings_h
#define Drawings_h

#import <UIKit/UIKit.h>

extern CGContextRef context;

@interface DrawingShape: UIView

@property(nonatomic) CGRect rect;

-(id)initWithFrame:(CGRect)frame;

-(void)drawRect:(CGRect )rect;
             //in:(UIView *)view;

@end


#endif /* Drawings_h */
