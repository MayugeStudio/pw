set -xe

rm -rf dist
mkdir dist

cp index.html dist/
cp main.css dist/
cp reset.css dist/
cp -r images/ dist/images/
cp -r fonts/ dist/fonts/

