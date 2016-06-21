//
//  BNRStockHolding.m
//  stocks
//
//  Created by Dan Patey on 6/19/16.
//  Copyright © 2016 Dan Patey. All rights reserved.
//

#import "BNRStockHolding.h"

@implementation BNRStockHolding

-(float)costInDollars
{
    return self.purchaseSharePrice * self.numberOfShares;
}

-(float)valueInDollars
{
    return self.currentSharePrice * self.numberOfShares;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"\n\n    Stock Symbol: %@\n Number of Shares: %d\nPurchase Share Price: %.2f\n Current Share Price: %.2f\n   Cost In Dollars: %.2f\n     Value in dollars: %.2f\n", self.symbolName, self.numberOfShares, self.purchaseSharePrice, self.currentSharePrice, self.costInDollars, self.valueInDollars];
}

@end