//
//  Franc.swift
//  tddDollarExampleSwift
//
//  Created by 김창대 on 03/11/2019.
//  Copyright © 2019 김창대. All rights reserved.
//

import Foundation

struct Franc {
  private let amount: Int
  init(_ amount: Int) {
    self.amount = amount
  }
  
  func times(_ multiplier: Int) -> Franc {
    return Franc(amount * multiplier)
  }
}

extension Franc: Equatable {
  public static func ==(lhs: Franc, rhs: Franc) -> Bool {
    return lhs.amount == rhs.amount
  }
}

