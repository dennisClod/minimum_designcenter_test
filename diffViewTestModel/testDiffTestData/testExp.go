package main

import (
    "fmt"
    "math/rand"
)

func randInt(min, max int) int {
    return min + rand.Intn(max-min)
}

func main() {
    fmt.Printf("random integer in range [5, 10): %d\n", randInt(5, 10))
}