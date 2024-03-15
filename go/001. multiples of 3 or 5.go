// Multiples of 3 or 5
// https://projecteuler.net/problem=1

package main

import "fmt"

func main() {
	num := 1000
	sum := 0
	for i := 1; i < num; i++ {
		if i%3 == 0 || i%5 == 0 {
			sum += i
		}
	}
	fmt.Println(sum)
}
