import UIKit

var matrices = [
    [1,4,7,11,15],
    [2,5,8,12.19],
    [3,6,9,16,22],
    [10,13,14,17,24],
    [18,21,23,26,30]
]

// Leetcode 240
// There are a few different solutions
// Algorithm searches the matrix for a target value
// Collapse different sides
 


func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
    if matrix.isEmpty { return false }
    
    var rows = 0
    var columns = matrix[0].count - 1
    
    while rows < matrix.count && columns >= 0 {
        let currentValue = matrix[rows][columns]
        
        if currentValue == target {
            return true
        }
        
        if currentValue > target {
            columns += 1
        } else {
            rows += 1
        }
    }
    
    return false
}
