# Cross DBMS Table features and nuiances
The following list out the most common TABLE features supported by the most popular DBMS as off 2024-07-15.  This is still work in progress.  You should trust but verify the information in this cheat sheet.

|Features                                                                   |ANSI_99|DB2_LUW|Oracle |MS_SQL |SQLite |MySQL  |PostgreSQL|
|---------------------------------------------------------------------------|:-----:|:-----:|:-----:|:-----:|:-----:|:-----:|:------:|
|**Create Table**:                                                          |       |       |       |       |       |       |        |
|&nbsp; &nbsp;`IF NOT EXISTS`                                               | Y     | Y     | Y     |       | Y     | Y     | Y      |
|**Data Types**:                                                            |       |       |       |       |       |       |        |
|&nbsp; &nbsp; Boolean Types:                                               |       |       |       |       |       |       |        |
|&nbsp; &nbsp; &nbsp; &nbsp;`BOOLEAN`                                       | Y     | Y     |       |       |       | Y     | Y      |
|&nbsp; &nbsp; &nbsp; &nbsp;`BIT`                                           |       |       |       | Y     |       |       |        |
|&nbsp; &nbsp; Integer Types:                                               |       |       |       |       |       |       |        |
|&nbsp; &nbsp; &nbsp; &nbsp;`TINYINT`                                       |       |       |       | Y     |       | Y     |        |
|&nbsp; &nbsp; &nbsp; &nbsp;`SMALLINT`                                      | Y     | Y     |       | Y     |       | Y     | Y      |
|&nbsp; &nbsp; &nbsp; &nbsp;`MEDIUMINT`                                     |       |       |       |       |       | Y     |        |
|&nbsp; &nbsp; &nbsp; &nbsp;`INTEGER` \ `INT`                               | Y     | Y     |       | Y     | Y     | Y     | Y      |
|&nbsp; &nbsp; &nbsp; &nbsp;`BIGINT`                                        |       | Y     |       | Y     |       | Y     | Y      |
|&nbsp; &nbsp; &nbsp; &nbsp;`MONEY`                                         |       |       |       | Y     |       |       | Y      |
|&nbsp; &nbsp; &nbsp; &nbsp;`SMALLMONEY`                                    |       |       |       | Y     |       |       |        |
|&nbsp; &nbsp; &nbsp; &nbsp;`SERIAL` \ `SMALLSERIAL` \ `BIGSERIAL`          |       |       |       |       |       |       | Y      |
|&nbsp; &nbsp; Fixed Point Types:                                           |       |       |       |       |       |       |        |
|&nbsp; &nbsp; &nbsp; &nbsp;`DECIMAL`                                       | Y     | Y     |       | Y     |       | Y     | Y      |
|&nbsp; &nbsp; &nbsp; &nbsp;`NUMBER`                                        |       |       | Y     |       |       |       |        |
|&nbsp; &nbsp; &nbsp; &nbsp;`NUMERIC` \ `NUM`                               | Y     | Y     |       | Y     | Y     | Y     | Y      |
|&nbsp; &nbsp; Floating Point Types:                                        |       |       |       |       |       |       |        |
|&nbsp; &nbsp; &nbsp; &nbsp;`FLOAT`                                         | Y     | Y     |       | Y     | Y     | Y     | Y      |
|&nbsp; &nbsp; &nbsp; &nbsp;`REAL`                                          | Y     | Y     |       | Y     |       |       | Y      |
|&nbsp; &nbsp; &nbsp; &nbsp;`DOUBLE`                                        |       |       |       |       |       | Y     |        |
|&nbsp; &nbsp; &nbsp; &nbsp;`DOUBLE PRECISION`                              | Y     | Y     |       |       |       | Y     | Y      |
|&nbsp; &nbsp; &nbsp; &nbsp;`BINARY_FLOAT` \ `BINARY_DOUBLE`                |       |       | Y     |       |       |       |        |
|&nbsp; &nbsp; Character Types:                                             |       |       |       |       |       |       |        |
|&nbsp; &nbsp; &nbsp; &nbsp;`CHARACTER` \ `CHAR`                            | Y     | Y     | Y     | Y     |       | Y     | Y      |
|&nbsp; &nbsp; &nbsp; &nbsp;`CHAR VARYING`                                  | Y     | Y     |       |       |       |       | Y      |
|&nbsp; &nbsp; &nbsp; &nbsp;`VARCHAR`                                       |       | Y     |       |       |       | Y     | Y      |
|&nbsp; &nbsp; &nbsp; &nbsp;`VARCHAR2`                                      |       |       | Y     |       |       |       |        |
|&nbsp; &nbsp; &nbsp; &nbsp;`TEXT`                                          |       |       |       | Y     | Y     | Y     | Y      |
|&nbsp; &nbsp; &nbsp; &nbsp;`LONG`                                          |       |       | Y     |       |       |       |        |
|&nbsp; &nbsp; &nbsp; &nbsp;`CLOB`                                          | Y     | Y     | Y     |       |       |       |        |
|&nbsp; &nbsp; &nbsp; &nbsp; National Character Types:                      |       |       |       |       |       |       |        |
|&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;`NCHAR`                           | Y     | Y     | Y     |       |       |       |        |
|&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;`NVARCHAR`                        |       | Y     |       |       |       |       |        |
|&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;`NVARCHAR2`                       |       |       | Y     |       |       |       |        |
|&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;`NTEXT`                           |       |       |       | Y     |       |       |        |
|&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;`NCLOB`                           | Y     | Y     | Y     |       |       |       |        |
|&nbsp; &nbsp; &nbsp; &nbsp; Character Set:                                 |       |       |       |       |       |       |        |
|&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;`CHARACTER SET`                   | Y     |       |       |       |       | Y     |        |
|&nbsp; &nbsp; &nbsp; &nbsp; Collation:                                     |       |       |       |       |       |       |        |
|&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;`COLLATE`                         | Y     | Y     | Y     | Y     | Y     | Y     | Y      |
|&nbsp; &nbsp; Binary Types:                                                |       |       |       |       |       |       |        |
|&nbsp; &nbsp; &nbsp; &nbsp;`BIT`                                           | Y     |       |       |       |       |       | Y      |
|&nbsp; &nbsp; &nbsp; &nbsp;`BIT VARYING`                                   | Y     |       |       |       |       |       | Y      |
|&nbsp; &nbsp; &nbsp; &nbsp;`BINARY`                                        |       | Y     |       | Y     |       | Y     |        |
|&nbsp; &nbsp; &nbsp; &nbsp;`BINARY VARYING`                                |       | Y     |       |       |       |       |        |
|&nbsp; &nbsp; &nbsp; &nbsp;`VARBINARY`                                     |       | Y     |       | Y     |       | Y     |        |
|&nbsp; &nbsp; &nbsp; &nbsp;`BYTEA`                                         |       |       |       |       |       |       | Y      |
|&nbsp; &nbsp; &nbsp; &nbsp;`BLOB`                                          | Y     | Y     | Y     |       | Y     | Y     |        |
|&nbsp; &nbsp; &nbsp; &nbsp;`DBBLOB`                                        |       | Y     |       |       |       |       |        |
|&nbsp; &nbsp; &nbsp; &nbsp;`RAW`                                           |       |       | Y     |       |       |       |        |
|&nbsp; &nbsp; &nbsp; &nbsp;`LONG RAW`                                      |       |       | Y     |       |       |       |        |
|&nbsp; &nbsp; &nbsp; &nbsp;`IMAGE`                                         |       |       |       | Y     |       |       |        |
|&nbsp; &nbsp; Temporal Types:                                              |       |       |       |       |       |       |        |
|&nbsp; &nbsp; &nbsp; &nbsp;`DATE`                                          | Y     | Y     | Y     | Y     |       | Y     | Y      |
|&nbsp; &nbsp; &nbsp; &nbsp;`TIME`                                          | Y     | Y     |       | Y     |       | Y     | Y      |
|&nbsp; &nbsp; &nbsp; &nbsp;`TIME WITH TIME ZONE`                           | Y     |       |       |       |       |       | Y      |
|&nbsp; &nbsp; &nbsp; &nbsp;`DATETIME`                                      |       |       | Y     |       |       | Y     |        |
|&nbsp; &nbsp; &nbsp; &nbsp;`DATETIME2`                                     |       |       |       | Y     |       |       |        |
|&nbsp; &nbsp; &nbsp; &nbsp;`TIMESTAMP`                                     | Y     | Y     | Y     |       |       | Y     | Y      |
|&nbsp; &nbsp; &nbsp; &nbsp;`TIMESTAMP WITH TIME ZONE`                      | Y     |       | Y     |       |       |       | Y      |
|&nbsp; &nbsp; &nbsp; &nbsp;`DATETIMEOFFSET`                                |       |       |       | Y     |       |       |        |
|&nbsp; &nbsp; &nbsp; &nbsp;`SMALLDATETIME`                                 |       |       |       | Y     |       |       |        |
|&nbsp; &nbsp; &nbsp; &nbsp;`YEAR`                                          |       |       |       |       |       | Y     |        |
|&nbsp; &nbsp; Collection Types:                                            |       |       |       |       |       |       |        |
|&nbsp; &nbsp; &nbsp; &nbsp;`ARRAY`                                         | Y     |       |       |       |       |       | Y      |
|&nbsp; &nbsp; &nbsp; &nbsp;`ENUM`                                          |       |       |       |       |       | Y     | Y      |
|&nbsp; &nbsp; &nbsp; &nbsp;`SET`                                           |       |       |       |       |       | Y     |        |
|&nbsp; &nbsp; Reference Types:                                             |       |       |       |       |       |       |        |
|&nbsp; &nbsp; &nbsp; &nbsp;`REF`                                           | Y     |       |       |       |       |       |        |
|&nbsp; &nbsp; &nbsp; &nbsp;`ROWID`                                         |       |       | Y     |       |       |       |        |
|&nbsp; &nbsp; &nbsp; &nbsp;`UROWID`                                        |       |       | Y     |       |       |       |        |
|&nbsp; &nbsp; Object Types:                                                |       |       |       |       |       |       |        |
|&nbsp; &nbsp; &nbsp; &nbsp;`JSON`                                          |       |       | Y     | Y     |       |       | Y      |
|&nbsp; &nbsp; &nbsp; &nbsp;`XML`                                           |       | Y     |       |       |       |       | Y      |
|&nbsp; &nbsp; Other Types:                                                 |       |       |       |       |       |       |        |
|&nbsp; &nbsp; &nbsp; &nbsp;`CIDR` \ `INET` \ `MACADDR`                     |       |       |       |       |       |       | Y      |
|&nbsp; &nbsp; &nbsp; &nbsp;`UUID`                                          |       |       |       |       |       |       | Y      |
|&nbsp; &nbsp; &nbsp; &nbsp;`UNIQUEIDENTIFIER`                              |       |       |       | Y     |       |       | Y      |
|                                                                           |       |       |       |       |       |       |        |
|**Column Options**                                                         |       |       |       |       |       |       |        |
|&nbsp; &nbsp;`NOT NULL`                                                    |       | Y     | Y     | Y     | Y     | Y     | Y      |
|&nbsp; &nbsp;`INVISIBLE` \ `HIDDEN`                                        |       | Y     | Y     |       | Y     | Y     |        |
|&nbsp; &nbsp;`PRIMARY KEY`                                                 |       | Y     |       | Y     | Y     | Y     | Y      |
|&nbsp; &nbsp;`UNIQUE`                                                      |       | Y     |       | Y     | Y     | Y     | Y      |
|&nbsp; &nbsp;`CHECK`                                                       |       | Y     | Y     | Y     | Y     | Y     | Y      |
|&nbsp; &nbsp;`DEFAULT`                                                     |       | Y     | Y     | Y     | Y     | Y     | Y      |
|&nbsp; &nbsp;`SECURED WITH` \ `ENCRYPT` \ `ENCRYPTED WITH`                 |       | Y     | Y     | Y     |       |       |        |
|&nbsp; &nbsp;`COMMENT`                                                     |       |       |       |       | Y     | Y     | Y      |
|&nbsp; &nbsp;**Generated Column**                                          |       |       |       |       |       |       |        |
|&nbsp; &nbsp; &nbsp; &nbsp;`VIRTUAL` \ `GENERATED ALWAYS AS`               |       | Y     | Y     | Y     | Y     | Y     | Y      |
|&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;`STORED` \ `VIRTUAL`              |       |       | Y     |       | Y     | Y     | Y      |
|&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;`PERSISTED`                       |       |       |       | Y     |       |       |        |
|&nbsp; &nbsp;**Identity Options**                                          |       |       |       |       |       |       |        |
|&nbsp; &nbsp; &nbsp; &nbsp;`AUTO_INCREMENT`                                |       |       |       |       | Y     | Y     |        |
|&nbsp; &nbsp; &nbsp; &nbsp;`GENERATED ALWAYS`                              |       | Y     | Y     |       |       |       | Y      |
|&nbsp; &nbsp; &nbsp; &nbsp;`GENERATED BY DEFAULT`                          |       | Y     | Y     |       |       |       |        |
|&nbsp; &nbsp; &nbsp; &nbsp;`IDENTITY`                                      |       | Y     |       | Y     |       |       |        |
|&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;`START WITH`                      |       | Y     | Y     | Y     |       |       |        |
|&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;`INCREMENT BY`                    |       | Y     | Y     | Y     |       |       |        |
|**Table Options**                                                          |       |       |       |       |       |       |        |
|&nbsp; &nbsp;`COMMENT`                                                     |       |       |       |       |       | Y     |        |
|&nbsp; &nbsp;`COMPRESS` \ `COMPRESSION` \ `DATA_COMPRESSION`               |       | Y     | Y     | Y     |       | Y     |        |
|&nbsp; &nbsp;`TABLESPACE`                                                  |       | Y     | Y     | Y     |       | Y     | Y      |
|**Index Options**                                                          |       |       |       |       |       |       |        |
|&nbsp; &nbsp;`INCLUDE`                                                     |       |       |       | Y     |       |       | Y      |
-----

# Footnotes:
Not all vendor specific data types are mapped out.  If there is a missing data type that you care about do contact me with a link to your research.<br>
The above are extracted out from the following:
* ANSI-99:      https://sql-99.readthedocs.io/en/latest/index.html
* DB2:          https://www.ibm.com/docs/en/db2/11.5?topic=statements-create-table <sup>v 11.5</sup>
* Oracle:       https://docs.oracle.com/en/database/oracle/oracle-database/21/sqlrf/CREATE-TABLE.html <sup>v 21c</sup>
* MS-SQL:       https://learn.microsoft.com/en-us/sql/t-sql/statements/create-table-transact-sql?view=sql-server-ver16 <sup>v 16</sup>
* SQLite:       https://www.sqlite.org/lang_createtable.html <sup>v 3.45</sup>
* MySQL:        https://dev.MySQL.com/doc/refman/8.4/en/data-types.html <sup>v 8.4</sup>
* PostgreSQL:   https://www.postgresql.org/docs/current/sql-createtable.html <sup>v 16</sup>
* JPA (ORM):    https://jakarta.ee/specifications/persistence/3.2/jakarta-persistence-spec-3.2 <sup>v 3.2</sup>
* SQLAlchemy:   https://docs.sqlalchemy.org/en/20/dialects/index.html
* Reference:    https://www.databasestar.com/sql-data-types/

## Table/Column name length
* Different DBMS have different length for their identifier name with the following variance:
    *   |DBMS       |Max Length|
        |-----------|---------:|
        | DB2       | 128      |
        | Oracle    | 30       |
        | MS-SQL    | 128      |
        | SQLite    | >= 128   |
        | MySQL     | 64       |
        | PostgreSQL| 63       |
    * If you are designing a data model to be portable between different DBMS, you should consider a identifier name **no** longer than 30 characters.

## Maximum row size
* Depending on the pagesize, the default maximum row size is as follows:
    *   |DBMS       |Max Size  |
        |-----------|---------:|
        | DB2       | 2 Gb     |
        | Oracle    | 4 Gb     |
        | MS-SQL    | 8,060 b*&nbsp;|
        | SQLite    | 1 Gb     |
        | MySQL     | 65,535 b*&nbsp;|
        | PostgreSQL| 1.6 Tb   |
    * Be cautious when using fixed length character or binary data type.

## Data Types
Always pick the data type that is adequate to store your values.  It is not just a syntax requirement, it is part of your documentation.
* For example, a `SMALLINT` data type is more than sufficient to be the primary key for a table that stores all the countries on the planet.  It conveys a maximum ceiling for ID values of **32,767** and not **2,147,483,647**.  In this example, it should be further constrain to a maximum of **200** with the following:
    * `ID   SMALLINT NOT NULL CHECK( ID BETWEEN 1 AND 200 )`
    * **SQLite** uses type affinity.  SEE: https://www.sqlite.org/datatype3.html#affinity
        * Any name for the data type will be accepted.


### Boolean:
* The following are data type for boolean with the following variance:
    *   |DBMS       |Type       |
        |-----------|-----------|
        | DB2       |`BOOLEAN`  |
        | Oracle    |`NUMBER(1)`|
        | MS-SQL    |`BIT`      |
        | SQLite    |`INTEGER`  |
        | MySQL     |`BOOLEAN`  |
        | PostgreSQL|`BOOLEAN`  |
    * DBMS that does not have an explicit Boolean data type should use an integer, of precision one or storage size of one byte, constraint with `CHECK( colName IN(0 ,1 ,NULL))`.


### Integer:
* All DBMS listed above support signed integer data type with the following variance:
    *   |DBMS       |i8        |u8        |i16       |u16      |i32      |u32          |i64          |u64          |i128         |u128         |
        |-----------|----------|----------|----------|---------|---------|-------------|-------------|-------------|-------------|-------------|
        | DB2       |`SMALLINT`|`SMALLINT`|`SMALLINT`|`INTEGER`|`INTEGER`|`DECIMAL(10)`|`DECIMAL(20)`|`DECIMAL(20)`|`DECIMAL(31)`|`DECIMAL(31)`|
        | Oracle    |`SMALLINT`|`SMALLINT`|`SMALLINT`|`INTEGER`|`INTEGER`|`NUMBER(10)` |`NUMBER(20)` |`NUMBER(20)` |`NUMBER(31)` |`NUMBER(31)` |
        | MS-SQL    |`TINYINT` |`SMALLINT`|`SMALLINT`|`INTEGER`|`INTEGER`|`BIGINT`     |`BIGINT`     |`NUMERIC(20)`|`NUMERIC(31)`|`NUMERIC(31)`|
        | SQLite    |`INTEGER` |`INTEGER` |`INTEGER` |`INTEGER`|`INTEGER`|`INTEGER`    |`INTEGER`    |`INTEGER`    |`INTEGER`    |`INTEGER`    |
        | MySQL     |`TINYINT` |`TINYINT` |`TINYINT` |`INTEGER`|`INTEGER`|`BIGINT`     |`BIGINT`     |`DECIMAL(20)`|`DECIMAL(31)`|`DECIMAL(31)`|
        | PostgreSQL|`SMALLINT`|`SMALLINT`|`SMALLINT`|`INTEGER`|`INTEGER`|`BIGINT`     |`BIGINT`     |`NUMERIC(20)`|`NUMERIC(31)`|`NUMERIC(31)`|
* Unsigned integer will need to be promoted to a larger storage and the value be checked.
    *   At a minimum the value to be persisted shoud be check to be a positive with `CHECK( colName >= 0 )`.
* DBMS that does not support a smaller data type will need to be promoted to use the next data type, that have enough storage for the value, with a `CHECK` constraint to accept only the value range for the originally  intended smaller data type.
    *   |Type         |Storage|                  Min Value|                  Max Value|         Max Unsigned Value|
        |-------------|------:|--------------------------:|--------------------------:|--------------------------:|
        |`TINYINT`    |1 byte |                       -128|                        127|                        255|
        |`SMALLINT`   |2 bytes|                    -32,768|                     32,767|                     65,535| 
        |`MEDIUMINT`  |3 bytes|                 -8,388,608|                  8,388,607|                 16,777,215|
        |`INTEGER`    |4 bytes|             -2,147,483,648|              2,147,483,647|              4,294,967,295|
        |`BIGINT`     |8 bytes| -9,223,372,036,854,775,808|  9,223,372,036,854,775,807| 18,446,744,073,709,551,615|
        |`SMALLMONEY` |4 bytes|            -214,748`.`3648|             214,748`.`3647|                           |
        |`MONEY`      |8 bytes|-922,337,203,685,477`.`5808| 922,337,203,685,477`.`5807|                           |
        |`SMALLSERIAL`|2 bytes|                          1|                     32,767|                           |
        |`SERIAL`     |4 bytes|                          1|              2,147,483,647|                           |
        |`BIGSERIAL`  |8 bytes|                          1|  9,223,372,036,854,775,807|                           |
        * e.g. DBMS that do not support `TINYINT` but has `SMALLINT`,  the `SMALLINT` data type shall be used in lieu of `TINYINT`.
        * `SERIAL` data type are auto incremented `INTEGER`.
            * MySQL alias `SERIAL` as `BIGINT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE`.
* Don't oversize your data type to store a small number.  Right size your data type with a little room to grow but **no** more.
    * Do your analysis or profile your data before deciding on a "right" data type for your column.
    * Do constraint the column with `CHECK` to the expected bound of your data.


### Fixed Point Number:
* All DBMS listed above support fixed point data type with the following variance:
    *   |DBMS       |Type                          |Max _p_|Default|
        |-----------|------------------------------|------:|------:|
        | DB2       |`DECIMAL[(` _p_ `[ ,` _s_`])]`|     31|    [5](https://www.ibm.com/docs/en/db2/11.5?topic=statements-create-table) |
        | Oracle    |`NUMBER [(` _p_ `[ ,` _s_`])]`|     38|   [38](https://docs.oracle.com/cd/E11882_01/server.112/e41084/sql_elements001.htm#sthref119) |
        | MS-SQL    |`DECIMAL[(` _p_ `[ ,` _s_`])]`|     38|   [18](https://learn.microsoft.com/en-us/sql/t-sql/data-types/decimal-and-numeric-transact-sql?view=sql-server-ver16) |
        | SQLite    |`NUMERIC[(` _p_ `[ ,` _s_`])]`|       |    [?](https://www.sqlite.org/datatype3.html#affinity )
        | MySQL     |`DECIMAL[(` _p_ `[ ,` _s_`])]`|     65|   [10](https://dev.MySQL.com/doc/refman/8.4/en/numeric-type-syntax.html) |
        | PostgreSQL|`NUMERIC[(` _p_ `[ ,` _s_`])]`|       | [1000](https://www.postgresql.org/docs/current/datatype-numeric.html#DATATYPE-NUMERIC-DECIMAL) |
        * where the elements between the brackets are optional.
        * _p_ denotes the precision.  The precision integer specifies the total number of digits.
        * _s_ denotes the scale.  The scale integer specifies the number of digits to the right of the decimal point.
    * It is good practice to specify the precision and scale because different DBMS have different default precision.
    * Do constraint the column with `CHECK` to the expected bound of your data.

### Floating Point Number:
* All DBMS listed above support this data type with the following variance:
    * `FLOAT` data type storage depends on the precision _p_.
    *   |DBMS       |4 Bytes single precision|8 Bytes double precision|`FLOAT[(`_p_`)]`                                                                |
        |-----------|------------------------|------------------------|--------------------------------------------------------------------------------|
        | DB2       |`REAL`                  |`DOUBLE`                | `REAL` : &nbsp;&nbsp;&nbsp;&nbsp;01 <= _p_ <= 24<br>`DOUBLE` : 25 <= _p_ <= 53 |
        | Oracle    |`BINARY_FLOAT`          |`BINARY_DOUBLE`         | `FLOAT`: &nbsp;&nbsp;            01 <= _p_ <= 24<br>`DOUBLE` : 25 <= _p_ <= 53 |
        | MS-SQL    |`REAL`                  |`FLOAT`                 | `REAL` : &nbsp;&nbsp;&nbsp;&nbsp;01 <= _p_ <= 24<br>`FLOAT` :&nbsp;&nbsp; 25 <= _p_ <= 53 |
        | SQLite    |                        |`REAL`                  |                                                                                |
        | MySQL     |`FLOAT`                 |`DOUBLE`                | `FLOAT`: &nbsp;&nbsp;            00 <= _p_ <= 24<br>`DOUBLE` : 25 <= _p_ <= 53 |
        | PostgreSQL|`REAL`                  |`DOUBLE PRECISION`      | `REAL` : &nbsp;&nbsp;&nbsp;&nbsp;01 <= _p_ <= 24<br>`DOUBLE` : 25 <= _p_ <= 53 |
        * where the elements between the brackets are optional.
        * _p_ denotes the precision in bits.
    * Do constraint the column with `CHECK` to the expected bound of your data.

### Character Types:
* The total storable character is dependent on the character set setup with for the database.
    * Some DBMS default to `LATIN1` which uses one byte for one character.
    * Do configure your database to enable **UTF-8** character set.
        * Optionally for business application, do consider case insensitive collation.
    *   |DBMS       |Command|
        |-----------|-------|
        | DB2       |`CREATE DATABASE` myDBMS `USING CODESET` UTF-8 `TERRITORY` US `COLLATE USING` UCA500R1_CLDR120_CI_AI;|
        | Oracle    |`CREATE DATABASE` myDBMS `CHARACTER SET` AL32UTF8 `COLLATE` UTF8_CI; `SET NLS_SORT =` 'GENERIC_M_CI_AI'; `SET NLS_COMP =` 'LINGUISTIC';|
        | MS-SQL    |`CREATE DATABASE` myDBMS `COLLATE` Latin1_General_100_CI_AI_SC_UTF8;|
        | SQLite    |`PRAGMA encoding=`'UTF-8'; `PRAGMA case_sensitive_like =` OFF;|
        | MySQL     |`CREATE DATABASE` myDBMS `COLLATE` utf8mb4 `COLLATE` [utf8mb4_0900_ai_ci \| utf8mb4_unicode_ci];|
        | PostgreSQL|`CREATE DATABASE` myDBMS `ENCODING` 'UTF8' `LC_COLLATE =` 'en_US.utf8', `LC_CTYPE =` 'en_US.utf8';|

* All DBMS listed above support fixed and variable character type with the following variance:
    *   |DBMS       |Fixed Type         |Fix Max _s_|Default|Variable Type      |Var Max _s_|Default|
        |-----------|-------------------|----------:|------:|-------------------|----------:|------:|
        | DB2       |`CHAR(` _s_ `)`    |        255|       |`VARCHAR(`  _s_ `)`|     32,672|       |
        | Oracle    |`CHAR(` _s_ `)`    |      2,000|       |`VARCHAR2(` _s_ `)`|      4,000|       |
        | MS-SQL    |`CHAR(` _s_ `)`    |      8,000|       |`VARCHAR(`  _s_ `)`|      8,000|       |
        | SQLite    |`CHAR(` _s_ `)`    |      2,000|       |`VARCHAR(`  _s_ `)`|           |       |
        | MySQL     |`CHAR(` _s_ `)`    |        255|       |`VARCHAR(`  _s_ `)`|     65,535|       |
        | PostgreSQL|`CHAR(` _s_ `)`    | 10,485,760|       |`VARCHAR(`  _s_ `)`| 10,485,760|       |
        * where the elements between the brackets are optional.
        * _s_ denotes the length.
    * The number of character will be depended on the character set setup for the database.
    * It is good practice to specify the length because different DBMS have different default length.

* The following are data type for very large character string with the following variance:
    *   |DBMS       |Type             |      Max _s_|       Default|
        |-----------|-----------------|------------:|-------------:|
        | DB2       |`CLOB(` _s_ `)`  |2,147,483,646|     1,048,576|
        | Oracle    |`CLOB`           |             | 4,294,967,295|
        | MS-SQL    |`TEXT` \ `VARCHAR( MAX )`|     | 2,147,483,647|
        | SQLite    |`TEXT`           |             |              |
        | MySQL     |`LONGTEXT`       |             | 4,294,967,295|
        | PostgreSQL|`TEXT`           |             | 1,063,256,064|
        * _s_ denotes the length.

#### Binary Types:
* All DBMS listed above support this binary data type with the following variance:
    *   |DBMS       |Fixed Type       |  Fix Max _s_|Default|Variable Type       |Var Max _s_|       Default|
        |-----------|-----------------|------------:|------:|--------------------|----------:|-------------:|
        | DB2       |`BINARY(` _s_ `)`|          255|       |`VARBINARY(` _s_ `)`|     32,672|              |
        | Oracle    |`RAW(` _s_ `)`   |        2,000|       |`LONG RAW`          |           | 2,147,483,648|
        | MS-SQL    |`BINARY` _s_ `)` |        8,000|       |`VARBINARY( MAX )`  |           | 2,147,483,648|
        | SQLite    |                 |             |       |`BLOB`              |           | 1,000,000,000|
        | MySQL     |`BINARY(` _s_ `)`|          255|       |`VARBINARY(` _s_ `)`|     65,535|              |
        | PostgreSQL|                 |             |       |`BYTEA`             |           | 1,063,256,064|
        * _s_ denotes the length.

* The following are data type for large binary data with the following variance:
    *   |DBMS       |Type            |      Max _s_|      Default|
        |-----------|----------------|------------:|------------:|
        | DB2       |`BLOB(` _s_ `)` |2,147,483,646|2,147,483,647|
        | Oracle    |`BLOB`          |             |4,294,967,295|
        | MS-SQL    |`VARBINARY(MAX)`|             |2,147,483,647|
        | SQLite    |`BLOB`          |             |1,000,000,000|
        | MySQL     |`LONGBLOB`      |             |4,294,967,295|
        | PostgreSQL|`BYTEA`         |             |1,063,256,064|

#### National Character
* The term national character set refers to an alternative character set that enables you to store Unicode character data in a database that does not have a Unicode database character set.  It is better that you setup your database to default to UTF-8 character set.
    *   |DBMS       |Fixed Type        |Default _s_|Max _s_    |Variable Type       |Var Max _s_|Default|
        |-----------|------------------|----------:|----------:|--------------------|----------:|------:|
        | DB2       |`NCHAR[(` _s_ `)]`| 1         | 255       |`NVARCHAR(` _s_ `)` |     32,672|       |
        | Oracle    |`NCHAR[(` _s_ `)]`| 1         | 2,000     |`NVARCHAR2(` _s_ `)`|      4,000|       |
        | MS-SQL    |`NCHAR[(` _s_ `)]`|           | 4,000     |`NVARCHAR(` _s_ `)` |      4,000|       |
        | SQLite    |`TEXT`            |           |           |`TEXT`              |           |       |
        | MySQL     |`NCHAR(` _s_ `)`  | 1         | 255       |`NVARCHAR(`  _s_ `)`|     65,535|       |
        | PostgreSQL|`CHAR(` _s_ `)`   | 1         | 10,485,760|`VARCHAR(`  _s_ `)` | 10,485,760|       |
        * _s_ denotes the length.
        * National Character set uses 2 bytes to store a character and may not be storage wise efficient.
    * It is good practice to specify the length because different DBMS have different default length.

* The following are data type for large character data with the following variance:
    *   |DBMS       |Type             |      Max _s_|       Default|
        |-----------|-----------------|------------:|-------------:|
        | DB2       |`NCLOB(` _s_ `)` |2,147,483,646|     1,048,576|
        | Oracle    |`NCLOB`          |             | 4,294,967,295|
        | MS-SQL    |`NTEXT` \ `NVARCHAR( MAX )`|   | 2,147,483,647|
        | SQLite    |`TEXT`           |             |              |
        | MySQL     |`LONGTEXT`       |             | 4,294,967,295|
        | PostgreSQL|`TEXT`           |             | 1,063,256,064|
        * _s_ denotes the length.


### Temporal Types:
* All DBMS listed above support temporal data type with the following variance:
    *   |DBMS       |Date Only Type|Time Only Type |Date w Time|Timestamp Type      |Max _p_|Default _p_|`WITH TIME ZONE`|
        |-----------|--------------|-------------- |-----------|--------------------|------:|----------:|:--------------:|
        | DB2       |`DATE`        |`TIME`         |           |`TIMESTAMP(` _p_ `)`|     12|          6|                |
        | Oracle    |`DATE`        |               |           |`TIMESTAMP(` _p_ `)`|      6|          6| Y              |
        | MS-SQL    |`DATE`        |`TIME(` _p_ `)`|`DATETIME` |`DATETIME2(` _p_ `)`|      7|          7|`DATETIMEOFFSET`|
        | MySQL     |`DATE`        |`TIME(` _p_ `)`|`DATETIME` |`TIMESTAMP(` _p_ `)`|      6|          6|                |
        | PostgreSQL|`DATE`        |`TIME(` _p_ `)`|`DATETIME` |`TIMESTAMP(` _p_ `)`|      6|          6| Y              |
        * _p_ denotes the precision of the fractional second. 
        *   |_p_|Precision    |   Second|
            |:-:|------------:|--------:|
            | 0 |No sub second|        0|
            | 1 |       100 ms|      0.1|
            | 2 |        10 ms|     0.01|
            | 3 |         1 ms|    0.001|
            | 4 |       100 us|   0.0001|
            | 5 |        10 us|  0.00001|
            | 6 |         1 us| 0.000001|

    * If you have a needed to support multiple timezones, you should consider storing all dates in UTC.
    * MS-SQL value range:
        * `DATETIME`&nbsp;&nbsp; range from **1753-01-01** to **9999-12-31**.
        * `DATETIME2`            range from **0001-01-01 00:00:00.000000** to **9999-12-31 23:59:59.9999999**.
        * `SMALLDATETIME`&nbsp;  range from **1900-01-01 00:00:00** to **2079-06-06 23:23:59**.
    * MySQL value range:
        * `DATETIME`&nbsp;&nbsp; range from **1000-01-01 00:00:00.000000** to **9999-12-31 23:59:59.499999**.
        * `TIMESTAMP`            range from **1970-01-01 00:00:01.000000** to **2038-01-19 03:14:07.499999**.

* It is common for business application to track the last time a row was updated.  Either a `DATETIME` or `TIMESTAMP` type can be used depending on how granular your business want to capture that moment in time.

## Object Types
* All DBMS listed above support `JSON` character type with the following variance:
    *   |DBMS       |Type  |
        |-----------|------|
        | DB2       |`JSON`|
        | Oracle    |`VARCHAR2(4000) CHECK (json_data IS JSON)`|
        | MS-SQL    |`NVARCHAR(MAX) JSON`|
        | SQLite    |`TEXT`|
        | MySQL     |`JSON`|
        | PostgreSQL|`JSON` \ `JSONB`|

## Other Types
* All DBMS listed above support `UUID` character type with the following variance:
    *   |DBMS       |Type  |
        |-----------|------|
        | DB2       |`UUID`|
        | Oracle    |`RAW(16)`|
        | MS-SQL    |`UNIQUEIDENTIFIER`|
        | SQLite    |`BLOB`|
        | MySQL     |`UUID`|
        | PostgreSQL|`UUID`|

-----

## Column Options
* DBMS specific ordering of column options.
    *   |DBMS       |Column Definition|
        |-----------|-----------------|
        | DB2       | _colName_ _type_ `[NOT NULL]  [UNIQUE\|PRIMARY KEY]` `[CHECK(` _condition_ `)] [DEFAULT` _value_ `] [SECURED WITH` _label_ `] [IMPLICITLY HIDDEN]`|
        | Oracle    | _colName_ _type_ `[INVISIBLE] [DEFAULT` _value_ `] [ENCRYPT `_spec_ `] [NOT NULL] [CHECK(` _condition_ `)] [UNIQUE\|PRIMARY KEY]`|
        | MS-SQL    | _colName_ _type_ `[NOT NULL]  [DEFAULT` _value_ `] [HIDDEN]` `[ENCRYPTED WITH(` _spec_ `)] [CHECK(` _condition_ `)] [UNIQUE\|PRIMARY KEY]`|
        | SQLite    | _colName_ _type_ `[NOT NULL]  [DEFAULT` _value_ `] [HIDDEN]` `[CHECK(` _condition_ `)] [UNIQUE\|PRIMARY KEY]`|
        | MySQL     | _colName_ _type_ `[NOT NULL]  [DEFAULT` _value_ `] [INVISIBLE]` `[CHECK(` _condition_ `)] [UNIQUE\|PRIMARY KEY] [COMMENT =` 'string' `]`|
        | PostgreSQL| _colName_ _type_ `[NOT NULL]  [DEFAULT` _value_ `] [CHECK(` _condition_ `)] [UNIQUE\|PRIMARY KEY]`|

## Generated Column
* DBMS specific ordering of generated column options.
    *   |DBMS       |Column Definition|
        |-----------|-----------------|
        | DB2       | _colName_ _type_ `GENERATED ALWAYS AS(` _expr_ `)`|
        | Oracle    | _colName_ _type_ `GENERATED ALWAYS AS(` _expr_ `) VIRTUAL`|
        | MS-SQL    | _colName_                         `AS(` _expr_ `) [PERSISTED]`|
        | SQLite    | _colName_ _type_ `GENERATED ALWAYS AS(` _expr_ `) [VIRTUAL\|STORED]`|
        | MySQL     | _colName_ _type_ `GENERATED ALWAYS AS(` _expr_ `) [VIRTUAL\|STORED]`|
        | PostgreSQL| _colName_ _type_ `GENERATED ALWAYS AS(` _expr_ `) STORED`|
        * Oracle virtual column cannot be stored.
        * PostgreSQL does not have virtual column.  Generated column is concrete and the data is stored in the row.

## Identity Options
* DBMS specific identity column options.
    *   |DBMS       |Column Definition|
        |-----------|-----------------|
        | DB2       | _colName_ _type_ `GENERATED BY DEFAULT AS IDENTITY( START WITH` _start_ `INCREMENT BY` _incr_ `) PRIMARY KEY`|
        | Oracle    | _colName_ _type_ `GENERATED BY DEFAULT AS IDENTITY( START WITH` _start_ `INCREMENT BY` _incr_ `) PRIMARY KEY`|
        | MS-SQL    | _colName_ _type_ `IDENTITY(` _start_ ,_increment_ `) PRIMARY KEY`|
        | SQLite    | _colName_ _type_ `PRIMARY KEY AUTOINCREMENT`|
        | MySQL     | _colName_ _type_ `AUTO_INCREMENT PRIMARY KEY` |
        | PostgreSQL| _colName_ _type_ `GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY` _incr_ `START WITH` _start_ `)`|
        * Identity value defaults to start at **1**.  However, I recommend that it start at higher number depending on the data type. **10** or **100** are good candidates.  Starting at a higher number is akin to the stack memory where it is reserved for system seeded values.
        * SQLite _start_ value_ need to be updated in the system table `sqlite_sequence` as follows:
            * `UPDATE sqlite_sequence SET seq = 100 WHERE NAME = ` 'tableName'`;`
        * MySQL _start_ and _incr_ value need to be set at the database level with:
            * `ALTER TABLE` _tabName_ `AUTO_INCREMENT =` _start_`;`
            * `SET [ GLOBAL | SESSION ] auto_increment_increment=` _incr_`;`
        * `GENERATED BY DEFAULT` will generate an the next value when no explicit value is given where as `GENERATED ALWAYS` will generate an the next value on every insertion
        * Alternate to a DBMS generated sequential unique integer **ID**, application generated **ID** using **UUID** have come to be widely use.  Both serve very similar purpose but your business dictates the goal.  Here are my guidelines:
            * Use **ID** if you have a traditional centralized DBMS setup.
                * **ID** is much more efficient is storage requirement and impact indices build using it.
            * Use **UUID** if you have a distributed master-master DBMS setup where inserts are completely independent.
                * **UUID** is rather random and do not have the linear order of an ID.
                * **UUID** is much less efficient is storage requirement and impact indices build using it.
                * If you have a <u>small</u> number of distributed DBMS, you could consider using **ID** with an increment that is larger than **1** starting with a different offset for each of your DBMS.

* DBMS specific column comment
    *   |DBMS       |Column Definition|
        |-----------|-----------------|
        | DB2       | `COMMENT ON COLUMN` _tabName_**.**_colName_ `IS` 'string'|
        | Oracle    | `COMMENT ON COLUMN` _tabName_**.**_colName_ `IS` 'string'|
        | MS-SQL    | `EXEC sp_addextendedproperty @name = N'MS_Description' ,@value = N`'string' `,@level1type = N'Table' ,@level1name = `_tabName_ `,@level2type = N'Column', @level2name = `_colName_|
        | SQLite    |                 |
        | MySQL     | _colName_ _type_ `COMMENT` 'string'|
        | PostgreSQL| `COMMENT ON COLUMN` _tabName_**.**_colName_ `IS` 'string'|

## Table Options
* DBMS specific table space options.
    *   |DBMS       |Column Definition|
        |-----------|-----------------|
        | DB2       | `CREATE TABLE` tabName `(...) IN`         _tabspace_name_ `[COMPRESS YES]`|
        | Oracle    | `CREATE TABLE` tabName `(...) TABLESPACE` _tabspace_name_ `[COMPRESS]`|
        | MS-SQL    | `CREATE TABLE` tabName `(...) [WITH (DATA_COMPRESSION = PAGE)]` `ON` _filegroup_name_|
        | SQLite    |                 |
        | MySQL     | `CREATE TABLE` tabName `(...) TABLESPACE` _tabspace_name_|
        | PostgreSQL| `CREATE TABLE` tabName `(...) TABLESPACE` _tabspace_name_|
    * MySQL cannot created a compressed table in a user defined tablespace.
        *  A compressed table can be created in the default tablespace with the following table option:
        * `[ENGINE=InnoDB ROW_FORMAT=COMPRESSED]`
    * PostgreSQL automatically compresses large values stored in tables using **TOAST**. This applies to `TEXT`, `BYTEA`, and `XML` data types by default.
        * You can enable custom `zstd` compression via `pgzstd` extension.
            * `CREATE EXTENSION pg_zstd;`
            * `ALTER TABLE compressed_table ALTER COLUMN bigDataCol SET STORAGE EXTENDED;`
            * `ALTER TABLE compressed_table ALTER COLUMN bigDataCol SET COMPRESSION 'zstd';`

* DBMS specific table comment
    *   |DBMS       |Column Definition|
        |-----------|-----------------|
        | DB2       | `COMMENT ON TABLE` _tabName_ `IS` 'string'|
        | Oracle    | `COMMENT ON TABLE` _tabName_ `IS` 'string'|
        | MS-SQL    | `EXEC sp_addextendedproperty @name = N'MS_Description' ,@value = N`'string' `,@level1type = N'Table' ,@level1name = `_tabName_|
        | SQLite    |                 |
        | MySQL     | `CREATE TABLE` tabName `(...) COMMENT =` 'string'|
        | PostgreSQL| `COMMENT ON TABLE` _tabName_ `IS` 'string'|

## Index Options
* Work in progress.

# Recommendations for ORM frameworks
* To be compatible across these DBMS, unfortunately, we should code to the lowest common denominator when we map from a programming language into a table:
*   |Primitives Type                | C |C# |GO |Java|Python|Rust| V |Zig|DB2           |Oracle         |MS-SQL        |SQLite      |MySQL         |PostgreSQL |
    |-------------------------------|:-:|:-:|:-:|:--:|:----:|:--:|:-:|:-:|--------------|---------------|--------------|------------|--------------|------------|
    |bool \ boolean                 | Y | Y | Y | Y  | Y    | Y  | Y | Y |`BOOLEAN`     |`NUMBER(1)`    |`BIT`         |`INTEGER`   |`BOOLEAN`     |`BOOLEAN`   |
    |byte                           |   | Y | Y | Y  |      |    |   |   |`GRAPHIC(1)`  |`RAW(1)`       |`VARBINARY(1)`|`BLOB`      |`BINARY(1)`   |`BIT(1)`    |
    |sbyte                          |   | Y |   |    |      |    |   |   |`SMALLINT`    |`SMALLINT`     |`TINYINT`     |`INTEGER`   |`TINYINT`     |`SMALLINT`  |
    |char <sup>1</sup>              | Y |   |   |    |      |    |   |   |`CHAR(1)`     |`CHAR(1)`      |`CHAR(1)`     |`TEXT`      |`CHAR(1)`     |`CHAR(1)`   |
    |char <sup>2</sup>              |   | Y |   | Y  |      | Y  |   |   |`CHAR(2)`     |`CHAR(2)`      |`CHAR(2)`     |`TEXT`      |`CHAR(2)`     |`CHAR(2)`   |
    |i8                             |   |   | Y |    |      | Y  | Y | Y |`SMALLINT`    |`SMALLINT`     |`TINYINT`     |`INTEGER`   |`TINYINT`     |`SMALLINT`  |
    |u8 <sup>a</sup>                |   |   | Y |    |      | Y  | Y | Y |`SMALLINT`    |`SMALLINT`     |`SMALLINT`    |`INTEGER`   |`SMALLINT`    |`SMALLINT`  |
    |i16                            |   |   | Y |    |      | Y  | Y | Y |`SMALLINT`    |`SMALLINT`     |`SMALLINT`    |`INTEGER`   |`SMALLINT`    |`SMALLINT`  |
    |u16 <sup>b</sup>               |   |   | Y |    |      | Y  | Y | Y |`INTEGER`     |`INTEGER`      |`INTEGER`     |`INTEGER`   |`INTEGER`     |`INTEGER`   |
    |i32                            |   |   | Y |    |      | Y  | Y | Y |`INTEGER`     |`INTEGER`      |`INTEGER`     |`INTEGER`   |`INTEGER`     |`INTEGER`   |
    |u32 <sup>c</sup>               |   |   | Y |    |      | Y  | Y | Y |`DECIMAL(10)` |`NUMBER(10)`   |`BIGINT`      |`INTEGER`   |`BIGINT`      |`BIGINT`    |
    |i64                            |   |   | Y |    |      | Y  | Y | Y |`DECIMAL(20)` |`NUMBER(20)`   |`BIGINT`      |`INTEGER`   |`BIGINT`      |`BIGINT`    |
    |u64 <sup>d</sup>               |   |   | Y |    |      | Y  | Y | Y |`DECIMAL(20)` |`NUMBER(20)`   |`NUMERIC(20)` |`INTEGER`   |`DECIMAL(20)` |`NUMERIC(20)`|
    |i128                           |   |   |   |    |      | Y  |_Y_| Y |`DECIMAL(31)` |`NUMBER(31)`   |`NUMERIC(31)` |`INTEGER`   |`DECIMAL(31)` |`NUMERIC(31)`|
    |u128 <sup>e</sup>              |   |   |   |    |      | Y  |_Y_| Y |`DECIMAL(31)` |`NUMBER(31)`   |`NUMERIC(31)` |`INTEGER`   |`DECIMAL(31)` |`NUMERIC(31)`|
    |short                          | Y | Y |   | Y  |      |    |   |   |`SMALLINT`    |`SMALLINT`     |`SMALLINT`    |`INTEGER`   |`SMALLINT`    |`SMALLINT`  |
    |ushort <sup>b</sup>            |   | Y |   |    |      |    |   |   |`INTEGER`     |`INTEGER`      |`INTEGER`     |`INTEGER`   |`INTEGER`     |`INTEGER`   |
    |unsigned short <sup>b</sup>    |   |   |   |    |      |    |   |   |`INTEGER`     |`INTEGER`      |`INTEGER`     |`INTEGER`   |`INTEGER`     |`INTEGER`   |
    |int                            | Y | Y | Y | Y  | Y    |    | Y |   |`INTEGER`     |`INTEGER`      |`INTEGER`     |`INTEGER`   |`INTEGER`     |`INTEGER`   |
    |uint <sup>c</sup>              |   | Y | Y |    |      |    |   |   |`DECIMAL(10)` |`NUMBER(10)`   |`NUMERIC(10)` |`NUMBER(10)`|`DECIMAL(10)` |`BIGINT`    |
    |unsigned int <sup>c</sup>      | Y |   |   |    |      |    |   |   |`DECIMAL(10)` |`NUMBER(10)`   |`NUMERIC(10)` |`NUMBER(10)`|`DECIMAL(10)` |`BIGINT`    |
    |long                           | Y | Y |   | Y  |      |    |   |   |`DECIMAL(20)` |`NUMBER(20)`   |`NUMERIC(20)` |`NUMBER(20)`|`DECIMAL(20)` |`NUMBER(20)`|
    |ulong <sup>e</sup>             |   | Y |   |    |      |    |   |   |`DECIMAL(20)` |`NUMBER(20)`   |`NUMERIC(20)` |`NUMBER(20)`|`DECIMAL(20)` |`NUMBER(20)`|
    |unsigned long <sup>e</sup>     | Y |   |   |    |      |    |   |   |`DECIMAL(20)` |`NUMBER(20)`   |`NUMERIC(20)` |`NUMBER(20)`|`DECIMAL(20)` |`NUMBER(20)`|
    |long long                      | Y |   |   |    |      |    |   |   |`DECIMAL(31)` |`NUMBER(31)`   |`NUMERIC(31)` |`NUMBER(31)`|`DECIMAL(31)` |`NUMBER(31)`|
    |unsigned long long <sup>e</sup>| Y |   |   |    |      |    |   |   |`DECIMAL(31)` |`NUMBER(31)`   |`NUMERIC(31)` |`NUMBER(31)`|`DECIMAL(31)` |`NUMBER(31)`|
    |f16                            |   |   |   |    |      |    |   | Y |`REAL`        |`BINARY_FLOAT` |`REAL`        |`REAL`      |`REAL`        |`REAL`      |
    |f32 \ float32                  |   |   | Y |    |      | Y  | Y | Y |`REAL`        |`BINARY_FLOAT` |`REAL`        |`REAL`      |`REAL`        |`REAL`      |
    |f64 \ float64                  |   |   | Y |    |      | Y  | Y | Y |`DOUBLE`      |`BINARY_DOUBLE`|`FLOAT`       |`REAL`      |`DOUBLE`      |`DOUBLE PRECISION`|
    |float                          | Y | Y |   | Y  | Y    |    |   |   |`REAL`        |`BINARY_FLOAT` |`REAL`        |`REAL`      |`REAL`        |`REAL`      |
    |double                         | Y | Y |   | Y  |      |    |   |   |`DOUBLE`      |`BINARY_DOUBLE`|`FLOAT`       |`REAL`      |`DOUBLE`      |`DOUBLE PRECISION`|
    |decimal                        |   | Y |   |    |      |    |   |   |`NUMERIC(p,s)`|`NUMBER(p,s)`  |`NUMERIC(p,s)`|`REAL`      |`DECIMAL(p,s)`|`NUMERIC(p,s)`|
    |long double                    | Y |   |   |    |      |    |   |   |`NUMERIC(p,s)`|`NUMBER(p,s)`  |`NUMERIC(p,s)`|`REAL`      |`DECIMAL(p,s)`|`NUMERIC(p,s)`|
    |                               |   |   |   |    |      |    |   |   |              |               |              |            |              |              |
    * Above listed DBMS do **not** support unsigned numbers therefore unsigned numbers from your programming language will need to be promoted to a larger storage and the value be checked before it is persisted into the table.
        * <sup>1</sup> &nbsp;&nbsp;1 byte character.
        * <sup>2</sup> &nbsp;&nbsp;2 bytes character.
        * <sup>a</sup> &nbsp;&nbsp;1 bytes use constraint `CHECK( _colName_ BETWEEN 0 AND 255 )`
        * <sup>b</sup> &nbsp;&nbsp;2 bytes use constraint  `CHECK( _colName_ BETWEEN 0 AND 65535 )`
        * <sup>c</sup> &nbsp;&nbsp;4 bytes use constraint  `CHECK( _colName_ BETWEEN 0 AND 4294967295 )`
        * <sup>d</sup> &nbsp;&nbsp;8 bytes use constraint  `CHECK( _colName_ BETWEEN 0 AND 18446744073709551615 )`
        * <sup>e</sup> 16 bytes use constraint  `CHECK( _colName_ BETWEEN 0 AND 340282366920938463463374607431768211455 )`

*   |Compound Type|DB2              |Oracle          |MS-SQL           |SQLite         |MySQL            |PostgreSQL     |
    |-------------|-----------------|----------------|-----------------|---------------|-----------------|---------------|
    |Date         |`DATE`           |`DATE`          |`DATE`           |`TEXT`         |`DATE`           |`DATE`         |
    |Time         |`TIME(0)`        |`INTEGER`       |`TIME(0)`        |`TEXT`         |`TIME(0)`        |`TIME(0)`      |
    |Datetime     |`TIMESTAMP(0)`   |`TIMESTAMP(0)`  |`DATETIME`       |`TEXT`         |`DATETIME`       |`DATETIME`     |
    |Timestamp    |`TIMESTAMP(6)`   |`TIMESTAMP(6)`  |`TIMESTAMP(6)`   |`TEXT`         |`TIMESTAMP(6)`   |`TIMESTAMP(6)` |
    |Short string |`VARCHAR(4000)`  |`VARCHAR2(4000)`|`VARCHAR(4000)`  |`VARCHAR(4000)`|`VARCHAR(4000)`  |`VARCHAR(4000)`|
    |Short binary |`VARBINARY(2000)`|`RAW(2000)`     |`VARBINARY(2000)`|`BLOB`         |`VARBINARY(2000)`|`BYTEA`        |
    |Long string  |`CLOB(2M)`       |`CLOB`          |`TEXT`           |`TEXT`         |`LONGTEXT`       |`TEXT`         |
    |Long binary  |`BLOB(2M)`       |`BLOB`          |`VARBINARY(MAX)` |`BLOB`         |`LONGBLOB`       |`BYTEA`        |
    |             |                 |                |                 |               |                 |               |
    * Oracle could store the time as the number of seconds (86400) since midnight.

* ORM framework should support as many features outlined above.


