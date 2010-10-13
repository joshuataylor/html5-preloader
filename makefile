# html5-preloader
# http://code.google.com/p/html5-preloader 
ver=0.4

all: full lite min

full: js/html5-preloader.js js/rotary_extension.js
	cat js/html5-preloader.js js/rotary_extension.js > downloads/html5-preloader$(ver).full.js

min: js/html5-preloader.js js/rotary_extension.js
	echo "/* html5-preloader (min) http://code.google.com/p/html5-preloader */" > downloads/html5-preloader$(ver).min.js
	yui-compressor --type js js/html5-preloader.js >> downloads/html5-preloader$(ver).min.js
	yui-compressor --type js js/rotary_extension.js >> downloads/html5-preloader$(ver).min.js

lite: js/html5-preloader.js
	echo "/* html5-preloader (lite) http://code.google.com/p/html5-preloader */" > downloads/html5-preloader$(ver).lite.js
	yui-compressor --type js js/html5-preloader.js >> downloads/html5-preloader$(ver).lite.js

clean:
	rm downloads/*