//
//  Dollar.swift
//  tddDollarExampleSwift
//
//  Created by 김창대 on 03/11/2019.
//  Copyright © 2019 김창대. All rights reserved.
//

import Foundation

struct Dollar {
  let amount: Int
  init(_ amount: Int) {
    self.amount = amount
  }
  
  mutating func times(_ multiplier: Int) -> Dollar {
    return Dollar(amount * multiplier)
  }
}

extension Dollar: Equatable {
  public static func ==(lhs: Dollar, rhs: Dollar) -> Bool {
    return lhs.amount == rhs.amount
  }
}
