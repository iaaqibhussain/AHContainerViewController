//
//  AHContainerViewController.m
//  AHContainerViewController
//
//  Created by Aaqib Hussain on 11/03/2016.
//  Copyright © 2016 Aaqib Hussain. All rights reserved.
//

#import "AHContainerViewController.h"


@implementation AHContainerViewController
{
    NSMutableDictionary *containerViewObjects;
    UIViewController *viewController;
    NSString *segueIdentifier;
    
}
-(UIViewController*)currentViewController{
    return viewController;
}

-(void) viewDidLoad{
    
    containerViewObjects = [[NSMutableDictionary alloc] init];
    
    
    
    
}
-(void) viewDidAppear:(BOOL)animated{
    if (self.firstLinkedContainerView != NULL){
        if (viewController == NULL){
            [self segueIdentifierReceivedFromParent:self.firstLinkedContainerView];
        }
    }
}


-(void)segueIdentifierReceivedFromParent:(NSString*)identifier{
    
    
    
    
    segueIdentifier = identifier;
    [self performSegueWithIdentifier:segueIdentifier sender:nil];
    
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if ([segue.identifier isEqualToString:segueIdentifier]){
        if (viewController != NULL){
            
            [viewController.view removeFromSuperview];
            viewController = NULL;
            
        }
        
        //Add to dictionary if isn't already there
        if ((containerViewObjects[segueIdentifier] == NULL)){
            viewController = segue.destinationViewController;
            containerViewObjects[segueIdentifier] = viewController;
        }else{
            for (NSString *key in containerViewObjects) {
                if ([key isEqualToString:segueIdentifier]){
                    
                    UIViewController *controller = [containerViewObjects objectForKey:key];
                    viewController = controller;
                    
                    
                }
                
                
            }
            
        }
        
        
        [self addChildViewController:viewController];
        
        viewController.view.frame = CGRectMake( 0,0, self.view.frame.size.width,self.view.frame.size.height);
        [self.view addSubview:viewController.view];
        [viewController didMoveToParentViewController:self];
        
        
        
    }
    
    
    
}

@end
