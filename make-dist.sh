if [ -z "$1" ]
  then
    echo "No argument supplied. Usage: ./make-dist v1.0"
    exit 1
fi

echo "preparing release $1"

addon_zip="releases/Render Strip $1 - Do not unzip!.zip"
mkdir releases/render-strip
cp *.py releases/render-strip
zip -r "$addon_zip" releases/render-strip -x '*/.git/*' -x '*/.DS_Store/*' -x '*/__pycache__/*' -x '*/releases/*'
rm -r releases/render-strip