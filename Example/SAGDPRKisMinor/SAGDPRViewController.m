//
//  SAGDPRViewController.m
//  SAGDPRKisMinor
//
//  Created by GuilhermeMota93 on 04/25/2018.
//  Copyright (c) 2018 GuilhermeMota93. All rights reserved.
//

#import "SAGDPRViewController.h"
#import "SAAgeCheck.h"

@interface SAGDPRViewController ()

@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (weak, nonatomic) IBOutlet UIButton *button;

@end

@implementation SAGDPRViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [_textView setText:@""];
    
    [_button addTarget:self
                 action:@selector(getIsMinorDetails)
       forControlEvents:UIControlEventTouchUpInside];
    
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void) getIsMinorDetails {
    
    
    NSString *bundleIdentifier = [[NSBundle mainBundle] bundleIdentifier];
                            
    [SAAgeCheck.sdk getIsMinor:bundleIdentifier :^(GetIsMinorModel *model) {
        
        if (model != nil) {
            NSString* country = [model country];
            NSInteger age = [model age];
            
            NSLog(@"Country: %@ | Age: %ld", model.country, (long)age);
            
            NSString *newString = [NSString stringWithFormat:@"Success!\nCountry: %@, and Age: %ld", country, (long)age];
            NSString *full = [NSString stringWithFormat:@"%@ \n %@ \n", [self->_textView text], newString];
            
            [self->_textView setText: full];
        } else {
            [self->_textView setText: @"\nSomething went wrong...\n"];
        }
    }];
}


@end
