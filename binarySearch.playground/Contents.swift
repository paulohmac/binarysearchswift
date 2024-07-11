class BinarySearch {
    func search(in array: [Int], value: Int) -> Int {
        var leftLimit = 0
        var rightLimit = array.count - 1

        while leftLimit < rightLimit {
            var pivot = leftLimit + (rightLimit - leftLimit)
 
            if array[pivot] == value {
                return pivot
            }else if array[pivot] < value {
                leftLimit = pivot + 1
            }else if array[pivot] > value {
                rightLimit = pivot - 1
            }
        }
        return -1
    }
}

print(BinarySearch().search(in: [0,2,4,5,6,7], value: 4))
