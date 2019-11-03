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
 [] $5 + 10CHF = $10(환율이 2:1일 경우)
 [v] $5 * 2 = $10
 [v] amount를 private로 만들기
 [v] Dollar side effect
 [] Money 반올림
 [v] equals()
 [] hashCode()
 [] Equal nil
 [] Equal object
 [v] 5CHF * 2 = 10CHF
 [] Dollar/Franc 중복
 [] 공용 equals
 [] 공용 times
 */

class tddDollarExampleSwiftTests: XCTestCase {
  
  func testMultiplication() {
    let five = Dollar(5)
    XCTAssertEqual(Dollar(10), five.times(2))
    XCTAssertEqual(Dollar(15), five.times(3))
  }
  
  func testEquality() {
    XCTAssertTrue(Dollar(5) == Dollar(5))
    XCTAssertFalse(Dollar(5) == Dollar(6))
  }
  
  func testFrancMultiplication() {
    let five = Franc(5)
    XCTAssertEqual(Franc(10), five.times(2))
    XCTAssertEqual(Franc(15), five.times(3))
  }
}
