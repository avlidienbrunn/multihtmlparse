## MultiHTMLParse

This project was made to test multiple server-side HTML parsers, to compare their functionality to each other, and web browsers.

![image](https://github.com/avlidienbrunn/multihtmlparse/assets/1272648/63763f43-6882-4a97-929c-4d8ccabd8c05)


## Running

`docker-compose down && docker-compose build --parallel; docker-compose up;`

Then visit `http://127.0.0.1/`

## Running CLI

`docker-compose down && docker-compose build --parallel; docker-compose up;`

`echo "html=<h1>lol</h1>"|docker exec -i parse_dotnet "/usr/lib/cgi-bin/parsehtml"`

## Demo

[http://htmlparse.hackaplaneten.se/](http://htmlparse.hackaplaneten.se/)

## FAQ

* Why CGI? WTF?
    - I didn't feel like implementing web server/framework for every language.
* Why not newer docker-compose version?
    - Because then it didnt work with podman
* Can you add XYZ parser/language?
    - Maybe, but I wont be actively maintaining this project. Feel free to send a PR, or make a fork.
* Why ~~GPL~~ MIT license?
    - Even though no future customer deserves to pay for this crappy code, I don't want any contributor to withhold code for the sake of avoiding "locking it into" a GPL-like license. So MIT it is.

## Currently supported parsers

* dotnet/AngleSharp
* dotnet/HtmlAgilityPack
* elixir/floki
* elixir/floki+fasthtml
* elixir/floki+html5ever
* golang/goquery
* golang/htmlquery
* java/jsoup
* node/node-html-parser
* node/cheeriojsdom
* node/parse5
* node/jsdom
* php/DOMDocument
* php/SimpleXML
* python/html.parser
* python/html5lib
* python/lxml
* ruby/nokogiri
* ruby/ox
* rust/scraper

## TODO
* Use smaller base docker images
    * Use a builder to make rebuilds faster
* More parsers
    * Options for specific version of parser
* Make parsers return interesting standard data like tag count, first `<a>` etc
* Make frontend better at comparing results
    * Make an actual frontend
