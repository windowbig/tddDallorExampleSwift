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
 [v] 공용 equals
 [] 공용 times
 [] Franc과 Dollar 비교하기
 [] 통화?
 */

class tddDollarExampleSwiftTests: XCTestCase {
  
  func testMultiplication() {
    let five: Money = Money.dollar(5)
    XCTAssertEqual(Money.dollar(10), five.times(2))
    XCTAssertEqual(Money.dollar(15), five.times(3))
  }
  
  func testEquality() {
    XCTAssertTrue(Money.dollar(5) == Money.dollar(5))
    XCTAssertFalse(Money.dollar(5) == Money.dollar(6))
    XCTAssertTrue(Franc(5) == Franc(5))
    XCTAssertFalse(Franc(5) == Franc(6))
    XCTAssertFalse(Franc(5) == Money.dollar(5))
  }
  
  func testFrancMultiplication() {
    let five = Franc(5)
    XCTAssertEqual(Franc(10), five.times(2))
    XCTAssertEqual(Franc(15), five.times(3))
  }
}
