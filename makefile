all: tileset_0.png pickup/pack.atlas pickup/pack.png player/pack.atlas player/pack.png

tileset_0.png: tiles/*.png
	montage -background none ` ls -1 tiles/* | sort -V` -tile 8x8 -geometry 128x128 tileset_%d.png

pickup/pack.atlas pickup/pack.png: pickup-raw/*.png
	cd texturepacker && java -classpath gdx.jar:gdx-tools.jar com.badlogic.gdx.tools.imagepacker.TexturePacker2 ../pickup-raw/ ../pickup pack

player/pack.atlas player/pack.png: player-raw/*.png
	cd texturepacker && java -classpath gdx.jar:gdx-tools.jar com.badlogic.gdx.tools.imagepacker.TexturePacker2 ../player-raw/ ../player pack

clean:
	@rm -f tileset*.png pickup/pack.atlas pickup/pack.png player/pack.png
