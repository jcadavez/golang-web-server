package main

import (
	"fmt"
	"log"
	"net/http"
)

func main() {
	http.HandleFunc("/health", func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprintf(w, "Healthcheck works!")
	})

	fmt.Printf("Starting server at port 1000\n")
	if err := http.ListenAndServe(":1000", nil); err != nil {
		log.Fatal(err)
	}
}
