//
//  BNRStockHolding.h
//  stocks
//
//  Created by Dan Patey on 6/19/16.
//  Copyright © 2016 Dan Patey. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface BNRStockHolding : NSObject

@property (nonatomic) NSString *symbolName;
@property (nonatomic) float purchaseSharePrice;
@property (nonatomic) float currentSharePrice;
@property (nonatomic) int numberOfShares;

- (float)costInDollars; // purchaseSharePrice * numberOfShares
- (float)valueInDollars; // currentSharePrice * numberOfShares

@end