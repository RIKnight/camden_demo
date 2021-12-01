#! /bin/bash
# Based on Scott Logic tutorial: https://blog.scottlogic.com/2016/11/22/using-rally-to-benchmark-elasticsearch.html?spm=a2c65.11461447.0.0.e26a498cgEtFbT

DATA_PATH=~/.rally/benchmarks/data/companies
FILENAME=documents
DOWNLOAD_URL=https://opendata.camden.gov.uk/api/views/iix4-id37/rows.csv?accessType=DOWNLOAD

if [ ! -d $DATA_PATH ]; then
    mkdir -p $DATA_PATH
fi

curl -o $DATA_PATH/$FILENAME.csv $DOWNLOAD_URL
python3 `dirname "$0"`/toJsonWithID.py > $DATA_PATH/$FILENAME.json
pbzip2 -9 -c $DATA_PATH/$FILENAME.json > $DATA_PATH/$FILENAME.json.bz2

echo "The following values will be required in the corpora.documents section of track.json:"
wc -l $DATA_PATH/$FILENAME.json | awk {'print "Document count: " $1'}

UNCOMPRESSED_BYTES="$(wc -c < "$DATA_PATH/$FILENAME.json")"
echo "Uncompressed Bytes: $UNCOMPRESSED_BYTES"

COMPRESSED_BYTES="$(wc -c < $DATA_PATH/$FILENAME.json.bz2)"
echo "Compressed Bytes: $COMPRESSED_BYTES"
