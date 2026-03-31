class Solution {
    func isValid(_ s: String) -> Bool {
        var list: [Character] = []
        var s = Array(s)

        if !s.contains("}") && !s.contains("]") && !s.contains(")"){
            return false
        } else if s.last == "{" || s.last == "(" || s.last == "[" {
            return false
        }
        
        for char in s {
            if char == Character("}") {
                if list.last != "{" {
                    return false
                } else {
                    list.popLast()
                }
            } else if char == Character(")") {
                if list.last != "(" {
                    return false
                } else {
                    list.popLast()
                }
            } else if char == Character("]") {
                if list.last != "[" {
                    return false
                } else {
                    list.popLast()
                }
            } else {
                list.append(char)
            }            
        }

        if list.count == 0 {
            return true
        } else {
            return false
        }
    }
}

print(Solution())