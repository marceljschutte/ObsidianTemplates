var none = '(none)'; 
var p = dv.pages('"' + dv.current().file.folder + '"').where(p => p.file.day).map(p => [p.file.name, p.file.day.toISODate()]).sort(p => p[1]); 
var t = dv.current().file.day ? dv.current().file.day.toISODate() : luxon.DateTime.now().toISODate();
var format = app['internalPlugins']['plugins']['daily-notes']['instance']['options']['format'] || 'YYYY-MM-DD'; 
var current = '(' + moment(t).format(format) + ')'; 
var nav = []; 
var today = p.find(p => p[1] == t); 
var next = p.find(p => p[1] > t); 
var prev = undefined;
p.forEach(function (p, i) { 
	if (p[1] < t) { 
		prev = p; 
	} 
});
nav.push(prev ? '[[' + prev[0] + ']]' : none); 
//nav.push(today ? today[0] : none); 
nav.push(today ? today[0] : current); 
nav.push(next ? '[[' + next[0] + ']]' : none);

//dv.list(nav); 
//dv.paragraph(nav.join(" · ")); 
dv.paragraph(nav[0] + ' ← ' + nav[1] + ' → ' + nav[2]);
