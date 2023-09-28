package main

import (
	"encoding/base64"
	"fmt"
	"log"
	"os"
	"strings"

	"github.com/PuerkitoBio/goquery"
	"github.com/antchfx/htmlquery"
)

func main() {
	// goquery
	doc, err := goquery.NewDocumentFromReader(strings.NewReader(os.Args[1]))
	if err != nil {
		log.Fatal(err)
	}
	goquery_outerHTML, err := goquery.OuterHtml(doc.First())
	if err != nil {
		log.Fatal(err)
	}
	fmt.Printf("goquery: %s\n", base64.StdEncoding.EncodeToString([]byte(goquery_outerHTML)))

	doc2, err := htmlquery.Parse(strings.NewReader(os.Args[1]))
	if err != nil {
		log.Fatal(err)
	}

	fmt.Printf("htmlquery: %s\n", base64.StdEncoding.EncodeToString([]byte(htmlquery.OutputHTML(doc2.FirstChild, true))))
}
