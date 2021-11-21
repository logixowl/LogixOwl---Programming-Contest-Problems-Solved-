
def shortName(text):
    return '.'.join([word[0].upper() for word in text.split(' ')])

tc = int(input())

for t in range(tc):
    print(shortName(input().strip()))