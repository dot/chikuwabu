//
//  chikuwabuViewController.m
//  chikuwabu
//
//  Created by 近藤 修平 on 10/11/24.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "chikuwabuViewController.h"
#import "JSON.h"
@implementation chikuwabuViewController



/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	NSURL *url = [NSURL URLWithString:@"http://api.twitter.com/1/statuses/user_timeline.json?screen_name=_dot"];
	NSURLRequest *req = [NSURLRequest requestWithURL:url];
	NSError *error = nil;
	NSURLResponse *res;
	NSData *data = [NSURLConnection sendSynchronousRequest:req returningResponse:&res error:&error];
	NSString *result = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
//	NSLog(result);

	id jresult = [result JSONValue];
	NSLog(@"classname: %@", NSStringFromClass([jresult class]));
	if ([jresult isKindOfClass: [NSArray class]]) {
		NSArray* arr = jresult;
		NSLog(@"length: %d", [arr count]);
		NSLog(@"last one: %@", [arr lastObject]);
	}
	[result release];
}



/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
