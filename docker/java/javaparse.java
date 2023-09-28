package com.parsehtml;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import java.util.Base64;

public class java {

    public static void main(String[] args) {

        Document doc;
        String htmlstring;
        // need http protocol
        if (args.length > 0){
            htmlstring = args[0];
        }else{
            htmlstring = "";
        }
        doc = Jsoup.parse(htmlstring);

        System.out.println("jsoup: " + Base64.getEncoder().encodeToString(doc.outerHtml().getBytes()));
    }

}