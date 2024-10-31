package main

import (
	"fmt"
	"strings"
)

func main() {
	fmt.Println("Hello, World!")

	strings.HasPrefix("Hello, World!", "Hello")
	strings.HasSuffix("Hello, World!", "World!")
}
