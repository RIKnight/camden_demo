# Based on Scott Logic tutorial: https://blog.scottlogic.com/2016/11/22/using-rally-to-benchmark-elasticsearch.html?spm=a2c65.11461447.0.0.e26a498cgEtFbT

import json
import csv
import sys
from pathlib import Path

cols = (("company_name", "string"),
       ("company_number", "string"),
       ("care_of", "string"),
       ("po_box", "string"),
       ("address_line_1", "string"),
       ("address_line_2", "string"),
       ("town", "string"),
       ("county", "string"),
       ("country", "string"),
       ("postcode", "string"),
       ("company_category", "string"))

with open(str(Path.home())+'/.rally/benchmarks/data/companies/documents.csv') as f:
    reader = csv.reader(f)
    next(reader)
    id = 1000
    try:
        for row in reader:
            d = {}
            id = id + 1
            d["id"] = str(id)


            for i in range(len(cols)):
                name, type = cols[i]
                d[name] = row[i]


            print(json.dumps(d))
    except csv.Error:
        sys.exit('file %s, line %d' % ('documents.csv', reader.line_num))
