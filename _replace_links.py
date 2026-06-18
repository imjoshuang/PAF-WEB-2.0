import re

files = [
    'contact-us.html',
    'exhibits.html',
    'history.html',
    'mandate-objectives.html',
    'news-events.html',
    'vision-mission.html'
]

for f in files:
    with open(f, 'r', encoding='utf-8') as fh:
        c = fh.read()
    c = re.sub(r'href="paf-hero\.html"', 'href="index.html"', c)
    with open(f, 'w', encoding='utf-8') as fh:
        fh.write(c)
    print(f'Done: {f}')
print('All done!')
