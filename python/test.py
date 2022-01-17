N=10000
r=0
m=0
for x in range(1,N+1):
    n=((N-x)**x) % 6074001001
    if m<n:
        r=x
        m=n
print(r)
    