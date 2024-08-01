--  Test MySQL data types.
--
DROP    TABLE   IF      EXISTS  Test_Data_Types
;
CREATE  TABLE   IF  NOT EXISTS  Test_Data_Types(
         c001_boolean           BOOLEAN                         --  INTEGER
        ,c002_bit               BIT                             --  INTEGER
        ,c003_tinyint           TINYINT                         --  INTEGER
        ,c004_smallint          SMALLINT                        --  INTEGER
        ,c005_mediumint         MEDIUMINT                       --  INTEGER
        ,c006_integer           INTEGER                         --  INTEGER
        ,c007_bigint            BIGINT                          --  INTEGER
        ,c008_money             MONEY                           --  INTEGER
        ,c009_smallmoney        SMALLMONEY                      --  INTEGER
        ,c010_serial            SERIAL                          --  INTEGER
        ,c011_smallserial       SMALLSERIAL                     --  INTEGER
        ,c012_bigserial         BIGSERIAL                       --  INTEGER
        ,c013_decimal           DECIMAL                         --  NUMERIC
        ,c014_decimal_p         DECIMAL(1)                      --  NUMERIC
        ,c015_decimal_p_s       DECIMAL(2,1)                    --  NUMERIC
        ,c016_decimal_31        DECIMAL(3,1)                    --  NUMERIC
        ,c017_number            NUMBER                          --  NUMERIC
        ,c018_number_p          NUMBER(1)                       --  NUMERIC
        ,c019_number_p_s        NUMBER(2,1)                     --  NUMERIC
        ,c020_number_31         NUMBER(31)                      --  NUMERIC
        ,c021_numeric           NUMERIC                         --  NUMERIC
        ,c022_numeric_p         NUMERIC(1)                      --  NUMERIC
        ,c023_numeric_p_s       NUMERIC(2,1)                    --  NUMERIC
        ,c024_numeric_31        NUMERIC(31)                     --  NUMERIC
        ,c025_float             FLOAT                           --  REAL
        ,c026_float_p           FLOAT(1)                        --  REAL
        ,c027_float_p_s         FLOAT(2,1)                      --  REAL
        ,c028_real              REAL                            --  REAL
        ,c029_real_p            REAL(1)                         --  REAL
        ,c030_real_p_s          REAL(2,1)                       --  REAL
        ,c031_double            DOUBLE                          --  REAL
        ,c032_double_p          DOUBLE(1)                       --  REAL
        ,c033_double_p_s        DOUBLE(2,1)                     --  REAL
        ,c034_double_precision  DOUBLE PRECISION                --  REAL
        ,c035_binary_float      BINARY_FLOAT                    --  REAL
        ,c036_binary_double     BINARY_DOUBLE                   --  REAL
        ,c037_char              CHAR                            --  TEXT
        ,c038_char_s            CHAR(2000)                      --  TEXT
        ,c039_character         CHARACTER                       --  TEXT
        ,c040_character_s       CHARACTER(2000)                 --  TEXT
--      ,c041_char_v            CHAR        VARYING             --  TEXT
--      ,c042_char_s_v          CHAR(1)     VARYING             --  TEXT
        ,c043_dbpchar           DBPCHAR                         --  TEXT
        ,c044_dbpchar_s         DBPCHAR( 1 )                    --  TEXT
        ,c045_varchar           VARCHAR                         --  TEXT
        ,c046_varchar_s         VARCHAR(4294967295)             --  TEXT
--      ,c047_varchar_max       VARCHAR(MAX)                    --  
        ,c048_varchar2          VARCHAR2                        --  TEXT
        ,c049_varchar2_s        VARCHAR2(4294967295)            --  TEXT
        ,c050_nchar             NCHAR                           --  TEXT
        ,c051_nchar_s           NCHAR(4294967295)               --  TEXT
        ,c052_nvarchar          NVARCHAR                        --  TEXT
        ,c053_nvarchar_s        NVARCHAR(4294967295)            --  TEXT
        ,c054_nvarchar2         NVARCHAR2                       --  TEXT
        ,c055_nvarchar2_s       NVARCHAR2(4294967295)           --  TEXT
        ,c056_ntext             NTEXT                           --  TEXT
        ,c057_long              LONG                            --  TEXT
        ,c058_text              TEXT                            --  TEXT
        ,c059_longtext          LONGTEXT                        --  
        ,c060_clob              CLOB                            --  TEXT
        ,c061_clob_s            CLOB(4294967295)                --  TEXT
        ,c062_longclob          LONGCLOB                        --  TEXT
        ,c063_long_clob         LONG CLOB                       --  TEXT
        ,c064_nclob             NCLOB                           --  TEXT
        ,c064_nclob_s           NCLOB(4294967295)               --  
        ,c065_bit               BIT                             --  BLOB
        ,c066_bit_s             BIT(1)                          --  BLOB
--      ,c067_bit_v             BIT         VARYING             --  BLOB
--      ,c068_bit_s_v           BIT(1)      VARYING             --  BLOB
        ,c069_binary            BINARY                          --  BLOB
        ,c070_binary_s          BINARY(4294967295)              --  BLOB
--      ,c071_binary_v          BINARY      VARYING             --  BLOB
--      ,c072_binary_s_v        BINARY(1)   VARYING             --  BLOB
        ,c073_varbinary         VARBINARY                       --  BLOB
        ,c074_varbinary_s       VARBINARY(4294967295)           --  BLOB
        ,c075_bytea             BYTEA                           --  BLOB
        ,c076_bytea_s           BYTEA(4294967295)               --  BLOB
        ,c077_blob              BLOB                            --  BLOB
        ,c078_blob_s            BLOB(4294967295)                --  BLOB
        ,c079_longblob          LONGBLOB                        --  BLOB
        ,c080_long_blob         LONG BLOB                       --  BLOB
        ,c081_dbblob            DBBLOB                          --  BLOB
        ,c082_dbblob_s          DBBLOB(4294967295)              --  BLOB
        ,c083_raw               RAW                             --  BLOB
        ,c084_raw_s             RAW(4294967295)                 --  BLOB
        ,c085_longraw           LONGRAW                         --  BLOB
        ,c086_long_raw          LONG RAW                        --  BLOB
        ,c087_image             IMAGE                           --  BLOB
        ,c088_date              DATE                            --  TEXT
        ,c089_time              TIME                            --  TEXT
        ,c090_time_p            TIME(1)                         --  TEXT
        ,c091_time_w_tz         TIME WITH TIME ZONE             --  TEXT
        ,c092_datetime          DATETIME                        --  TEXT
        ,c093_datetime2         DATETIME2                       --  TEXT
        ,c094_timestamp         TIMESTAMP                       --  TEXT
        ,c095_timestamp_p       TIMESTAMP(1)                    --  TEXT
--      ,c096_timestamp_w_tz    TIMESTAMP       WITH TIME ZONE  --  TEXT
--      ,c097_timestamp_p_w_tz  TIMESTAMP(1)    WITH TIME ZONE  --  TEXT
        ,c098_datetimeoffset    DATETIMEOFFSET                  --  TEXT
        ,c099_smalldatetime     SMALLDATETIME                   --  TEXT
        ,c100_year              YEAR                            --  TEXT
        ,c101_array             ARRAY                           --  TEXT
        ,c102_enum              ENUM                            --  TEXT
--      ,c103_enum_v1v2v3       ENUM('Low', 'Medium', 'High')   --  TEXT
--      ,c104_set               SET                             --  BLOB
--      ,c105_set_v1v2v3        SET('Low', 'Medium', 'High')    --  BLOB
        ,c106_ref               REF                             --  BLOB
        ,c107_rowid             ROWID                           --  BLOB
        ,c108_urowid            UROWID                          --  BLOB
        ,c109_uuid              UUID                            --  BLOB
        ,c110_uniqueidentifier  UNIQUEIDENTIFIER                --  BLOB
        ,c111_json              JSON                            --  TEXT
        ,c112_xml               XML                             --  TEXT
        ,c113_cidr              CIDR                            --  TEXT
        ,c114_inet              INET                            --  TEXT
        ,c115_macaddr           MACADDR                         --  TEXT
);


DROP    TABLE   IF      EXISTS  Test_Column_Syntax
;
CREATE  TABLE   IF  NOT EXISTS  Test_Column_Syntax(
         ID     INTEGER         NOT NULL    DEFAULT 1  CHECK( ID >  0 ) PRIMARY KEY
        ,C1     CHAR(1)         NOT NULL               CHECK( C1 <>'?') UNIQUE
--      ,C2     DECIMAL(10, 2)              ENCRYPTED WITH( COLUMN_ENCRYPTION_KEY = key_name ,ENCRYPTION_TYPE = DETERMINISTIC ,ALGORITHM = 'AEAD_AES_256_CBC_HMAC_SHA_256') 
        ,H0     TIMESTAMP       HIDDEN      DEFAULT CURRENT_TIMESTAMP
);
INSERT  INTO    Test_Generate_Syntax(     T1 )  VALUES(    CURRENT_TIMESTAMP );
INSERT  INTO    Test_Generate_Syntax(     T1 )  VALUES(    CURRENT_TIMESTAMP );
INSERT  INTO    Test_Generate_Syntax( ID ,T1 )  VALUES( 1 ,CURRENT_TIMESTAMP );
SELECT *FROM    Test_Generate_Syntax;


DROP    TABLE   IF      EXISTS  Test_Generate_Syntax
;
CREATE  TABLE   IF  NOT EXISTS  Test_generate_Syntax(
         ID     INTEGER         NOT NULL    PRIMARY KEY AUTOINCREMENT
        ,C1     INTEGER         NOT NULL    GENERATED ALWAYS AS( ID +1 )  VIRTUAL
        ,T1     TIMESTAMP
);
