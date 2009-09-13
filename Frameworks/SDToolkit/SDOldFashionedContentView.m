//
//  SDOldFashionedContentView.m
//  TweetleDee
//
//  Created by Steven Degutis on 9/6/09.
//  Copyright 2009 Thoughtful Tree Software. All rights reserved.
//

#import "SDOldFashionedContentView.h"


@implementation SDOldFashionedContentView

- (void) drawRect:(NSRect)dirtyRect {
	[super drawRect:dirtyRect];
//	return;
	
	NSRect lineForHighlight = [self bounds];
	lineForHighlight.size.height = 1.0;
	lineForHighlight.origin.y = [[self window] contentBorderThicknessForEdge:CGRectMinYEdge] - 2.0;
	
	if (lineForHighlight.origin.y > 0.0) {
		[[NSColor colorWithCalibratedWhite:1.0 alpha:0.50] setFill];
		[NSBezierPath fillRect:lineForHighlight];
	}
}

@end
