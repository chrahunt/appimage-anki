.PHONY: all

all:
	rm -rf build/
	mkdir -p build/anki.AppDir
	cd build/anki.AppDir \
	&& curl -o - https://apps.ankiweb.net/downloads/current/anki-2.1.19-linux-amd64.tar.bz2 \
	  | tar --extract --bzip2 --strip-components=1 --file -
	curl --location -o build/anki.AppDir/AppRun https://github.com/AppImage/AppImageKit/releases/download/12/AppRun-x86_64
	chmod +x build/anki.AppDir/AppRun
	# AppRun expects this directory to exist.
	mkdir build/anki.AppDir/usr
