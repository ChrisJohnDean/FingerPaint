//
//  ViewController.m
//  FingerPaint
//
//  Created by Chris Dean on 2018-02-23.
//  Copyright © 2018 Chris Dean. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()


@property (weak, nonatomic) IBOutlet fingerPaintView *paintView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)changeColour:(UIButton*)sender {
    
    switch(sender.tag) {
        case 0:
            self.paintView.currentColor = [UIColor blueColor];
            break;
        case 1:
            self.paintView.currentColor = [UIColor blackColor];
            break;
        case 2:
            self.paintView.currentColor = [UIColor redColor];
            break;
        case 3:
            self.paintView.currentColor = [UIColor yellowColor];
            break;
        case 4:
            self.paintView.currentColor = [UIColor greenColor];
            break;
        case 5:
            self.paintView.currentColor = [UIColor grayColor];
            break;
        case 6:
            self.paintView.currentColor = [UIColor brownColor];
            break;
        case 7:
            self.paintView.currentColor = [UIColor whiteColor];
            break;
    }
    
}
- (IBAction)reset:(UIButton *)sender {
    [self.paintView reset];
}


@end
