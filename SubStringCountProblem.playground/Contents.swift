import UIKit
//Given an array A[] and a number x, check for pair in A[] with sum as x
/*
 Initialize an empty hash table dic.
 Do following for each element A[i] in A[]
 If dic[x – A[i]] is set then print the pair (x – A[i], A[i])
 Insert A[i] into dic.
 */
let arr = [10,20,30,4,5]
var sum = 40


func partition(a: inout [Int], si: Int, ei: Int) -> Int {
    let x = a[ei]
    var i = si - 1
    for j in si..<ei {
        if a[i] <= x {
          i += 1
            a.swapAt(i, j)
        }
    }
        a.swapAt(i + 1, ei)
    return i + 1
}

protocol A {
    func a()
}

extension A {
    
    func a(){
        print("a")
    }
}

class B: A {
    func a() {
        print("a of b")
    }
}
B().a()




extension String {
    subscript(_ index: Int) -> Character {
        let cindex = self.index(self.startIndex, offsetBy: index)
        return self[cindex]
    }
}

let str = "abajjbabah"
let substr = "ab"

var i = 0, count = 0





while i <= (str.count - substr.count) {
    var f = 1
    var j = 0
    while j < substr.count {
        if str[ i + j] != substr[j] {
            f = 0
            break
        }
        j += 1
    }
    if f == 1 {
        count += 1
    }
    i += 1
}
print(count)
