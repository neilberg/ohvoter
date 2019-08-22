# Making the public State of Ohio voter records more useful

The secretary of state for Ohio releases records for all Ohio voters that include:
- name
- date of birth
- address
- voting records (by election, and only IF you showed up, not the actual vote)
- party affiliation given for primary elections
- voting district information

This is great information, but it is also inconvenient to use.

## Site for downloading data (includes a link to data file layouts too):
By county (88 as .CSVs) https://www6.sos.state.oh.us/ords/f?p=111:1 
Statewide (4 huge files, around 180MB each as GZIPs, 1.5GB each as unpacked CSVs) https://www6.sos.state.oh.us/ords/f?p=VOTERFTP:STWD:::#stwdVtrFiles

Noble county (a small county for testing): 
https://www6.sos.state.oh.us/ords/f?p=VOTERFTP:DOWNLOAD::FILE:NO:2:P2_PRODUCT_NUMBER:61 (4mb)

## Data transformation/display to do:
1. Pull data systematically.
2. Create data types below.
3. Extract to a useful nosql or distributed database 

## Data levels to extract:
1. Minimal: Extract just single-row-per-person information, dropping election-related information.
2. Full: Extract just single-row-per-person information, retaining selected summarized per-election information on a single line.
3. Structured (maybe): Use full voter records and allow for searching for specific voting info.

## Goals:
1. Automated data pull
2. HDFS storage
3. ETL for data levels via Spark
4. Storage into text files in HDFS? NoSQL?
5. System to access stored data conveniently.
