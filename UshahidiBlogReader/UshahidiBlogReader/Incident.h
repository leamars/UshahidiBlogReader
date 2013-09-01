//
//  Incident.h
//  UshahidiBlogReader
//
//  Created by Lea Marolt on 9/1/13.
//  Copyright (c) 2013 Lea Marolt Sonnenschein. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Incident : NSObject {
    NSString *incidentTitle;
    NSString *locationName;
}

@property (nonatomic, strong) NSString *incidentTitle;
@property (nonatomic, strong) NSString *locationName;

// Designated Initializer
- (id) initWithIncidentTitle:(NSString *) incidentTitle;

// Convenience Constructor
+ (id) incidentWithTitle:(NSString *) incidentTitle;
//- (void) setIncidentTitle:(NSString *) incidentTitle;
//- (NSString *) incidentTitle;

@end
