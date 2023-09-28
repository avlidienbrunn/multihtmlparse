from bs4 import BeautifulSoup
import sys
import base64

parsers = [
    'html.parser',
    'html5lib',
    'lxml'
]

for parser in parsers:
    soup = BeautifulSoup(sys.argv[1], parser)
    #                                              i hate python3
    print("{}: {}".format(parser, str(base64.b64encode(bytes(str(soup.find()), 'utf-8')), 'utf-8')))
    
