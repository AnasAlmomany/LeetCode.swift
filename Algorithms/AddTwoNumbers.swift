//
//  AddTwoNumbers.swift
//  LeetCode
//
//  Created by Lex Tang on 4/16/15.
//  Copyright (c) 2015 Lex Tang. All rights reserved.
//
//  This Swift class is imitated from another Swift implementation:
//  https://github.com/diwu/LeetCode-Solutions-in-Swift/blob/master/Solutions/Solutions/Medium/Medium_002_Add_Two_Numbers.swift

/*
You are given two linked lists representing two non-negative numbers.
The digits are stored in reverse order and each of their nodes contain a single digit.
Add the two numbers and return it as a linked list.

Input: (2 -> 4 -> 3) + (5 -> 6 -> 4)
Output: 7 -> 0 -> 8
*/

import Foundation


func +(list0: ListNode, list1: ListNode) -> ListNode {
    var x: ListNode? = list0
    var y: ListNode? = list1
    let dummy = ListNode()
    var current = dummy
    var sum = 0
    
    while x != nil || y != nil {
        // Sum
        sum /= 10
        if let _ = x {
            sum += x!.value
            x = x!.next
        }
        if let _ = y {
            sum += y!.value
            y = y!.next
        }
        
        // Move next
        current.next = ListNode(sum % 10)
        current = current.next!
    }
    
    // If the previous node is greater than 10
    if Bool(sum / 10) {
        current.next = ListNode(1)
    }
    
    return dummy.next!
}
