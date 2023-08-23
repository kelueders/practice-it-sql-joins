$ sqlite3
SQLite version 3.38.5 2022-05-06 15:25:27
Enter ".help" for usage hints.
Connected to a transient in-memory database.
Use ".open FILENAME" to reopen on a persistent database.
sqlite> .open AdventureWorks.db
sqlite> .mode html
sqlite> .output adventureworks_docs.html
sqlite> .database
sqlite> .tables
sqlite> .tables
sqlite> .database
sqlite> .tables
sqlite> .mode html
sqlite> .output adventureworks_docs.html
sqlite> .database
sqlite> .headers open
ERROR: Not a boolean value: "open". Assuming "no".
sqlite> .headers
Usage: .headers on|off
sqlite> .headers on
sqlite> .headers open
ERROR: Not a boolean value: "open". Assuming "no".
sqlite> SELECT name
FROM sqlite_master
WHERE type = 'table' and name NOT LIKE 'sqlite_%';
sqlite> select * from sqlite_master WHERE name = 'DimCustomer';
sqlite> .print List of Database Tables
sqlite> .print -----------------
sqlite> .tables
sqlite> .print DimCurrency Table
sqlite> .print ---------
sqlite> PRAGMA table_info('DimCurrency');