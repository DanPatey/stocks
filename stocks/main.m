//
//  main.m
//  stocks
//
//  Created by Dan Patey on 6/19/16.
//  Copyright © 2016 Dan Patey. All rights reserved.
//

#import "BNRPortfolio.h"
#import <Foundation/Foundation.h>
#import "BNRForeignStockHolding.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BNRPortfolio *myStockPortfolio = [[BNRPortfolio alloc] init];
        BNRStockHolding *stock1 = [[BNRStockHolding alloc]init];
        BNRStockHolding *stock2 = [[BNRStockHolding alloc]init];
        BNRForeignStockHolding *stock3 = [[BNRForeignStockHolding alloc]init];
        
        stock1.symbolName = (@"CHK");
        stock1.purchaseSharePrice = 2.30;
        stock1.currentSharePrice = 4.50;
        stock1.numberOfShares = 40;
        
        stock2.symbolName = (@"F");
        stock2.purchaseSharePrice = 12.19;
        stock2.currentSharePrice = 10.56;
        stock2.numberOfShares = 90;
        
        stock3.symbolName = (@"NTDOY");
        stock3.purchaseSharePrice = 45.10;
        stock3.currentSharePrice = 49.51;
        stock3.numberOfShares = 210;
        stock3.conversionRate = 0.94;
        
        [myStockPortfolio addStock:stock1];
        [myStockPortfolio addStock:stock2];
        [myStockPortfolio addStock:stock3];
        
        for (BNRForeignStockHolding *stock in myStockPortfolio.holdings) {
            NSLog(@"%@", stock);
        }
        NSLog(@"\n\nThe current value of your portfolio is: $%.2f", [myStockPortfolio valueOfPortfolio]);
    }
    return 0;
}