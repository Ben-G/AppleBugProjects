//
//  main.swift
//  ProtocolArrayTypeConversion
//
//  Created by Benji Encz on 3/23/16.
//  Copyright © 2016 Benjamin Encz. All rights reserved.
//

protocol AnotherThing {}

struct X: AnotherThing {}

let a = [X(), X(), X()]

func takesX(a: [X]) -> [AnotherThing] {
    // Compilation of following line fails
    let anotherThings: [AnotherThing] = a as [AnotherThing]
    //  This works:
    //  let anotherThings: [AnotherThing] = a.map { $0 as AnotherThing }

    return anotherThings
}

func takesOneX(a: X) -> AnotherThing {
    return a
}
