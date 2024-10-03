#! /bin/bash

echo "build VODML"
python -m processVodml

echo "build MIVOT snippets"
echo "do not forget 'pip install mivot-validator'"
[ -e ../mivot/mango ] && rm -rf ../mivot/mango
mivot-snippet-model file://`pwd`/../vo-dml/desc.mango.vo-dml.xml `pwd`/../mivot/
mv ../mivot/desc ../mivot/mango

cd ../doc
echo "compile latex"
rm *.aux
make forcetex


cd ../utils


