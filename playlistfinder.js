var cheerio = require('cheerio');
var fs = require('fs');
fs.readFile('youtubepage.html', 'utf8', function(err, html){
	$ = cheerio.load(html);

	var links = "";
	$(".playlist-video").each(function(){
		var link = $(this)['0'].attribs.href;
		var ampsIndex = link.indexOf('&');
		if(ampsIndex > -1 )
			link = link.slice(0, ampsIndex);
		links += "https://www.youtube.com" + link + "\n";
	});
	fs.writeFile("list.txt", links, function(err){
		if(err)
			console.log(err);
	});
	fs.writeFile("title.txt", $(".playlist-title").text().trim(), function(err){
		if(err)
			console.log(err);
	});
});