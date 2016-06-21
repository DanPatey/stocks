//
//  NSObject+BNRPortfolio.h
//  stocks
//
//  Created by Dan Patey on 6/20/16.
//  Copyright © 2016 Dan Patey. All rights reserved.
//

#import <Foundation/Foundation.h>
@class BNRStockHolding;
@interface BNRPortfolio : NSObject
{
    NSMutableArray *_holdings;
}

@property (nonatomic, copy) NSArray *holdings;

- (float) valueOfPortfolio;
- (void) addStock:(BNRStockHolding *)stock;

@end
