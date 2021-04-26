bundle=TheHole
exe=TheHole

echo Building $bundle.app

mkdir $bundle.app/
mkdir $bundle.app/Contents/
mkdir $bundle.app/Contents/MacOS/
mkdir $bundle.app/Contents/Resources/

cp $exe $bundle.app/Contents/MacOS/$bundle
cp -r lib $bundle.app/Contents/MacOS/lib/
cp -r assets $bundle.app/Contents/Resources/assets/
mv $bundle.app/Contents/Resources/assets/Info.plist $bundle.app/Contents/Info.plist
mv $bundle.app/Contents/Resources/assets/icon.icns $bundle.app/Contents/Resources/icon.icns

echo $bundle.app succesfully built
