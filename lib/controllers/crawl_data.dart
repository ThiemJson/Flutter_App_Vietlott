import 'package:flutter_vietlott/models/class/CardClass.dart';
import 'package:puppeteer/puppeteer.dart';
import 'package:web_scraper/web_scraper.dart';
import 'dart:convert'; // Contains the JSON encoder
import 'package:http/http.dart'; // Contains a client for making API calls
import 'package:html/parser.dart'; // Contains HTML parsers to generate a Document object
import 'package:html/dom.dart'; // Contains DOM related classes for extracting data from elements

void main() async {
  var browser = await puppeteer.launch();
  var page = await browser.newPage();

  await page.goto('https://vietlott.vn/vi/trung-thuong/ket-qua-trung-thuong/winning-number-645',
      wait: Until.networkIdle);

  // Type into search box.
  await page.type('.devsite-search-field', 'Headless Chrome');

/*  // Wait for suggest overlay to appear and click "show all results".
  var allResultsSelector = '.devsite-suggest-all-results';
  await page.waitForSelector(allResultsSelector);
  await page.click(allResultsSelector);*/

  // Wait for the results page to load and display the results.
  const resultsSelector = '.gsc-results .gsc-thumbnail-inside a.gs-title';
  await page.waitForSelector(resultsSelector);

  // Extract the results from the page.
  var links = await page.evaluate(r'''resultsSelector => {
  const anchors = Array.from(document.querySelectorAll(resultsSelector));
  return anchors.map(anchor => {
    const title = anchor.textContent.split('|')[0].trim();
    return `${title} - ${anchor.href}`;
  });
}''', args: [resultsSelector]);
  print(links.join('\n'));

  await browser.close();
}
