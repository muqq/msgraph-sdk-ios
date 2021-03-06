// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphPhysicalAddress : MSObject

	@property (nonatomic, setter=setStreet:, getter=street) NSString* street;
		@property (nonatomic, setter=setCity:, getter=city) NSString* city;
		@property (nonatomic, setter=setState:, getter=state) NSString* state;
		@property (nonatomic, setter=setCountryOrRegion:, getter=countryOrRegion) NSString* countryOrRegion;
		@property (nonatomic, setter=setPostalCode:, getter=postalCode) NSString* postalCode;
	
@end
