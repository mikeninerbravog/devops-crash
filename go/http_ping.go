// go/http_ping.go
package main

import (
    "fmt"
    "net/http"
)

func main() {
    resp, err := http.Get("https://google.com")
    if err != nil {
        fmt.Println("Request failed:", err)
        return
    }
    fmt.Println("Status Code:", resp.StatusCode)
}
