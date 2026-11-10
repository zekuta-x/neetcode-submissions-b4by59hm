class Solution {
    func isValid(_ s: String) -> Bool {
        if s.count % 2 != 0 {
            return false
        }

        var ans: [Character] = []

        for char in s {
            if char == "{" || char == "[" || char == "(" {
                ans.append(char)
            } else if char == "}" && ans.last == "{" {
                ans.removeLast()
            } else if char == ")" && ans.last == "(" {
                ans.removeLast()
            } else if char == "]" && ans.last == "["  {
                ans.removeLast()
            } else {
                return false
            }
        }

        return ans == []
    }
}
