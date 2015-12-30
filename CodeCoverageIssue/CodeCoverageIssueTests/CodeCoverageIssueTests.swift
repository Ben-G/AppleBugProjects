//
//  CodeCoverageIssueTests.swift
//  CodeCoverageIssueTests
//
//  Created by Benjamin Encz on 12/30/15.
//  Copyright © 2015 Benjamin Encz. All rights reserved.
//

import XCTest
@testable import CodeCoverageIssue

class CodeCoverageIssueTests: XCTestCase {

    func testCodeCoverage() {
        testFunction("a")
        testFunction(nil)
    }

}
