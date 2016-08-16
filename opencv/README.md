# OpenCV

This docker image has a vanilla install of opencv with matplotlib, this should be enough to work through many of the examples in (OpenCV Python Tutorials)[https://opencv-python-tutroals.readthedocs.io]

## Displaying Images

Many examples in the tutorials will use `imshow` to display images, to enable this from the docker container do the following:

### OSX

```
$ brew install Caskroom/cask/xquartz
$ brew install socat
$ open -a XQuartz
$ echo $DISPLAY # from the xterm in XQuartz
$ socat TCP-LISTEN:6000,reuseaddr,fork UNIX-CLIENT:\"<the-display>\"
$ docker run -e DISPLAY=<your-ip>:0 akiellor/opencv
```
