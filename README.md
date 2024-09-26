# WallpaperDownloader

## How to use

First copy the content of `bashImageDownloader.sh` or clone the repo by doing :
```bash
git clone https://github.com/ALEZ-DEV/WallpaperDownloader.git
cd ./WallpaperDownloader
```

This script simply download a bunch of image depending on the content of a file, like so :
```
https://pbs.twimg.com/media/FxYifRVaQAUm1j7?format=jpg&name=large
https://pbs.twimg.com/media/FxYigSfaMAgm4Yz?format=jpg&name=large
https://pbs.twimg.com/media/FxYigneaYAIPWDu?format=jpg&name=large
https://pbs.twimg.com/media/FxXPRL8aEAAVZ_1?format=jpg&name=large
```
every URL must be separated with an newline, the just start the script by doing these following command :
```bash
chmod +x ./bashImageDownloader.sh
./bashImageDownloader.sh <pathToSomeImageListFile> <OutputFolder>
```
