//
//  RZVerticalAlignmentLabel.m
//
//  Created by rockyzhang on 13-11-25.
//

#import "RZVerticalAlignmentLabel.h"

@implementation RZVerticalAlignmentLabel

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        
        [self commitInit];
    }
    
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self commitInit];
    }
    
    return self;
}

- (void)commitInit
{
    self.verticalAlignment = RZVerticalAlignmentCenter;
}

- (void)drawTextInRect:(CGRect)rect
{
    switch (self.verticalAlignment) {
        case RZVerticalAlignmentTop:
            rect = [self textRectForBounds:self.bounds limitedToNumberOfLines:self.numberOfLines];
            break;
            
        case RZVerticalAlignmentBottom:
            rect = [self textRectForBounds:self.bounds limitedToNumberOfLines:self.numberOfLines];
            rect.origin.y = CGRectGetHeight(self.bounds) - CGRectGetHeight(rect);
            break;
            
        case RZVerticalAlignmentCenter:
        default:
            break;
    }
    
    [super drawTextInRect:rect];
}

#pragma mark - Accessors

- (void)setVerticalAlignment:(RZVerticalAlignment)verticalAlignment
{
    _verticalAlignment = verticalAlignment;
    [self setNeedsDisplay];
}

@end
