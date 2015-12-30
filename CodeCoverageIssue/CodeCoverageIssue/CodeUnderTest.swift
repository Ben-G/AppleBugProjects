//
//  CodeUnderTest.swift
//  CodeCoverageIssue
//
//  Created by Benjamin Encz on 12/30/15.
//  Copyright © 2015 Benjamin Encz. All rights reserved.
//

import Foundation

func testFunction(input: String?) -> String? {
    if let input = input {
        return input
    } else {
        return input
    }
}
