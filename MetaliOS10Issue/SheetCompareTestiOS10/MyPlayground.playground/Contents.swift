//: Playground - noun: a place where people can play

import Cocoa

extension Array {
    func keepingLastOfEachKind() -> [Element] {
        let objectOperations: [Element] = self.reduce([]) { acc, nextOp in
            // only include the last operation of each kind
            var filteredOperations: [Element] = acc.filter { (existingOp: Element) -> Bool in
                return type(of: existingOp) != type(of: nextOp)
            }
            filteredOperations.append(nextOp)
            return filteredOperations
        }
        return objectOperations
    }

    func keepingLastOfEachKind2() -> [Element] {
        return self.reversed().reduce([]) { acc, nextOp in
            var acc = acc
            if (acc.contains { type(of:$0) == type(of: nextOp)} ) {
                return acc
            } else {
                acc.append(nextOp)
            }

            return acc
        }.reversed()
    }
 }



struct Thing {
    let value: Int
}

struct Other {
    let value: Int
}

let result = [Thing(value: 1), Other(value:2), Other(value:3),Thing(value: 2), Thing(value: 3)].keepingLastOfEachKind()

let result2 = [Thing(value: 1), Other(value:2), Other(value:3),Thing(value: 2), Thing(value: 3)].keepingLastOfEachKind2()


print(result)
print(result2)
