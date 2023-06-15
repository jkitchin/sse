build:
	jupyter book build sse
	open sse/_build/html/index.html

clean:
	jupyter book clean sse

deploy:
	ghp-import -n -p -f sse/_build/html
