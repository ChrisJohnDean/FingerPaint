//
//  LineSegmentDataModel.m
//  FingerPaint
//
//  Created by Chris Dean on 2018-02-23.
//  Copyright © 2018 Chris Dean. All rights reserved.
//

#import "LineSegmentDataModel.h"

@implementation LineSegmentDataModel

-(instancetype)initWithFirstPoint:(CGPoint)first secondPoint:(CGPoint)second {
    if(self = [super init]) {
        _firstPoint = first;
        _secondPoint = second;
    }
    return self;
}

@end
