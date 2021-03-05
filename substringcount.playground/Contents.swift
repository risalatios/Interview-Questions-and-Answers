import UIKit


extension String {
    subscript(_ i: Int) -> Character {
        let cindex = self.index(self.startIndex, offsetBy: i)
        return self[cindex]
    }
}

let str = "ababa"
let substr = "abab"

var i = 0, count = 0

while i <= (str.count - substr.count) {
    var f = 1
    var j = 0
    while j < substr.count {
        if str[i + j] != substr[j] {
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



// You can find more examples here:
//   https://github.com/lampepfl/dotty-example-project

// Name Based Pattern
// http://dotty.epfl.ch/docs/reference/changed/pattern-matching.html#name-based-pattern



object Main {
  def main(args: Array[String]): Unit = {
    val str = "ababab"
    val substr = "ab"
    var i = 0
    var count = 0
    while(i <= (str.length - substr.length)) {
      var f = 1
      var j = 0
      var done = false
      while(j < substr.length && !done) {
        val k = i + j
        if(str.charAt(k) != substr.charAt(j)) {
          f = 0
          done = true
        }
        j += 1
      }
      if(f == 1) {
        count += 1
      }
  i += 1
    }
    println(count)
  }
}




fun main(){
    val str = "ababab"
    val substr = "ab"
    var i = 0
    var count = 0
    
    while(i <= (str.length - substr.length)) {
        var f = 1
        var j = 0
        while(j < substr.length) {
            if(str[i + j] != substr[j]){
               f = 0
                break
            }
            j++
        }
        
        if(f == 1) {
            count++
        }
        i++
    }
    
    print(count)
}
