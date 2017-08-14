//
//  XTDSViewController.m
//  TensorFlowServing-InceptionClient
//
//  Created by Tom Stall <mtm<@>mountaintom<.>com> on 08/08/2017.
//  Copyright (c) 2017 Tom Stall. All rights reserved.
//

#import "XTDSViewController.h"
#import <UIKit/UIKit.h>
#import "../../TensorFlowServing-InceptionClient/Classes/InceptionClient.h"
#import <PodAsset/PodAsset.h>

@interface XTDSViewController () <UITextViewDelegate>

- (void)sendInceptionRequest:(NSData *)sendImage;

@end

@implementation XTDSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.hostURL = @"127.0.0.1";
    self.hostPort = @"9000";
    
    self.hostURLField.text = self.hostURL;
    self.hostPortField.text = self.hostPort;
    
    NSBundle* bundle = [PodAsset bundleForPod:@"TensorFlowServing-InceptionClient"];
    
    UIImage* camelImg = [UIImage imageNamed:@"DromedaryCamel64x64.jpg" inBundle:bundle compatibleWithTraitCollection:nil];
    [self.buttonCamel setImage:camelImg forState:UIControlStateNormal];
    
    UIImage* gracelImg = [UIImage imageNamed:@"grace_hopper.jpg" inBundle:bundle compatibleWithTraitCollection:nil];
    [self.buttonGrace setImage:gracelImg forState:UIControlStateNormal];
    
    self.buttonCamel.layer.borderWidth = 1.0f;
    self.buttonGrace.layer.borderWidth = 1.0f;
    
    self.buttonCamel.layer.borderColor = [UIColor lightGrayColor].CGColor;
    self.buttonGrace.layer.borderColor = [UIColor lightGrayColor].CGColor;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressGraceHopper:(id)sender {
    NSLog(@"----- Grace Event");
    [self.view endEditing:YES];
    
    self.inceptionResultsText.text = @"Sending Grace Hopper image to server";
    
    NSData* imageData = [PodAsset dataForFilename:@"grace_hopper.jpg" pod:@"TensorFlowServing-InceptionClient"];

    [self sendInceptionRequest:imageData];

}

- (IBAction)buttonPressCamel:(id)sender {
    NSLog(@"----- Camel Event");
    [self.view endEditing:YES];
    
    self.inceptionResultsText.text = @"Sending Camel image to server";
    
    NSData* imageData = [PodAsset dataForFilename:@"grace_hopper.jpg" pod:@"TensorFlowServing-InceptionClient"];
    
    [self sendInceptionRequest:imageData];
   
}

- (void)sendInceptionRequest:(NSData *)sendImage {
    InceptionClient* iClient = [[InceptionClient alloc] init];
    
    iClient.imageData = sendImage;
    iClient.hostURL = self.hostURL;
    iClient.hostPort = self.hostPort;
    
    [iClient sendImageToServer:^(BOOL result){
        NSLog(@"----- Inception Client Results");
        
        if(result){
            
            NSLog(@"Result was true");
            NSLog(@"Classes: %@", iClient.resultClassesString);
            NSLog(@"Scores: %@", iClient.resultScoresString);
            
            NSString* showResults = [NSString stringWithFormat:@"** Classes:\n%@\n** Scores:\n%@",
                                     iClient.resultClassesString, iClient.resultScoresString];
            self.inceptionResultsText.text = showResults;
            
        }else{
            
            NSLog(@"Result was false");
            NSLog(@"Error Message: %@", iClient.resultErrorMessage);
            self.inceptionResultsText.text = iClient.resultErrorMessage;
        }        
    }];
}

- (IBAction)hostURLChanged:(UITextField *)sender {
    self.hostURL = sender.text;
}

- (IBAction)hostPortChanged:(UITextField *)sender {
    self.hostPort = sender.text;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return NO;
}

@end
