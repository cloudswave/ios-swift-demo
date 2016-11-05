//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"


let a = ["2342","234234","34234"]

2008 % 12
(2009 - 4) % 12

"2342" + "2323"

let tutorialTeam = 60
let editorialTeam = 17
let totalTeam = tutorialTeam + editorialTeam

let onSaleInferred = true
let onSaleExplicit: Bool = false

let priceInferred = 19.99
let priceExplicit: Double = 19.99

let nameInferred = "Whoopie Cushion"
let nameExplicit: String = "Whoopie Cushion"

if onSaleInferred {
    print("\(nameInferred) on sale for \(priceInferred)!")
} else {
    print("\(nameInferred) at regular price: \(priceInferred)!")
}



//class
// 1
class TipCalculator {
    
    // 2
    let total: Double
    let taxPct: Double
    let subtotal: Double
    
    // 3
    init(total: Double, taxPct: Double) {
        self.total = total
        self.taxPct = taxPct
        subtotal = total / (taxPct + 1)
    }
    
    // 4
    func calcTipWithTipPct(tipPct: Double) -> Double {
        return subtotal * tipPct
    }
    
    // 5
    func printPossibleTips() {
        print("15%: \(calcTipWithTipPct(tipPct:0.15))")
        print("18%: \(calcTipWithTipPct(tipPct:0.18))")
        print("20%: \(calcTipWithTipPct(tipPct:0.20))")
    }
    
    
    // 1
    func returnPossibleTips() -> [Int: Double] {
        let possibleTipsInferred = [0.15, 0.18, 0.20]
        let possibleTipsExplicit:[Double] = [0.15, 0.18, 0.20]
        // 2
        var retval = [Int: Double]()
        for possibleTip in possibleTipsInferred {
            let intPct = Int(possibleTip*100)
            // 3
            retval[intPct] = calcTipWithTipPct(tipPct:possibleTip)
        }
        return retval   
    }
    
}

// 6
let tipCalc = TipCalculator(total: 33.25, taxPct: 0.06)
tipCalc.printPossibleTips()
tipCalc.returnPossibleTips()



var myString:String!

myString = "Hello, Swift!"

if myString != nil {
    print(myString)
}else{
    print("myString has nil value")
}

if let yourString = myString {
    print("Your string has - \(yourString)")
}else{
    print("Your string does not have a value")
}


func minMax(array: [Int]) -> (min: Int, max: Int)? {
    if array.isEmpty { return nil }
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}
if let bounds = minMax(array:[8, -6, 2, 109, 3, 71]) {
    print("min is \(bounds.min) and max is \(bounds.max)")
}

func vari<N>(members: N...){
    for i in members {
        print(i)
    }
}
vari(members: 4,3,5)
vari(members: 4.5, 3.1, 5.6)
vari(members: "Swift", "Enumerations", "Closures")

func temp( a1 : inout Int, b1 : inout Int) {
    let t = a1
    a1 = b1
    b1 = t
}
var no = 2
var co = 10
temp(a1: &no, b1: &co)
print("Swapped values are \(no), \(co)")



protocol classa {
    
    var marks: Int { get set }
    var result: Bool { get }
    
    func attendance() -> String
    func markssecured() -> String
    
}

protocol classb: classa {
    
    var present: Bool { get set }
    var subject: String { get set }
    var stname: String { get set }
    
}

class classc: classb {
    var marks = 96
    let result = true
    var present = false
    var subject = "Swift Protocols"
    var stname = "Protocols"
    
    func attendance() -> String {
        return "The \(stname) has secured 99% attendance"
    }
    
    func markssecured() -> String {
        return "\(stname) has scored \(marks)"
    }
}

let studdet = classc()
studdet.stname = "Swift"
studdet.marks = 98
studdet.markssecured()

print(studdet.marks)
print(studdet.result)
print(studdet.present)
print(studdet.subject)
print(studdet.stname)
