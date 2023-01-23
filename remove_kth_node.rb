def remove_kth_node(head, k)
    firstPointer = head
    secondPointer = head
    counter = 0
    while counter < k
        secondPointer = secondPointer.next
        counter += 1
    end
    if !secondPointer
        head.value = head.next.value
        head.next = head.next.next
        return
    while secondPointer.next != nil
        firstPointer = firstPointer.next
        secondPointer = secondPointer.next
    end
    firstPointer.next = firstPointer.next.next

    #more stuff and again and againasdfasdfasdfasdf