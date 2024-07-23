--  Test DB2 LUW data types.
--  SEE: 
--$ mkdir  .\dbdata\db2
--$ podman pull  icr.io/db2_community/db2:latest
--$ podman run --hostname db2host --name db2 --privileged=true -dit -p 50000:50000 -e LICENSE=accept -e PERSISTENT_HOME=false -e DB2INST1_PASSWORD=Pa@55word -e DBNAME=testdb  icr.io/db2_community/db2
--$ podman logs -f db2
--      Username: db2inst1
--      Password: Pa@55word
--      Database: 
--
DROP    TABLE   IF      EXISTS  Test_Data_Types
;
CREATE  TABLE   IF  NOT EXISTS  Test_Data_Types(
         c001_boolean           BOOLEAN                         --  
--      ,c002_bit               BIT                             --  
--      ,c003_tinyint           TINYINT                         --  
        ,c004_smallint          SMALLINT                        --  
--      ,c005_mediumint         MEDIUMINT                       --  
        ,c006_integer           INTEGER                         --  
        ,c007_bigint            BIGINT                          --  
--      ,c008_money             MONEY                           --  
--      ,c009_smallmoney        SMALLMONEY                      --  
--      ,c010_serial            SERIAL                          --  
--      ,c011_smallserial       SMALLSERIAL                     --  
--      ,c012_bigserial         BIGSERIAL                       --  
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
        ,c024_numeric_31        NUMERIC(31)                     --  
        ,c025_float             FLOAT                           --   
        ,c026_float_p           FLOAT(1)                        --  
--      ,c027_float_p_s         FLOAT(2,1)                      --  
        ,c028_real              REAL                            --  
--      ,c029_real_p            REAL(1)                         --  
--      ,c030_real_p_s          REAL(2,1)                       --  
        ,c031_double            DOUBLE                          --  
--      ,c032_double_p          DOUBLE(1)                       --  
--      ,c033_double_p_s        DOUBLE(2,1)                     --  
--      ,c034_double_precision  DOUBLE PRECISION                --  
--      ,c035_binary_float      BINARY_FLOAT                    --  
--      ,c036_binary_double     BINARY_DOUBLE                   --
        ,c037_char              CHAR                            --  
        ,c038_char_s            CHAR(1)                         --  
        ,c039_character         CHARACTER                       --  
        ,c040_character_s       CHARACTER(1)                    --  
--      ,c041_char_v            CHAR    VARYING                 --  
--      ,c042_char_s_v          CHAR(1) VARYING                 --  
--      ,c043_dbpchar           DBPCHAR                         --      
--      ,c044_dbpchar_s         DBPCHAR( 1 )                    --      
--      ,c045_varchar           VARCHAR                         --  
        ,c046_varchar_s         VARCHAR(1)                      --  
--      ,c047_varchar2          VARCHAR2                        --  
--      ,c048_varchar2_s        VARCHAR2(2)                     --  
--      ,c049_text              TEXT                            --  
--      ,c050_longtext          LONGTEXT                        --  
        ,c051_nchar             NCHAR                           --  
        ,c052_nchar_s           NCHAR(1)                        --  
--      ,c053_nvarchar          NVARCHAR                        --  
        ,c054_nvarchar_s        NVARCHAR(1)                     --  
--      ,c055_nvarchar2         NVARCHAR2                       --  
--      ,c056_nvarchar2_s       NVARCHAR2(1)                    --  
--      ,c057_ntext             NTEXT                           --  
--      ,c058_long              LONG                            --  
        ,c059_clob              CLOB                            --  
        ,c060_clob_s            CLOB(1)                         --  
--      ,c061_longclob          LONGCLOB                        --  
--      ,c062_long_clob         LONG CLOB                       --  
        ,c063_nclob             NCLOB                           --  
--      ,c064_bit               BIT                             --  
--      ,c065_bit_s             BIT(1)                          --  
--      ,c066_bit_v             BIT         VARYING             --  
--      ,c067_bit_s_v           BIT(1)      VARYING             --  
        ,c068_binary            BINARY                          --  
        ,c069_binary_s          BINARY(1)                       --  
--      ,c070_binary_v          BINARY      VARYING             --  
--      ,c071_binary_s_v        BINARY(1)   VARYING             --  
--      ,c072_varbinary         VARBINARY                       --  SQL Error [42611]: The length, precision, or scale attribute for column 
        ,c073_varbinary_s       VARBINARY(1)                    --  
--      ,c074_bytea             BYTEA                           --  
--      ,c075_bytea_s           BYTEA(1)                        --  
        ,c076_blob              BLOB                            --  
        ,c077_blob_s            BLOB(1)                         --  
--      ,c078_longblob          LONGBLOB                        --  
--      ,c079_long_blob         LONG BLOB                       --  
--      ,c080_dbblob            DBBLOB                          --  
--      ,c081_dbblob_s          DBBLOB(1)                       --  
--      ,c082_raw               RAW                             --  
--      ,c083_raw_s             RAW(1)                          --  
--      ,c084_longraw           LONGRAW                         --  
--      ,c085_long_raw          LONG RAW                        --  
--      ,c086_image             IMAGE                           --  
        ,c087_date              DATE                            --  
--      ,c088_time              TIME                            --  
--      ,c089_time_p            TIME(1)                         --  
--      ,c090_time_w_tz         TIME WITH TIME ZONE             --  
--      ,c091_datetime          DATETIME                        --  
--      ,c092_datetime2         DATETIME2                       --  
        ,c093_timestamp         TIMESTAMP                       --  
        ,c094_timestamp_p       TIMESTAMP(1)                    --  
--      ,c095_timestamp_w_tz    TIMESTAMP       WITH TIME ZONE  --  
--      ,c096_timestamp_p_w_tz  TIMESTAMP(1)    WITH TIME ZONE  --  
--      ,c097_datetimeoffset    DATETIMEOFFSET                  --  
--      ,c098_smalldatetime     SMALLDATETIME                   --  
--      ,c099_year              YEAR                            --  
--      ,c100_array             ARRAY                           --  
--      ,c101_enum              ENUM                            --  
--      ,c102_enum_v1v2v3       ENUM('Low', 'Medium', 'High')   --  
--      ,c103_set               SET                             --  
--      ,c104_set_v1v2v3        SET( 'Low', 'Medium', 'High')   --
--      ,c105_ref               REF                             --  
--      ,c106_rowid             ROWID                           --  
--      ,c107_urowid            UROWID                          --  
--      ,c108_uuid              UUID                            --  
--      ,c109_uniqueidentifier  UNIQUEIDENTIFIER                --  
--      ,c110_json              JSON                            --  
        ,c111_xml               XML                             --  
--      ,c112_cidr              CIDR                            --  
--      ,c113_inet              INET                            --  
--      ,c114_macaddr           MACADDR                         --  
)
;


DROP    TABLE   IF      EXISTS  Test_Column_Syntax
;
CREATE  TABLE   IF  NOT EXISTS  Test_Column_Syntax(
         ID     INTEGER         NOT NULL    PRIMARY KEY
        ,C1     CHAR(1)         NOT NULL    UNIQUE  CHECK( C1 <>'?')
        ,C3     VARCHAR(256)                SECURED WITH sec_label
        ,H0     TIMESTAMP                   DEFAULT CURRENT_TIMESTAMP   IMPLICITLY    HIDDEN
);


DROP    TABLE   IF      EXISTS  Test_Generate_Syntax
;
CREATE  TABLE   IF  NOT EXISTS  Test_generate_Syntax(
         ID     INTEGER         NOT NULL    GENERATED ALWAYS AS IDENTITY( START WITH 100 INCREMENT BY 3) PRIMARY KEY
        ,C1     INTEGER         NOT NULL    GENERATED ALWAYS AS( ID +1 )
);
