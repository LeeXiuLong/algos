def linkedListSum1(linkedListOne, linkedListTwo)
    num1 = turnLinkedListToNum(linkedListOne)
    num2 = turnLinkedListToNum(linkedListTwo)

    result_num = num1 + num2
    turnNumToLinkedList(result_num)
end

def turnLinkedListToNum(linkedList)
    currentNode = linkedList
    num_string = ""
    while currentNode != nil
        num_string += currentNode.value.to_s
        currentNode = currentNode.next 
    end
    num_string.reverse.to_i
end

def turnNumToLinkedList(num)
    num_string = num.to_s.reverse
    num_arr = num_string.split("")
    head = LinkedList.new(num[0].to_i)
    prev = head
    current = nil
    1.upto(num_arr.length - 1) do |i|
        current = LinkedList.new(num[i].to_i)
        prev.next = current
        prev = current
    end
    head
end

def linkedListSum2(linkedListOne, linkedListTwo)
    leftover = 0
    currentOne = linkedListOne
    currentTwo = linkedListTwo
    prev = None
    head = None
    while currentOne || currentTwo
        currentOneVal = currentOne ? currentOne.value : 0
        currentTwoVal = currentTwo ? currentTwo.value : 0

        currentSum = currentOneVal + currentTwoVal + leftover
        currentVal = currentSum % 10
        leftover = (currentSum - currentVal) / 10
        newNode = LinkedList.new(currentVal)
        
        if head
            prev.next = newNode
            prev = newNode
        else
            head = newNode
            prev = head
        end
        currentOne = currentOne.next ? currentOne.next : nil
        currentTwo = currentTwo.next ? currentTwo.next : nil
    end
end
#anothaone