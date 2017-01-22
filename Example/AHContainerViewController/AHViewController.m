//
//  AHViewController.m
//  AHContainerViewController
//
//  Created by Aaqib Hussain on 01/14/2017.
//  Copyright (c) 2017 Aaqib Hussain. All rights reserved.
//

#import "AHViewController.h"
#import "AHContainerViewController.h"
#import "AHFirstViewController.h"
#import "AHSecondViewConroller.h"


@interface AHViewController ()

@end

@implementation AHViewController
{
    AHContainerViewController *container;


}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//MARK: Actions
//Segment Action

- (IBAction)segmentSelected:(UISegmentedControl *)sender {
    
    if (sender.selectedSegmentIndex == 0){
        [container segueIdentifierReceivedFromParent:@"first"];
    }
    else{
        [container segueIdentifierReceivedFromParent:@"second"];
    }
}

//Send Text to Container View Action
- (IBAction)sendText:(id)sender {
    if ([container.currentViewController isKindOfClass:AHFirstViewController.self]){
        AHFirstViewController *firstVC = (AHFirstViewController *) container.currentViewController;
        firstVC.firstVCLabel.text = self.passTextToContainer.text;
    
    }
    else{
    
        AHSecondViewConroller *secondVC = (AHSecondViewConroller *) container.currentViewController;
        secondVC.secondVCLabel.text = self.passTextToContainer.text;
    
    
    }
}

//Get Text from Container View Action
- (IBAction)getText:(id)sender {
    if ([container.currentViewController isKindOfClass:AHFirstViewController.self]){
        AHFirstViewController *firstVC = (AHFirstViewController *) container.currentViewController;
        self.passTextToContainer.text = firstVC.firstVCTextField.text;
        
    }
       
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"container"]){
    
        container = (AHContainerViewController *) segue.destinationViewController;
    
    
    }


}


@end
