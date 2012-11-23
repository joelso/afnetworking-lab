//
//  ViewController.h
//  AFNetworkingLab
//
//  Created by Joel Söderström on 2012-11-22.
//  Copyright (c) 2012 Frost Digital. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <NIAttributedLabel.h>

@interface ViewController : UIViewController<UIScrollViewDelegate, NIAttributedLabelDelegate>

@property (weak, nonatomic) IBOutlet UIScrollView *showsScrollView;
@property (weak, nonatomic) IBOutlet UIPageControl *showPageControl;
- (IBAction)pageChanged:(id)sender;
-(void)loadShow:(int)index;
@end
