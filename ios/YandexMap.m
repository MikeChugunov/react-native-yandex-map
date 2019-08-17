#import "YandexMap.h"
#import <YandexMapKit/YMKMapKitFactory.h>

@implementation YandexMap

RCT_EXPORT_MODULE()
- (UIView *)view
{
    [YMKMapKit setApiKey: @ "72c56920-584b-41c2-ad19-0b1b807847ce"];
    YMKPoint *target = [YMKPoint pointWithLatitude:55.751574 longitude:37.573856];
    YMKMapView *mapView = [[YMKMapView alloc] init];
    [mapView.mapWindow.map moveWithCameraPosition:[YMKCameraPosition cameraPositionWithTarget:target
                                                                                         zoom:11
                                                                                      azimuth:0
                                                                                         tilt:0]];
    mapView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;

    UIView *wrapper = [[UIView alloc] init];
    [wrapper addSubview:mapView];
    
    return wrapper;
}
@end
