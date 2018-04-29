#linked list with python 		

class LinkedListNode: #to inherit pass the base class
	def __init__(self, value, nextNode = None):
		self.value = value #public variable
		self.nextNode = nextNode
		

Head = LinkedListNode("10")	

node1 = LinkedListNode("5")
Head.nextNode = node1

node2 = LinkedListNode("8")
node1.nextNode=node2

node3 = LinkedListNode("2")
node2.nextNode = node3

node4 = LinkedListNode("3")
node3.nextNode=node4


def DisplayLinkedList(head):
	currentNode = head
	print "List is :"
	while(currentNode is not None):
		print(str(currentNode.value) )
		currentNode = currentNode.nextNode
	
#DisplayLinkedList(Head)	

def InsertNode(head,value):
	currentNode = head
	node = LinkedListNode(value)
	while(currentNode.nextNode is not None):
		currentNode = currentNode.nextNode
	
	currentNode.nextNode = node
	return head #return head would be required in the case when we are inserting in start


#Head = InsertNode(Head,"20")	
InsertNode(Head,"20")
DisplayLinkedList(Head)


def DeletNode(head,value):
	currentNode = head
	previousNode = head
	if(head.value is value):
		head = currentNode.nextNode
		return head
	while(currentNode.value is not value and currentNode.nextNode is not None):
		previousNode = currentNode
		currentNode = currentNode.nextNode
	if(currentNode.value is not value and currentNode.nextNode is None): #value missing
		print "value is not present in the List so could not be deleted"
	if(currentNode.value is value and currentNode.nextNode is None): #deleting the last node
		previousNode.nextNode = None
	if(currentNode.value is value and currentNode.nextNode is not None):
		previousNode.nextNode = currentNode.nextNode	
	return head

	
Head = DeletNode(Head,"10")

print 'List after deleting an element'	
DisplayLinkedList(Head)