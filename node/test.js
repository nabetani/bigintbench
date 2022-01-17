const N=10000n;

r=0
m=0

for( let x=1n ; x<N ; ++x){
    let n=(((N-x)**x) / 7n) % 6074001001n
    if (m<n){
        r=x;
        m=n;
    }
}
console.log(r);