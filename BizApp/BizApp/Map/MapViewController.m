//
//  MapViewController.m
//  BizApp
//
//  Created by Charles Nebo on 25/10/14.
//  Copyright (c) 2014 charles Nebo. All rights reserved.
//

#import "MapViewController.h"

@interface MapViewController ()

@end

@implementation MapViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    __myMapView.showsUserLocation = YES;
    __myMapView.delegate = self;

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)mapZoomClicked:(id)sender
{
    MKUserLocation *userLocation = self._myMapView.userLocation;
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(
                                                                   userLocation.location.coordinate, 20000,20000);
    [self._myMapView setRegion:region animated:NO];
    

}

- (IBAction)mapTypeClicked:(id)sender
{
    if (self._myMapView.mapType == MKMapTypeStandard)
        self._myMapView.mapType = MKMapTypeSatellite;
    else
        self._myMapView.mapType = MKMapTypeStandard;
    
}

- (void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation
{
    __myMapView.centerCoordinate = userLocation.location.coordinate;
}







/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
