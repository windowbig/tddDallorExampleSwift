//
//  Dollar.swift
//  tddDollarExampleSwift
//
//  Created by 김창대 on 03/11/2019.
//  Copyright © 2019 김창대. All rights reserved.
//

import Foundation

class Dollar: Money {
 func times(_ multiplier: Int) -> Money {
    return Dollar(amount * multiplier)
  }
}
