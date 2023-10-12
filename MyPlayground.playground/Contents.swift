import Foundation

extension Array {
    func myMap(_ transform: (Element) -> Element) -> Self {
        var result: [Element] = []
        
        for item in self {
            result.append(transform(item))
        }
        
        return result
    }
    
    func myFilter(_ transform: (Element) -> Bool) -> [Element] {
        var result: [Element] = []
        
        for item in self {
            if transform(item) {
                result.append(item)
            }
        }
        
        return result
    }
    
    func myReduce(_ initialResult: Element)
}

let a = [1,2,3,4]

let b = a.reduce(0,+)

var result = 0
let arr = [1,2,3,4,5]

for i in arr {
    
}
