class ListNode {
    var val: Int
    var next: ListNode?

    init(_ val: Int, next: ListNode? = nil) {
        self.val = val
        self.next = next
    }
}


class MyLinkedList {
    private var head: ListNode?

    init() {}

    var isEmpty: Bool {
        head == nil
    }
    
    func get(_ index: Int) -> Int {
        guard index >= 0 else { return -1 }

        var i = 0

        var curr = head

        while curr != nil {
            if i == index {
                return curr!.val
            }
            i += 1
            curr = curr?.next
        }

        return -1
    }
    
    func addAtHead(_ val: Int) {
        guard !isEmpty else {
            head = ListNode(val)
            return
        }

        let node = ListNode(val, next: head)
        head = node
    }
    
    func addAtTail(_ val: Int) {
        guard !isEmpty else {
            head = ListNode(val)
            return
        }

        var curr = head

        while curr?.next != nil {
            curr = curr?.next
        }

        curr?.next = ListNode(val)
    }
    
    func addAtIndex(_ index: Int, _ val: Int) {
        guard index >= 0 else { return }

        if index == 0 {
            addAtHead(val)
            return
        }

        var curr = head
        var i = 0

        while curr != nil {
            if i == index - 1 {
                let node = ListNode(val, next: curr?.next)
                curr?.next = node
                return
            }
            i += 1
            curr = curr?.next
        }

    }
    
    func deleteAtIndex(_ index: Int) {
        guard index >= 0, head != nil else { return }

        if index == 0 {
            head = head?.next
            return
        }

        var curr = head
        var i = 0

        while curr?.next != nil {
            if i == index - 1 {
                curr?.next = curr?.next?.next
                return
            }
            i += 1
            curr = curr?.next
        }
    }
}

/**
 * Your MyLinkedList object will be instantiated and called as such:
 * let obj = MyLinkedList()
 * let ret_1: Int = obj.get(index)
 * obj.addAtHead(val)
 * obj.addAtTail(val)
 * obj.addAtIndex(index, val)
 * obj.deleteAtIndex(index)
 */