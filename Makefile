build: main.c
	export GST_PLUGIN_PATH=/work/gst-template/build/gst-plugin/
	gcc main.c -o main `pkg-config --cflags --libs gstreamer-1.0`

run: build
	./main music.mp3

clean:
	rm main