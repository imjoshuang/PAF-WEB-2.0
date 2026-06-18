const fs = require('fs');
const files = [
    'contact-us.html',
    'exhibits.html',
    'history.html',
    'mandate-objectives.html',
    'news-events.html',
    'vision-mission.html'
];

for (const f of files) {
    let c = fs.readFileSync(f, 'utf8');
    c = c.replace(/href="paf-hero\.html"/g, 'href="index.html"');
    fs.writeFileSync(f, c, 'utf8');
    console.log('Done:', f);
}
console.log('All done!');
