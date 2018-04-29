
#Democracy in danger 
#http://acm.timus.ru/problem.aspx?space=1&num=1025

k = input("enter the number of groups")
a = []
for i in range(k):
	a.append(input())
	
a = sorted(a)

voters = 0
for i in range(k/2+1):
	voters += (a[i]/2)+1
	
	
print voters
	
	

