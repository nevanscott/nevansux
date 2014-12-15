---
---
shuffle = (a) ->
  i = a.length
  while --i > 0
    j = ~~(Math.random() * (i + 1)) # ~~ is a common optimization for Math.floor
    t = a[j]
    a[j] = a[i]
    a[i] = t
  a

quotes = {{ site.data.quotes | jsonify }}

active = ''

randomize = () ->
	while quotes[0] == active
		quotes = shuffle(quotes)
	quote = quotes[0]
	active = quote
	document.getElementById('quote').innerHTML = quote;
	
randomize()

document.getElementsByTagName('html')[0].onclick = randomize