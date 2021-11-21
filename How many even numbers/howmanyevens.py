size=int(input())

arr=input().strip().split(' ')
total = 0
for s in arr:
    n= int(s)
    if n%2==0:
        total+=1

print(total)