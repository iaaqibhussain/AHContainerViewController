//
//  AHContainerViewController.h
//  AHContainerViewController
//
//  Created by Aaqib Hussain on 11/03/2016.
//  Copyright © 2016 Aaqib Hussain. All rights reserved.
//

#import <UIKit/UIKit.h>
IB_DESIGNABLE
@interface AHContainerViewController : UIViewController
/** Specifies which ever container view is on the front */
@property (nonatomic,readonly) UIViewController* currentViewController;
/**Identifier For First Container SubView*/
@property (nonatomic, assign) IBInspectable NSString * firstLinkedContainerView;
/** Manipulate Container View*/
-(void)segueIdentifierReceivedFromParent:(NSString*)identifier;


@end

