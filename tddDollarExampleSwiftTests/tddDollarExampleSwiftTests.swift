//
//  tddDollarExampleSwiftTests.swift
//  tddDollarExampleSwiftTests
//
//  Created by 김창대 on 03/11/2019.
//  Copyright © 2019 김창대. All rights reserved.
//

import XCTest
@testable import tddDollarExampleSwift

// MARK: - Todo List
/*
 $5 + 10CHF = $10(환율이 2:1일 경우)
 $5 * 2 = $10
 amount를 private로 만들기
 Dollar side effect
 Money 반올림
 */

class tddDollarExampleSwiftTests: XCTestCase {
  
  func testMultiplication() {
    let five = Dollar(5)
    five.times(2)
    XCTAssertEqual(10, five.amount)
  }
}
