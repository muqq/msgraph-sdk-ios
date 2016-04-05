// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphRecurrenceRange()
{
    MSGraphRecurrenceRangeType* _type;
    NSDate* _startDate;
    NSDate* _endDate;
    NSString* _recurrenceTimeZone;
    int32_t _numberOfOccurrences;
}
@end

@implementation MSGraphRecurrenceRange

- (MSGraphRecurrenceRangeType*) type
{
    if(!_type){
        _type = [self.dictionary[@"type"] toMSGraphRecurrenceRangeType];
    }
    return _type;
}
- (void) setType: (MSGraphRecurrenceRangeType*) val
{
    _type = val;
    self.dictionary[@"type"] = val;
}
- (NSDate*) startDate
{
    if(!_startDate){
        _startDate = [NSDate ms_dateFromString: self.dictionary[@"startDate"]];
    }
    return _startDate;
}
- (void) setStartDate: (NSDate*) val
{
    _startDate = val;
    self.dictionary[@"startDate"] = val;
}
- (NSDate*) endDate
{
    if(!_endDate){
        _endDate = [NSDate ms_dateFromString: self.dictionary[@"endDate"]];
    }
    return _endDate;
}
- (void) setEndDate: (NSDate*) val
{
    _endDate = val;
    self.dictionary[@"endDate"] = val;
}
- (NSString*) recurrenceTimeZone
{
    return self.dictionary[@"recurrenceTimeZone"];
}
- (void) setRecurrenceTimeZone: (NSString*) val
{
    self.dictionary[@"recurrenceTimeZone"] = val;
}
- (int32_t) numberOfOccurrences
{
    _numberOfOccurrences = [self.dictionary[@"numberOfOccurrences"] intValue];
    return _numberOfOccurrences;
}
- (void) setNumberOfOccurrences: (int32_t) val
{
    _numberOfOccurrences = val;
    self.dictionary[@"numberOfOccurrences"] = @(val);
}
@end
