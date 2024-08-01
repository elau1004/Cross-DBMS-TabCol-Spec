--  Test PostgreSQL data types.
--  SEE: https://youtu.be/RdPYA-wDhTA?t=162
--$ mkdir  .\dbdata\pgsql
--$ podman pull   postgres:latest
--$ podman run  --hostname pghost --name pgsql --privileged=true -dit -p 5432:5432 -e POSTGRES_PASSWORD=Pa@55word  postgres
--$ podman logs -f pgsql
--$ podman stop    pgsql
--$ podman start   pgsql
--      Username: postgres
--      Password: Pa@55word
--      Database: postgres
--
DROP    TABLE   IF      EXISTS  Test_Data_Types
;
CREATE  TABLE   IF  NOT EXISTS  Test_Data_Types(
         c001_boolean           BOOLEAN                         --
        ,c002_bit               BIT                             --  Not a boolean in PostgreSQL but a binary.
--      ,c003_tinyint           TINYINT                         --
        ,c004_smallint          SMALLINT                        --
--      ,c005_mediumint         MEDIUMINT                       --
        ,c006_integer           INTEGER                         --
        ,c007_bigint            BIGINT                          --
        ,c008_money             MONEY                           --
--      ,c009_smallmoney        SMALLMONEY                      --
        ,c010_serial            SERIAL                          --
        ,c011_smallserial       SMALLSERIAL                     --
        ,c012_bigserial         BIGSERIAL                       --
        ,c013_decimal           DECIMAL                         --
        ,c014_decimal_p         DECIMAL(1)                      --
        ,c015_decimal_p_s       DECIMAL(2,1)                    --
        ,c016_decimal_31        DECIMAL(31)                     --  
--      ,c017_number            NUMBER                          --
--      ,c018_number_p          NUMBER(1)                       --
--      ,c019_number_p_s        NUMBER(2,1)                     --
--      ,c020_number_31         NUMBER(31)                      --  
        ,c021_numeric           NUMERIC                         --
        ,c022_numeric_p         NUMERIC(1)                      --
        ,c023_numeric_p_s       NUMERIC(2,1)                    --
        ,c024_numeric_31        NUMERIC(31)                    --  
        ,c025_float             FLOAT                           --
        ,c026_float_p           FLOAT(1)                        --
--      ,c027_float_p_s         FLOAT(2,1)                      --
        ,c028_real              REAL                            --
--      ,c029_real_p            REAL(1)                         --
--      ,c030_real_p_s          REAL(2,1)                       --
--      ,c031_double            DOUBLE                          --
--      ,c032_double_p          DOUBLE(1)                       --
--      ,c033_double_p_s        DOUBLE(2,1)                     --
        ,c034_double_precision  DOUBLE PRECISION                --
--      ,c035_binary_float      BINARY_FLOAT                    --
--      ,c036_binary_double     BINARY_DOUBLE                   --
        ,c037_char              CHAR                            --
        ,c038_char_s            CHAR(10485760)                  --
        ,c039_character         CHARACTER                       --
        ,c040_character_s       CHARACTER(10485760)             --
        ,c041_char_v            CHAR        VARYING             --
--      ,c042_char_s_v          CHAR(1)     VARYING             --
--      ,c043_dbpchar           DBPCHAR                         --      
--      ,c044_dbpchar_s         DBPCHAR( 1 )                    --      
        ,c045_varchar           VARCHAR                         --
        ,c046_varchar_s         VARCHAR(10485760)               --
--      ,c047_varchar_max       VARCHAR(MAX)                    --  
--      ,c048_varchar2          VARCHAR2                        --
--      ,c049_varchar2_s        VARCHAR2(2)                     --
        ,c050_nchar             NCHAR                           --
        ,c051_nchar_s           NCHAR(10485760)                 --
--      ,c052_nvarchar          NVARCHAR                        --
--      ,c053_nvarchar_s        NVARCHAR(1)                     --
--      ,c054_nvarchar2         NVARCHAR2                       --
--      ,c055_nvarchar2_s       NVARCHAR2(1)                    --
--      ,c056_ntext             NTEXT                           --
--      ,c057_long              LONG                            --
        ,c058_text              TEXT                            --  
--      ,c059_longtext          LONGTEXT                        --  
--      ,c060_clob              CLOB                            --
--      ,c061_clob_s            CLOB(1)                         --  
--      ,c062_longclob          LONGCLOB                        --  --      ,c062_long_clob         LONG CLOB                       --  
--      ,c063_long_clob         LONG CLOB              
--      ,c064_nclob             NCLOB                           --
--      ,c064_nclob_s           NCLOB(10485760)                 --  
        ,c065_bit               BIT                             --
        ,c066_bit_s             BIT(10485760)                   --
        ,c067_bit_v             BIT         VARYING             --
--      ,c068_bit_s_v           BIT(1)      VARYING             --
--      ,c069_binary            BINARY                          --
--      ,c070_binary_p          BINARY(1)                       --
--      ,c071_binary_v          BINARY      VARYING             --
--      ,c072_binary_p_v        BINARY(1)   VARYING             --
--      ,c073_varbinary         VARBINARY                       --
--      ,c074_varbinary_p       VARBINARY(1)                    --
        ,c075_bytea             BYTEA                           --
--      ,c076_bytea_p           BYTEA(1)                        --
--      ,c077_blob              BLOB                            --
--      ,c078_blob_s            BLOB(1)                         --  
--      ,c079_longblob          LONGBLOB                        --  
--      ,c080_long_blob         LONG BLOB                       --  
--      ,c081_dbblob            DBBLOB                          --
--      ,c082_dbblob_s          DBBLOB(1)                       --  
--      ,c083_raw               RAW                             --
--      ,c084_raw_s             RAW(1)                          --  
--      ,c085_longraw           LONGRAW                         --  
--      ,c086_long_raw          LONG RAW                        --  
--      ,c087_image             IMAGE                           --
        ,c088_date              DATE                            --
        ,c089_time              TIME                            --
        ,c090_time_p            TIME(1)                         --  
        ,c091_time_w_tz         TIME WITH TIME ZONE             --
--      ,c092_datetime          DATETIME                        --
--      ,c093_datetime2         DATETIME2                       --
        ,c094_timestamp         TIMESTAMP                       --
        ,c095_timestamp_p       TIMESTAMP(1)                    --
        ,c096_timestamp_w_tz    TIMESTAMP       WITH TIME ZONE  --
        ,c097_timestamp_p_w_tz  TIMESTAMP(1)    WITH TIME ZONE  --
--      ,c098_datetimeoffset    DATETIMEOFFSET                  --
--      ,c099_smalldatetime     SMALLDATETIME                   --
--      ,c100_year              YEAR                            --
--      ,c101_array             ARRAY                           --
--      ,c102_enum              ENUM                            --
--      ,c103_enum_v1v2v3       ENUM('Low', 'Medium', 'High')   --
--      ,c104_set               SET                             --  
--      ,c105_set_v1v2v3        SET('Low', 'Medium', 'High')    --  
--      ,c106_ref               REF                             --
--      ,c107_rowid             ROWID                           --
--      ,c108_urowid            UROWID                          --
        ,c109_uuid              UUID                            --
--      ,c110_uniqueidentifier  UNIQUEIDENTIFIER                --
        ,c111_json              JSON                            --
        ,c112_xml               XML                             --
        ,c113_cidr              CIDR                            --
        ,c114_inet              INET                            --
        ,c115_macaddr           MACADDR                         --
);



DROP    TABLE   IF      EXISTS  Test_Column_Syntax
;
CREATE  TABLE   IF  NOT EXISTS  Test_Column_Syntax(
         ID     INTEGER         NOT NULL    DEFAULT 1  CHECK( ID >  0 ) PRIMARY KEY
        ,C1     CHAR(1)         NOT NULL               CHECK( C1 <>'?') UNIQUE
--      ,C2     DECIMAL(10, 2)              ENCRYPTED WITH( COLUMN_ENCRYPTION_KEY = key_name ,ENCRYPTION_TYPE = DETERMINISTIC ,ALGORITHM = 'AEAD_AES_256_CBC_HMAC_SHA_256') 
--      ,H0     TIMESTAMP       HIDDEN      DEFAULT CURRENT_TIMESTAMP
);


DROP    TABLE   IF      EXISTS  Test_Generate_Syntax
;
CREATE  TABLE   IF  NOT EXISTS  Test_generate_Syntax(
         ID     INTEGER         NOT NULL    GENERATED BY DEFAULT  AS IDENTITY( START WITH 100 INCREMENT BY 3) PRIMARY KEY
        ,C1     INTEGER         NOT NULL    GENERATED    ALWAYS   AS( ID +1 )
        ,T1     TIMESTAMP
);
INSERT  INTO    Test_Generate_Syntax(     T1 )  VALUES(    CURRENT_TIMESTAMP );
INSERT  INTO    Test_Generate_Syntax(     T1 )  VALUES(    CURRENT_TIMESTAMP );
INSERT  INTO    Test_Generate_Syntax( ID ,T1 )  VALUES( 1 ,CURRENT_TIMESTAMP );
SELECT *FROM    Test_Generate_Syntax;


DROP    TABLE   IF      EXISTS  Test_Tablespace_Syntax
;
CREATE  TABLE   IF  NOT EXISTS  Test_Tablespace_Syntax(
        ID      INTEGER
)
TABLESPACE      pg_default
;
