upload:
	scp trypandoc.js website:pandoc.org/try/
	scp -r examples website:pandoc.org/try/
	scp index.html website:pandoc.org/try/index.html.in
	ssh website 'sed -e "s/__DATE__/$$(date -Iseconds)/" pandoc.org/try/index.html.in > pandoc.org/try/index.html'
