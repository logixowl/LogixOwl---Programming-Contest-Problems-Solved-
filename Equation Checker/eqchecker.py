
tc = int(input())

for t in range(tc):
    equation = input().strip().split(' ')
    [a,b] = [int(equation[0]), int(equation[2])]
    s = equation[1]
    c = float(equation[4])

    result = None
    if s=="+":
        result = a+b
    elif s=="-":
        result = a-b
    elif s=="*":
        result = a*b
    elif s=="/" and b!=0:
        result = round(a/b,2)
    
    if result==c:
        print('yes')
    else:
        print('no')