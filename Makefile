DIR_FRONTEND=app/static

build_js:
	cd $(DIR_FRONTEND) && npm install && node_modules/.bin/webpack && gzip < bundle.js > bundle.js.gz

clean:
	rm -rf node_modules app/static/{grammar,node_modules,bundle.js}
