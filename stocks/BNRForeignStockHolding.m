//
//  NSObject+BNRForeignStockHolding.m
//  stocks
//
//  Created by Dan Patey on 6/20/16.
//  Copyright © 2016 Dan Patey. All rights reserved.
//

#import "BNRForeignStockHolding.h"

@implementation BNRForeignStockHolding 

- (float)costInDollars
{
    return (self.purchaseSharePrice * self.conversionRate) * self.numberOfShares;
}

- (float)valueInDollars
{
    return (self.currentSharePrice * self.conversionRate) * self.numberOfShares;
}

@end