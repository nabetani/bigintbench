package main

import "math/big"
import "fmt"

const N=10000

func main(){
	den:=big.NewInt(6074001001)
	r := big.NewInt(0)
	m := big.NewInt(0)
	seven := big.NewInt(7)
	for x:=int64(1) ; x<=N ; x++{
		n0 := big.NewInt(N-x)
		x0 := big.NewInt(x)
		z := new(big.Int).Div(new(big.Int).Exp(n0, x0, nil),seven)
		d := new(big.Int).Mod(z,den)
		if 0<d.Cmp(m) {
			m=d
			r=x0
		}
	}
	fmt.Println(r)
}