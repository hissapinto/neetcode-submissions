class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        
        func part(_ iMin: Int,_ iMax: Int) -> Int {
            let mid: Int = (iMax - iMin)/2 + iMin

            if nums[mid] == target {return mid}
            else if iMin == iMax {return -1}

            else if nums[mid] < target {
                return part(mid+1, iMax)
            } else {
                return part(iMin, mid)
            }
        }

        return part(0, (nums.count - 1))
    }
}
