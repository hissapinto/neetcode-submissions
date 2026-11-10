class Solution {
    func isValid(_ s: String) -> Bool {
        if s.count % 2 != 0 { return false }

        let chars = Array(s)
        var pilha: [Character] = []

        for i in 0..<chars.count {

            switch chars[i] {
            case ")":
                guard let other = pilha.popLast(), other == "(" else {
                    return false
                }
            case"]":
                guard let other = pilha.popLast(), other == "[" else {
                    return false
                }
            case "}":
                guard let other = pilha.popLast(), other == "{" else {
                    return false
                }
            default:
                pilha.append(chars[i])
            }

        }

        if pilha.isEmpty {
            return true
        }
        return false
    }
}
