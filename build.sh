set -xe

rm -rf dist
mkdir dist

cp index.html dist/
cp devlogs.html dist/
cp posts.html dist/
cp products.html dist/


cp -r css/ dist/css/
cp -r images/ dist/images/
cp -r fonts/ dist/fonts/

