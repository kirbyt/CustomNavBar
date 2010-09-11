//
//  KTNavigationBar.m
//  CustomNavBar
//
//  Created by Kirby Turner on 9/11/10.
//  Copyright 2010 White Peak Software Inc. All rights reserved.
//

#import "KTNavigationBar.h"


@implementation KTNavigationBar

- (void) drawRect:(CGRect)rect
{
   [super drawRect:rect];
   
   UIImage *image = [UIImage imageNamed: @"navbar-with-title.png"];
   [image drawInRect:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
}

@end
