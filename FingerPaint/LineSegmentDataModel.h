//
//  LineSegmentDataModel.h
//  FingerPaint
//
//  Created by Chris Dean on 2018-02-23.
//  Copyright © 2018 Chris Dean. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface LineSegmentDataModel : NSObject

@property (nonatomic, readonly) CGPoint firstPoint;
@property (nonatomic, readonly) CGPoint secondPoint;

-(instancetype)initWithFirstPoint:(CGPoint)first secondPoint:(CGPoint)second;

@end
