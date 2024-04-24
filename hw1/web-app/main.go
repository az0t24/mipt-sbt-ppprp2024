package main

import (
	"fmt"
	"log"
	"net/http"
	"sync/atomic"
	"time"
)

var timeRequests atomic.Int32

func main() {
	serveMux := http.NewServeMux()
	serveMux.HandleFunc("/time", timeHandler)
	serveMux.HandleFunc("/statistics", statisticsHandler)

	log.Printf("Starting server on port 8080")
	log.Fatal(http.ListenAndServe(":8080", serveMux))
}

func timeHandler(writer http.ResponseWriter, request *http.Request) {
	timeRequests.Add(1)
	writer.WriteHeader(http.StatusOK)
	_, err := writer.Write([]byte(time.Now().Format(time.RFC1123)))
	if err != nil {
		log.Printf("Error writing response for /time: %v", err)
	}
}

func statisticsHandler(writer http.ResponseWriter, request *http.Request) {
	writer.WriteHeader(http.StatusOK)
	_, err := writer.Write([]byte(fmt.Sprint(timeRequests.Load())))
	if err != nil {
		log.Printf("Error writing response for /statistics: %v", err)
	}
}
