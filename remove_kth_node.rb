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
#asdfaasdfasdfb

#this is a new example change