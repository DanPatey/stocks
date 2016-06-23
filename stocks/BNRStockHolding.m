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
    return [NSString stringWithFormat:@"Stock Symbol: %@ Number of Shares: %d Purchase Share Price: %.2f Current Share Price: %.2f   Cost In Dollars: %.2f     Value in dollars: %.2f", self.symbolName, self.numberOfShares, self.purchaseSharePrice, self.currentSharePrice, self.costInDollars, self.valueInDollars];
}

@end