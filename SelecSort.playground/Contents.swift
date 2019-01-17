/*
 选择排序
 
 工作原理：
    每一次从待排序的数据元素中选出最小的一个元素，存放在序列的起始位置，然后，再从剩余未排序元素中继续寻找最小元素，然后放到已排序序列的末尾。以此类推，直到全部待排序的数据元素排完。
 时间复杂度：
    最坏时间复杂度为 O(n²)，平均时间复杂度为 O(n²)，空间复杂度为 O(1)。
 是否稳定：
    不稳定。
 */
class SelecSort {
    func selecSort(_ nums: [Int]) -> [Int] {
        
        var temp = 0 // 用于交换的临时值
        var minIndex = 0 // 记录最小值的下标
        var tempArray = nums
        
        for i in 0..<tempArray.count {
            minIndex = i
            for j in i..<tempArray.count {
                if (tempArray[j] < tempArray[minIndex]) {
                    minIndex = j
                }
            }
            
            temp = tempArray[i]
            tempArray[i] = tempArray[minIndex]
            tempArray[minIndex] = temp
        }
        return tempArray
    }
}

let selecSort = SelecSort()
var array = [3,1,10,20,1,2,4,5]
let sortArray = selecSort.selecSort(array)
print(sortArray)

