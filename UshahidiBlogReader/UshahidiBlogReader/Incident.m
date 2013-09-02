//
//  Incident.m
//  UshahidiBlogReader
//
//  Created by Lea Marolt on 9/1/13.
//  Copyright (c) 2013 Lea Marolt Sonnenschein. All rights reserved.
//

#import "Incident.h"

@implementation Incident

@synthesize incidentTitle;
@synthesize locationName;
//- (void) setIncidentTitle:(NSString *) _incidentTitle {
//    incidentTitle = _incidentTitle;
//}
//- (NSString *) incidentTitle {
//    return incidentTitle;
//}

- (id) initWithIncidentTitle:(NSString *) _incidentTitle {
    self = [super init];
    
    if (self) {
        self.incidentTitle = _incidentTitle;
        self.locationName = nil;
        self.thumbnail = nil;
    }
    
    return self;
}

+ (id) incidentWithTitle:(NSString *) incidentTitle {
    return [[self alloc] initWithIncidentTitle:incidentTitle];
}

- (NSURL *) thumbanilURL {
    return [NSURL URLWithString:self.thumbnail];
}

- (NSString *) formattedDate {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"YYYY-MM-dd HH:mm:ss"];
}

@end
