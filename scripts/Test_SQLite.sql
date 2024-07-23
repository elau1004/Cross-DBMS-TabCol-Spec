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
        ,c038_char_s            CHAR(1)                         --  TEXT
        ,c039_character         CHARACTER                       --  TEXT
        ,c040_character_s       CHARACTER(1)                    --  TEXT
--      ,c041_char_v            CHAR        VARYING             --  TEXT
--      ,c042_char_s_v          CHAR(1)     VARYING             --  TEXT
        ,c043_dbpchar           DBPCHAR                         --  TEXT
        ,c044_dbpchar_s         DBPCHAR( 1 )                    --  TEXT
        ,c045_varchar           VARCHAR                         --  TEXT
        ,c046_varchar_s         VARCHAR(1)                      --  TEXT
        ,c047_varchar2          VARCHAR2                        --  TEXT
        ,c048_varchar2_s        VARCHAR2(2)                     --  TEXT
        ,c049_text              TEXT                            --  TEXT
        ,c050_longtext          LONGTEXT                        --  TEXT
        ,c051_nchar             NCHAR                           --  TEXT
        ,c052_nchar_s           NCHAR(1)                        --  TEXT
        ,c053_nvarchar          NVARCHAR                        --  TEXT
        ,c054_nvarchar_s        NVARCHAR(1)                     --  TEXT
        ,c055_nvarchar2         NVARCHAR2                       --  TEXT
        ,c056_nvarchar2_s       NVARCHAR2(1)                    --  TEXT
        ,c057_ntext             NTEXT                           --  TEXT
        ,c058_long              LONG                            --  TEXT
        ,c059_clob              CLOB                            --  TEXT
        ,c060_clob_s            CLOB(1)                         --  TEXT
        ,c061_longclob          LONGCLOB                        --  TEXT
        ,c062_long_clob         LONG CLOB                       --  TEXT
        ,c063_nclob             NCLOB                           --  TEXT
        ,c064_bit               BIT                             --  BLOB
        ,c065_bit_s             BIT(1)                          --  BLOB
--      ,c066_bit_v             BIT         VARYING             --  BLOB
--      ,c067_bit_s_v           BIT(1)      VARYING             --  BLOB
        ,c068_binary            BINARY                          --  BLOB
        ,c069_binary_s          BINARY(1)                       --  BLOB
--      ,c070_binary_v          BINARY      VARYING             --  BLOB
--      ,c071_binary_s_v        BINARY(1)   VARYING             --  BLOB
        ,c072_varbinary         VARBINARY                       --  BLOB
        ,c073_varbinary_s       VARBINARY(1)                    --  BLOB
        ,c074_bytea             BYTEA                           --  BLOB
        ,c075_bytea_s           BYTEA(1)                        --  BLOB
        ,c076_blob              BLOB                            --  BLOB
        ,c077_blob_s            BLOB(1)                         --  BLOB
        ,c078_longblob          LONGBLOB                        --  BLOB
        ,c079_long_blob         LONG BLOB                       --  BLOB
        ,c080_dbblob            DBBLOB                          --  BLOB
        ,c081_dbblob_s          DBBLOB(1)                       --  BLOB
        ,c082_raw               RAW                             --  BLOB
        ,c083_raw_s             RAW(1)                          --  BLOB
        ,c084_longraw           LONGRAW                         --  BLOB
        ,c085_long_raw          LONG RAW                        --  BLOB
        ,c086_image             IMAGE                           --  BLOB
        ,c087_date              DATE                            --  TEXT
        ,c088_time              TIME                            --  TEXT
        ,c089_time_p            TIME(1)                         --  TEXT
        ,c090_time_w_tz         TIME WITH TIME ZONE             --  TEXT
        ,c091_datetime          DATETIME                        --  TEXT
        ,c092_datetime2         DATETIME2                       --  TEXT
        ,c093_timestamp         TIMESTAMP                       --  TEXT
        ,c094_timestamp_p       TIMESTAMP(1)                    --  TEXT
--      ,c095_timestamp_w_tz    TIMESTAMP       WITH TIME ZONE  --  TEXT
--      ,c096_timestamp_p_w_tz  TIMESTAMP(1)    WITH TIME ZONE  --  TEXT
        ,c097_datetimeoffset    DATETIMEOFFSET                  --  TEXT
        ,c098_smalldatetime     SMALLDATETIME                   --  TEXT
        ,c099_year              YEAR                            --  TEXT
        ,c100_array             ARRAY                           --  TEXT
        ,c101_enum              ENUM                            --  TEXT
--      ,c102_enum_v1v2v3       ENUM('Low', 'Medium', 'High')   --  TEXT
--      ,c103_set               SET                             --  BLOB
--      ,c104_set_v1v2v3        SET('Low', 'Medium', 'High')    --  BLOB
        ,c105_ref               REF                             --  BLOB
        ,c106_rowid             ROWID                           --  BLOB
        ,c107_urowid            UROWID                          --  BLOB
        ,c108_uuid              UUID                            --  BLOB
        ,c109_uniqueidentifier  UNIQUEIDENTIFIER                --  BLOB
        ,c110_json              JSON                            --  TEXT
        ,c111_xml               XML                             --  TEXT
        ,c112_cidr              CIDR                            --  TEXT
        ,c113_inet              INET                            --  TEXT
        ,c114_macaddr           MACADDR                         --  TEXT
);


DROP    TABLE   IF      EXISTS  Test_Column_Syntax
;
CREATE  TABLE   IF  NOT EXISTS  Test_Column_Syntax(
         ID     INTEGER         NOT NULL    DEFAULT 1  CHECK( ID >  0 ) PRIMARY KEY
        ,C1     CHAR(1)         NOT NULL               CHECK( C1 <>'?') UNIQUE
--      ,C2     DECIMAL(10, 2)              ENCRYPTED WITH( COLUMN_ENCRYPTION_KEY = key_name ,ENCRYPTION_TYPE = DETERMINISTIC ,ALGORITHM = 'AEAD_AES_256_CBC_HMAC_SHA_256') 
        ,H0     TIMESTAMP       HIDDEN      DEFAULT CURRENT_TIMESTAMP
);


DROP    TABLE   IF      EXISTS  Test_Generate_Syntax
;
CREATE  TABLE   IF  NOT EXISTS  Test_generate_Syntax(
         ID     INTEGER         NOT NULL    PRIMARY KEY AUTOINCREMENT
        ,C1     INTEGER         NOT NULL    GENERATED ALWAYS AS( ID +1 )  VIRTUAL
);
