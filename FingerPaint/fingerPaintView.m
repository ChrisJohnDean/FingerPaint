//
//  fingerPaintView.m
//  FingerPaint
//
//  Created by Chris Dean on 2018-02-23.
//  Copyright © 2018 Chris Dean. All rights reserved.
//

#import "fingerPaintView.h"
#import "LineSegmentDataModel.h"

@interface fingerPaintView()

@property(nonatomic) NSMutableArray <LineSegmentDataModel*> *linesArray;

@end

@implementation fingerPaintView

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        _linesArray = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches
           withEvent:(UIEvent *)event
{
    CGPoint first = [touches.anyObject locationInView:self];
    
    LineSegmentDataModel *segment = [[LineSegmentDataModel alloc] initWithFirstPoint:first
                                                                         secondPoint:first];
    [self.linesArray addObject:segment];
    
    [self setNeedsDisplay];
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches
           withEvent:(UIEvent *)event
{
    UITouch *touch = [[touches allObjects] objectAtIndex:0];
    CGPoint curPoint = [touch locationInView:self];
    CGPoint prevPoint = [touch previousLocationInView:self];
    
    LineSegmentDataModel *segment = [[LineSegmentDataModel alloc] initWithFirstPoint:prevPoint
                                                                         secondPoint:curPoint];
    [self.linesArray addObject:segment];

    [self setNeedsDisplay];
}

- (void)reset {
    self.linesArray = [[NSMutableArray alloc] init];
    [self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect
{
    UIBezierPath *path = [UIBezierPath bezierPath];
    path.lineWidth = 5.0;
    path.lineCapStyle = kCGLineCapRound;
    //[[UIColor self.currentColor] setStroke];
    [self.currentColor setStroke];
    
    for (LineSegmentDataModel *segment in self.linesArray)
    {
        if (CGPointEqualToPoint(segment.firstPoint, segment.secondPoint))
        {
            [path moveToPoint:segment.firstPoint];
            continue;
        }

        [path addLineToPoint: segment.secondPoint];
    }
    [path stroke];
}



@end
