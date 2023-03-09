def mergeLinkedList(linkedList1, linkedList2)
    node1 = linkedList1
    node2 = linkedList2
    dict1 = {}
    dict2 = {}
    i = 0
    while node1 and node2
        if node1
            if findCommonNode(node1, dict)
                return findCommonNode(node1, dict)
            else
                dict1[i] = node1
                node1 = node1.next
            end
        end
        if node2
            if findCommonNode(node2, dict)
                return findCommonNode(node2, dict)
            else
                dict2[i] = node2
                node2 = node2.next
            end
        end
        i += 1
    end
    return nil
end

def findCommonNode(node, dict)
    dict.each do |k, v|
        if node = v
            return v
        end
    end
    return nil
end
#asdfacvcxzaasdfasdf