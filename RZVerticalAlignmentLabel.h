//
//  RZVerticalAlignmentLabel.h
//
//  Created by rockyzhang on 13-11-25.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, RZVerticalAlignment) {
    RZVerticalAlignmentCenter   = 0,
    RZVerticalAlignmentTop      = 1,
    RZVerticalAlignmentBottom   = 2,
};

@interface RZVerticalAlignmentLabel : UILabel

@property (nonatomic, assign) RZVerticalAlignment verticalAlignment;

@end
