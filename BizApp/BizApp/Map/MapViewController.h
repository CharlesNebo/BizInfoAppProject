//
//  MapViewController.h
//  BizApp
//
//  Created by Charles Nebo on 25/10/14.
//  Copyright (c) 2014 charles Nebo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MapKit/MapKit.h"

@interface MapViewController : UIViewController<MKMapViewDelegate>


@property (strong, nonatomic) IBOutlet MKMapView *_myMapView;
@property (strong, nonatomic) IBOutlet UITextField *mySearchText;

@end
