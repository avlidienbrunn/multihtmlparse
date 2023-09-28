const nodehtmlparser = require('node-html-parser');
const cheerio = require("cheerio");
const parse5 = require("parse5");
const jsdom = require("jsdom");
const process = require('process');

async function sigh() {
    nodehtml_result = nodehtmlparser.parse(process.argv[2]);
    console.log(`node-html-parser: ${btoa(nodehtml_result)}`)

    cheerio_result = cheerio.load(process.argv[2]);
    console.log(`cheerio: ${btoa(cheerio_result.root())}`);

    parse5result = parse5.parse(process.argv[2]);
    parse5firstlink = parse5.serialize(parse5result)
    console.log(`parse5: ${btoa(parse5firstlink)}`);

    jsdom_result = new jsdom.JSDOM(process.argv[2]);
    console.log(`jsdom: ${btoa(jsdom_result.window.document.documentElement.outerHTML)}`);
}

sigh();