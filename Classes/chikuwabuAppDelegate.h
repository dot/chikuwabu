//
//  chikuwabuAppDelegate.h
//  chikuwabu
//
//  Created by 近藤 修平 on 10/11/24.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class chikuwabuViewController;

@interface chikuwabuAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    chikuwabuViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet chikuwabuViewController *viewController;

@end

