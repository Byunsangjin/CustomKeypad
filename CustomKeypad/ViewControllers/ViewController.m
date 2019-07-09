//
//  ViewController.m
//  CustomKeypad
//
//  Created by Byunsangjin on 09/07/2019.
//  Copyright © 2019 Byunsangjin. All rights reserved.
//

#import "ViewController.h"
#import "KeypadViewController.h"
@interface ViewController ()
@property (strong, nonatomic) IBOutlet UITextView *textView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}

- (IBAction)toggleBtnTouched:(id)sender {
    if ([self.textView.inputView isKindOfClass:UIView.class]) {
        [self.textView setInputView:nil];
        [self.textView reloadInputViews];
    } else {
        KeypadViewController *keypad = (KeypadViewController *)[self.storyboard instantiateViewControllerWithIdentifier:@"KeypadViewController"];
        [self.textView setInputView:keypad.view];
        [self.textView reloadInputViews];
    }
    
    
}

@end
