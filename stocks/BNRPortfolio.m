//
//  NSObject+BNRPortfolio.m
//  stocks
//
//  Created by Dan Patey on 6/20/16.
//  Copyright © 2016 Dan Patey. All rights reserved.
//

#import "BNRPortfolio.h"
#import "BNRStockHolding.h"
#import "BNRForeignStockHolding.h"
@implementation BNRPortfolio
- (void) setHoldings:(NSArray *)h
{
    _holdings = [h mutableCopy];
}
- (NSArray *)holdings
{
    return [_holdings copy];
}
- (void) addStock:(BNRStockHolding *)stock
{
    if (_holdings == nil)
    {
        _holdings = [[NSMutableArray alloc]init];
    }
    [_holdings addObject:stock];
}
- (float) valueOfPortfolio
{
    float sum = 0;
    for (BNRStockHolding *stock in self.holdings)
    {
        sum += [stock valueInDollars];
    }
    return sum;
}
@end