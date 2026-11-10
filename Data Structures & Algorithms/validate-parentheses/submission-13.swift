class Solution {
    func isValid(_ s: String) -> Bool {
        if s.count % 2 != 0 {
            return false
        }

        let sList = s.map { String($0) }
        var ans: [String] = []

        for i in 0..<sList.count {
            if sList[i] == "{" || sList[i] == "(" || sList[i] == "[" {
                ans.append(sList[i])
            } else if ans.last == "{" && sList[i] == "}" {
                ans.removeLast()
            } else if ans.last == "[" && sList[i] == "]" {
                ans.removeLast()
            } else if ans.last == "(" && sList[i] == ")" {
                ans.removeLast()
            } else {
                return false
            }
        }

        return ans.count == 0
    }
}
