var currentPage =
    "https://newsapi.org/v2/top-headlines?country=in&apiKey=b959933666884935be61f74caa1c9a9b";
var india =
    "https://newsapi.org/v2/top-headlines?country=in&q=india&apiKey=b959933666884935be61f74caa1c9a9b";
var business =
    "https://newsapi.org/v2/top-headlines?country=in&q=business&apiKey=b959933666884935be61f74caa1c9a9b";
var politics =
    "https://newsapi.org/v2/top-headlines?country=in&q=politics&apiKey=b959933666884935be61f74caa1c9a9b";
var sports =
    "https://newsapi.org/v2/top-headlines?country=in&q=sports&apiKey=b959933666884935be61f74caa1c9a9b";
var technology =
    "https://newsapi.org/v2/top-headlines?country=in&q=technology&apiKey=b959933666884935be61f74caa1c9a9b";
var startups =
    "https://newsapi.org/v2/top-headlines?country=in&q=startups&apiKey=b959933666884935be61f74caa1c9a9b";
var entertainment =
    "https://newsapi.org/v2/top-headlines?country=in&q=entertainment&apiKey=b959933666884935be61f74caa1c9a9b";
var science =
    "https://newsapi.org/v2/top-headlines?country=in&q=science&apiKey=b959933666884935be61f74caa1c9a9b";

var currentIndex = 0;
var catlist = [
  "India",
  "Business",
  "Health",
  "Sports",
  "Technology",
  "Start-ups",
  "Entertainment",
  "Science"
];

var linkList = [
  "https://newsapi.org/v2/top-headlines?country=in&q=india&apiKey=b959933666884935be61f74caa1c9a9b",
  "https://newsapi.org/v2/top-headlines?q=business&apiKey=b959933666884935be61f74caa1c9a9b",
  "https://newsapi.org/v2/top-headlines?q=health&apiKey=b959933666884935be61f74caa1c9a9b",
  "https://newsapi.org/v2/top-headlines?q=sports&apiKey=b959933666884935be61f74caa1c9a9b",
  "https://newsapi.org/v2/top-headlines?q=tech&apiKey=b959933666884935be61f74caa1c9a9b",
  "https://newsapi.org/v2/top-headlines?q=startup&apiKey=b959933666884935be61f74caa1c9a9b",
  "https://newsapi.org/v2/top-headlines?q=entertainment&apiKey=b959933666884935be61f74caa1c9a9b",
  "https://newsapi.org/v2/top-headlines?q=science&apiKey=b959933666884935be61f74caa1c9a9b",
];
