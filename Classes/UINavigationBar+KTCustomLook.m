//
//  UINavigationBar+KTCustomLook.m
//  CustomNavBar
//
//  Created by Kirby Turner on 9/11/10.
//  Copyright 2010 White Peak Software Inc. All rights reserved.
//

#import "UINavigationBar+KTCustomLook.h"


@implementation UINavigationBar (KTCustomLook)

- (void) drawRect:(CGRect)rect
{
   UIImage *image = [UIImage imageNamed: @"navbar.png"];
   [image drawInRect:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
}

@end
