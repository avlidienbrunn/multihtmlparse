// @nuget: HtmlAgilityPack
// @nuget: AngleSharp

using System;
using System.Net;
using HtmlAgilityPack;
using System.Collections.Generic;
using System.Text;
using AngleSharp.Html.Parser;

public class Program
{
	public static void Main(string[] args)
	{
                HtmlDocument agility = new HtmlDocument();
                string htmlstring = "";
                if(args.Length >= 1){
                        htmlstring = args[0];
                }else{
                        htmlstring = "";
                }
                agility.LoadHtml(htmlstring);

                HtmlParser parser = new HtmlParser();
                var angle = parser.ParseDocument(htmlstring);

                Console.WriteLine(String.Format("AngleSharp: {0}", Convert.ToBase64String(Encoding.UTF8.GetBytes(angle.DocumentElement.OuterHtml))));
                Console.WriteLine(String.Format("HtmlAgilityPack: {0}", Convert.ToBase64String(Encoding.UTF8.GetBytes(agility.DocumentNode.OuterHtml))));
	}
}