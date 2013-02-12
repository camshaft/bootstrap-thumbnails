
build: components bootstrap-thumbnails.css bootstrap-thumbnails.js
	@component build --dev

bootstrap-thumbnails.css: bootstrap-thumbnails.less
	node_modules/.bin/recess bootstrap-thumbnails.less --compile > bootstrap-thumbnails.css

components: component.json
	@component install --dev

clean:
	rm -fr build components bootstrap-thumbnails.css

.PHONY: clean
