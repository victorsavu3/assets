all: tileset_0.png

tileset_0.png: tiles/*.png
	montage -background none tiles/*.png -tile 8x8 -geometry 128x128 tileset_%d.png

clean:
	@rm -f tileset*.png
