## Camden Demo Track

This track is based on the [Scott Logic tutorial](https://blog.scottlogic.com/2016/11/22/using-rally-to-benchmark-elasticsearch.html?spm=a2c65.11461447.0.0.e26a498cgEtFbT) which uses data sourced from [Camden Council](https://opendata.camden.gov.uk/Business-Economy/Companies-Registered-In-Camden-And-Surrounding-Bor/iix4-id37), detailing information about various companies "in the Borough".

### Example Document

```json
{
    "id": "103248", 
    "company_name": "LOTUSTREE PROPERTY SERVICES LIMITED", 
    "company_number": "12635264", 
    "care_of": "", 
    "po_box": "", 
    "address_line_1": "130 OLD STREET", 
    "address_line_2": "", 
    "town": "LONDON", 
    "county": "", 
    "country": "ENGLAND", 
    "postcode": "EC1V 9BD", 
    "company_category": "Private Limited Company"
}
```

### Parameters

This track allows to overwrite the following parameters with Rally 0.8.0+ using `--track-params`:

None.  This track does not use parameters in this way.

### License

Same license as the original data from Camden Council: [OS OpenData](http://www.ordnancesurvey.co.uk/business-and-government/licensing/using-creating-data-with-os-products/os-opendata.html).
