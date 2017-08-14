//
//  XTDSViewController.h
//  TensorFlowServing-InceptionClient
//
//  Created by Tom Stall <mtm<@>mountaintom<.>com> on 08/08/2017.
//  Copyright (c) 2017 Tom Stall. All rights reserved.
//

@import UIKit;

@interface XTDSViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextView *inceptionResultsText;

@property (weak, nonatomic) IBOutlet UIButton *buttonCamel;

@property (weak, nonatomic) IBOutlet UIButton *buttonGrace;

@property (weak, nonatomic) IBOutlet UITextField *hostURLField;

@property (weak, nonatomic) IBOutlet UITextField *hostPortField;

@property (nonatomic, retain) NSString* hostURL;
@property (nonatomic, retain) NSString* hostPort;

@end
