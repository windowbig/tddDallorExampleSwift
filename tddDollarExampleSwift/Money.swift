//
//  Money.swift
//  tddDollarExampleSwift
//
//  Created by 김창대 on 18/11/2019.
//  Copyright © 2019 김창대. All rights reserved.
//

import Foundation

class Money {
   let amount: Int
  init(_ amount: Int) {
     self.amount = amount
   }
}

extension Money {
  static func dollar(_ amount: Int) -> Dollar {
    return Dollar(amount)
  }
}

extension Money: Equatable {
  public static func ==(lhs: Money, rhs: Money) -> Bool {
    return lhs.amount == rhs.amount
  }
}
