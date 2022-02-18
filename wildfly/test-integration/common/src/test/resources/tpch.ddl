CREATE FOREIGN TABLE "SOAEDS.CUSTOMER" (
    C_CUSTOMERKEY bigdecimal(32767) OPTIONS (NAMEINSOURCE '"C_CUSTOMERKEY"', CHAR_OCTET_LENGTH 22, NATIVE_TYPE 'NUMBER'),
    C_NAME string(25) OPTIONS (NAMEINSOURCE '"C_NAME"', NATIVE_TYPE 'VARCHAR2'),
    C_ADDRESS string(40) OPTIONS (NAMEINSOURCE '"C_ADDRESS"', NATIVE_TYPE 'VARCHAR2'),
    C_NATIONKEY bigdecimal(32767) OPTIONS (NAMEINSOURCE '"C_NATIONKEY"', CHAR_OCTET_LENGTH 22, NATIVE_TYPE 'NUMBER'),
    C_PHONE string(15) OPTIONS (NAMEINSOURCE '"C_PHONE"', NATIVE_TYPE 'CHAR'),
    C_ACCTBAL bigdecimal(38) OPTIONS (NAMEINSOURCE '"C_ACCTBAL"', CHAR_OCTET_LENGTH 22, NATIVE_TYPE 'NUMBER'),
    C_MKTSEGMENT string(10) OPTIONS (NAMEINSOURCE '"C_MKTSEGMENT"', NATIVE_TYPE 'CHAR'),
    C_COMMENT string(117) OPTIONS (NAMEINSOURCE '"C_COMMENT"', NATIVE_TYPE 'VARCHAR2')
) OPTIONS (NAMEINSOURCE '"SOAEDS"."CUSTOMER"', UPDATABLE TRUE, CARDINALITY 150000);
 
CREATE FOREIGN TABLE "SOAEDS.DEPARTMENTS" (
    PERSON_ID bigdecimal(32767) NOT NULL OPTIONS (NAMEINSOURCE '"PERSON_ID"', CHAR_OCTET_LENGTH 22, NATIVE_TYPE 'NUMBER'),
    D001 string(255) OPTIONS (NAMEINSOURCE '"D001"', NATIVE_TYPE 'VARCHAR2'),
    D002 string(255) OPTIONS (NAMEINSOURCE '"D002"', NATIVE_TYPE 'VARCHAR2'),
    D003 string(255) OPTIONS (NAMEINSOURCE '"D003"', NATIVE_TYPE 'VARCHAR2'),
    D004 string(255) OPTIONS (NAMEINSOURCE '"D004"', NATIVE_TYPE 'VARCHAR2'),
    D005 string(255) OPTIONS (NAMEINSOURCE '"D005"', NATIVE_TYPE 'VARCHAR2'),
    D006 string(255) OPTIONS (NAMEINSOURCE '"D006"', NATIVE_TYPE 'VARCHAR2'),
    D007 string(255) OPTIONS (NAMEINSOURCE '"D007"', NATIVE_TYPE 'VARCHAR2'),
    D008 string(255) OPTIONS (NAMEINSOURCE '"D008"', NATIVE_TYPE 'VARCHAR2'),
    D009 string(255) OPTIONS (NAMEINSOURCE '"D009"', NATIVE_TYPE 'VARCHAR2'),
    D010 string(255) OPTIONS (NAMEINSOURCE '"D010"', NATIVE_TYPE 'VARCHAR2'),
    D011 string(255) OPTIONS (NAMEINSOURCE '"D011"', NATIVE_TYPE 'VARCHAR2'),
    D012 string(255) OPTIONS (NAMEINSOURCE '"D012"', NATIVE_TYPE 'VARCHAR2'),
    D013 string(255) OPTIONS (NAMEINSOURCE '"D013"', NATIVE_TYPE 'VARCHAR2'),
    D014 string(255) OPTIONS (NAMEINSOURCE '"D014"', NATIVE_TYPE 'VARCHAR2'),
    D015 string(255) OPTIONS (NAMEINSOURCE '"D015"', NATIVE_TYPE 'VARCHAR2'),
    D016 string(255) OPTIONS (NAMEINSOURCE '"D016"', NATIVE_TYPE 'VARCHAR2'),
    D017 string(255) OPTIONS (NAMEINSOURCE '"D017"', NATIVE_TYPE 'VARCHAR2'),
    D018 string(255) OPTIONS (NAMEINSOURCE '"D018"', NATIVE_TYPE 'VARCHAR2'),
    D019 string(255) OPTIONS (NAMEINSOURCE '"D019"', NATIVE_TYPE 'VARCHAR2'),
    D020 string(255) OPTIONS (NAMEINSOURCE '"D020"', NATIVE_TYPE 'VARCHAR2'),
    D021 string(255) OPTIONS (NAMEINSOURCE '"D021"', NATIVE_TYPE 'VARCHAR2'),
    D022 string(255) OPTIONS (NAMEINSOURCE '"D022"', NATIVE_TYPE 'VARCHAR2'),
    D023 string(255) OPTIONS (NAMEINSOURCE '"D023"', NATIVE_TYPE 'VARCHAR2'),
    D024 string(255) OPTIONS (NAMEINSOURCE '"D024"', NATIVE_TYPE 'VARCHAR2'),
    D025 string(255) OPTIONS (NAMEINSOURCE '"D025"', NATIVE_TYPE 'VARCHAR2'),
    D026 string(255) OPTIONS (NAMEINSOURCE '"D026"', NATIVE_TYPE 'VARCHAR2'),
    D027 string(255) OPTIONS (NAMEINSOURCE '"D027"', NATIVE_TYPE 'VARCHAR2'),
    D028 string(255) OPTIONS (NAMEINSOURCE '"D028"', NATIVE_TYPE 'VARCHAR2'),
    D029 string(255) OPTIONS (NAMEINSOURCE '"D029"', NATIVE_TYPE 'VARCHAR2'),
    D030 string(255) OPTIONS (NAMEINSOURCE '"D030"', NATIVE_TYPE 'VARCHAR2'),
    D031 string(255) OPTIONS (NAMEINSOURCE '"D031"', NATIVE_TYPE 'VARCHAR2'),
    D032 string(255) OPTIONS (NAMEINSOURCE '"D032"', NATIVE_TYPE 'VARCHAR2'),
    D033 string(255) OPTIONS (NAMEINSOURCE '"D033"', NATIVE_TYPE 'VARCHAR2'),
    D034 string(255) OPTIONS (NAMEINSOURCE '"D034"', NATIVE_TYPE 'VARCHAR2'),
    D035 string(255) OPTIONS (NAMEINSOURCE '"D035"', NATIVE_TYPE 'VARCHAR2'),
    D036 string(255) OPTIONS (NAMEINSOURCE '"D036"', NATIVE_TYPE 'VARCHAR2'),
    D037 string(255) OPTIONS (NAMEINSOURCE '"D037"', NATIVE_TYPE 'VARCHAR2'),
    D038 string(255) OPTIONS (NAMEINSOURCE '"D038"', NATIVE_TYPE 'VARCHAR2'),
    D039 string(255) OPTIONS (NAMEINSOURCE '"D039"', NATIVE_TYPE 'VARCHAR2'),
    D040 string(255) OPTIONS (NAMEINSOURCE '"D040"', NATIVE_TYPE 'VARCHAR2'),
    D041 string(255) OPTIONS (NAMEINSOURCE '"D041"', NATIVE_TYPE 'VARCHAR2'),
    D042 string(255) OPTIONS (NAMEINSOURCE '"D042"', NATIVE_TYPE 'VARCHAR2'),
    D043 string(255) OPTIONS (NAMEINSOURCE '"D043"', NATIVE_TYPE 'VARCHAR2'),
    D044 string(255) OPTIONS (NAMEINSOURCE '"D044"', NATIVE_TYPE 'VARCHAR2'),
    D045 string(255) OPTIONS (NAMEINSOURCE '"D045"', NATIVE_TYPE 'VARCHAR2'),
    D046 string(255) OPTIONS (NAMEINSOURCE '"D046"', NATIVE_TYPE 'VARCHAR2'),
    D047 string(255) OPTIONS (NAMEINSOURCE '"D047"', NATIVE_TYPE 'VARCHAR2'),
    D048 string(255) OPTIONS (NAMEINSOURCE '"D048"', NATIVE_TYPE 'VARCHAR2'),
    D049 string(255) OPTIONS (NAMEINSOURCE '"D049"', NATIVE_TYPE 'VARCHAR2'),
    D050 string(255) OPTIONS (NAMEINSOURCE '"D050"', NATIVE_TYPE 'VARCHAR2'),
    D051 string(255) OPTIONS (NAMEINSOURCE '"D051"', NATIVE_TYPE 'VARCHAR2'),
    D052 string(255) OPTIONS (NAMEINSOURCE '"D052"', NATIVE_TYPE 'VARCHAR2'),
    D053 string(255) OPTIONS (NAMEINSOURCE '"D053"', NATIVE_TYPE 'VARCHAR2'),
    D054 string(255) OPTIONS (NAMEINSOURCE '"D054"', NATIVE_TYPE 'VARCHAR2'),
    D055 string(255) OPTIONS (NAMEINSOURCE '"D055"', NATIVE_TYPE 'VARCHAR2'),
    D056 string(255) OPTIONS (NAMEINSOURCE '"D056"', NATIVE_TYPE 'VARCHAR2'),
    D057 string(255) OPTIONS (NAMEINSOURCE '"D057"', NATIVE_TYPE 'VARCHAR2'),
    D058 string(255) OPTIONS (NAMEINSOURCE '"D058"', NATIVE_TYPE 'VARCHAR2'),
    D059 string(255) OPTIONS (NAMEINSOURCE '"D059"', NATIVE_TYPE 'VARCHAR2'),
    D060 string(255) OPTIONS (NAMEINSOURCE '"D060"', NATIVE_TYPE 'VARCHAR2'),
    D061 string(255) OPTIONS (NAMEINSOURCE '"D061"', NATIVE_TYPE 'VARCHAR2'),
    D062 string(255) OPTIONS (NAMEINSOURCE '"D062"', NATIVE_TYPE 'VARCHAR2'),
    D063 string(255) OPTIONS (NAMEINSOURCE '"D063"', NATIVE_TYPE 'VARCHAR2'),
    D064 string(255) OPTIONS (NAMEINSOURCE '"D064"', NATIVE_TYPE 'VARCHAR2'),
    D065 string(255) OPTIONS (NAMEINSOURCE '"D065"', NATIVE_TYPE 'VARCHAR2'),
    D066 string(255) OPTIONS (NAMEINSOURCE '"D066"', NATIVE_TYPE 'VARCHAR2'),
    D067 string(255) OPTIONS (NAMEINSOURCE '"D067"', NATIVE_TYPE 'VARCHAR2'),
    D068 string(255) OPTIONS (NAMEINSOURCE '"D068"', NATIVE_TYPE 'VARCHAR2'),
    D069 string(255) OPTIONS (NAMEINSOURCE '"D069"', NATIVE_TYPE 'VARCHAR2'),
    D070 string(255) OPTIONS (NAMEINSOURCE '"D070"', NATIVE_TYPE 'VARCHAR2'),
    D071 string(255) OPTIONS (NAMEINSOURCE '"D071"', NATIVE_TYPE 'VARCHAR2'),
    D072 string(255) OPTIONS (NAMEINSOURCE '"D072"', NATIVE_TYPE 'VARCHAR2'),
    D073 string(255) OPTIONS (NAMEINSOURCE '"D073"', NATIVE_TYPE 'VARCHAR2'),
    D074 string(255) OPTIONS (NAMEINSOURCE '"D074"', NATIVE_TYPE 'VARCHAR2'),
    D075 string(255) OPTIONS (NAMEINSOURCE '"D075"', NATIVE_TYPE 'VARCHAR2'),
    D076 string(255) OPTIONS (NAMEINSOURCE '"D076"', NATIVE_TYPE 'VARCHAR2'),
    D077 string(255) OPTIONS (NAMEINSOURCE '"D077"', NATIVE_TYPE 'VARCHAR2'),
    D078 string(255) OPTIONS (NAMEINSOURCE '"D078"', NATIVE_TYPE 'VARCHAR2'),
    D079 string(255) OPTIONS (NAMEINSOURCE '"D079"', NATIVE_TYPE 'VARCHAR2'),
    D080 string(255) OPTIONS (NAMEINSOURCE '"D080"', NATIVE_TYPE 'VARCHAR2'),
    D081 string(255) OPTIONS (NAMEINSOURCE '"D081"', NATIVE_TYPE 'VARCHAR2'),
    D082 string(255) OPTIONS (NAMEINSOURCE '"D082"', NATIVE_TYPE 'VARCHAR2'),
    D083 string(255) OPTIONS (NAMEINSOURCE '"D083"', NATIVE_TYPE 'VARCHAR2'),
    D084 string(255) OPTIONS (NAMEINSOURCE '"D084"', NATIVE_TYPE 'VARCHAR2'),
    D085 string(255) OPTIONS (NAMEINSOURCE '"D085"', NATIVE_TYPE 'VARCHAR2'),
    D086 string(255) OPTIONS (NAMEINSOURCE '"D086"', NATIVE_TYPE 'VARCHAR2'),
    D087 string(255) OPTIONS (NAMEINSOURCE '"D087"', NATIVE_TYPE 'VARCHAR2'),
    D088 string(255) OPTIONS (NAMEINSOURCE '"D088"', NATIVE_TYPE 'VARCHAR2'),
    D089 string(255) OPTIONS (NAMEINSOURCE '"D089"', NATIVE_TYPE 'VARCHAR2'),
    D090 string(255) OPTIONS (NAMEINSOURCE '"D090"', NATIVE_TYPE 'VARCHAR2'),
    D091 string(255) OPTIONS (NAMEINSOURCE '"D091"', NATIVE_TYPE 'VARCHAR2'),
    D092 string(255) OPTIONS (NAMEINSOURCE '"D092"', NATIVE_TYPE 'VARCHAR2'),
    D093 string(255) OPTIONS (NAMEINSOURCE '"D093"', NATIVE_TYPE 'VARCHAR2'),
    D094 string(255) OPTIONS (NAMEINSOURCE '"D094"', NATIVE_TYPE 'VARCHAR2'),
    D095 string(255) OPTIONS (NAMEINSOURCE '"D095"', NATIVE_TYPE 'VARCHAR2'),
    D096 string(255) OPTIONS (NAMEINSOURCE '"D096"', NATIVE_TYPE 'VARCHAR2'),
    D097 string(255) OPTIONS (NAMEINSOURCE '"D097"', NATIVE_TYPE 'VARCHAR2'),
    D098 string(255) OPTIONS (NAMEINSOURCE '"D098"', NATIVE_TYPE 'VARCHAR2'),
    D099 string(255) OPTIONS (NAMEINSOURCE '"D099"', NATIVE_TYPE 'VARCHAR2'),
    D100 string(255) OPTIONS (NAMEINSOURCE '"D100"', NATIVE_TYPE 'VARCHAR2'),
    D101 string(255) OPTIONS (NAMEINSOURCE '"D101"', NATIVE_TYPE 'VARCHAR2'),
    D102 string(255) OPTIONS (NAMEINSOURCE '"D102"', NATIVE_TYPE 'VARCHAR2'),
    D103 string(255) OPTIONS (NAMEINSOURCE '"D103"', NATIVE_TYPE 'VARCHAR2'),
    D104 string(255) OPTIONS (NAMEINSOURCE '"D104"', NATIVE_TYPE 'VARCHAR2'),
    D105 string(255) OPTIONS (NAMEINSOURCE '"D105"', NATIVE_TYPE 'VARCHAR2'),
    D106 string(255) OPTIONS (NAMEINSOURCE '"D106"', NATIVE_TYPE 'VARCHAR2'),
    D107 string(255) OPTIONS (NAMEINSOURCE '"D107"', NATIVE_TYPE 'VARCHAR2'),
    D108 string(255) OPTIONS (NAMEINSOURCE '"D108"', NATIVE_TYPE 'VARCHAR2'),
    D109 string(255) OPTIONS (NAMEINSOURCE '"D109"', NATIVE_TYPE 'VARCHAR2'),
    D110 string(255) OPTIONS (NAMEINSOURCE '"D110"', NATIVE_TYPE 'VARCHAR2'),
    D111 string(255) OPTIONS (NAMEINSOURCE '"D111"', NATIVE_TYPE 'VARCHAR2'),
    D112 string(255) OPTIONS (NAMEINSOURCE '"D112"', NATIVE_TYPE 'VARCHAR2'),
    D113 string(255) OPTIONS (NAMEINSOURCE '"D113"', NATIVE_TYPE 'VARCHAR2'),
    D114 string(255) OPTIONS (NAMEINSOURCE '"D114"', NATIVE_TYPE 'VARCHAR2'),
    D115 string(255) OPTIONS (NAMEINSOURCE '"D115"', NATIVE_TYPE 'VARCHAR2'),
    D116 string(255) OPTIONS (NAMEINSOURCE '"D116"', NATIVE_TYPE 'VARCHAR2'),
    D117 string(255) OPTIONS (NAMEINSOURCE '"D117"', NATIVE_TYPE 'VARCHAR2'),
    D118 string(255) OPTIONS (NAMEINSOURCE '"D118"', NATIVE_TYPE 'VARCHAR2'),
    D119 string(255) OPTIONS (NAMEINSOURCE '"D119"', NATIVE_TYPE 'VARCHAR2'),
    D120 string(255) OPTIONS (NAMEINSOURCE '"D120"', NATIVE_TYPE 'VARCHAR2'),
    D121 string(255) OPTIONS (NAMEINSOURCE '"D121"', NATIVE_TYPE 'VARCHAR2'),
    D122 string(255) OPTIONS (NAMEINSOURCE '"D122"', NATIVE_TYPE 'VARCHAR2'),
    D123 string(255) OPTIONS (NAMEINSOURCE '"D123"', NATIVE_TYPE 'VARCHAR2'),
    D124 string(255) OPTIONS (NAMEINSOURCE '"D124"', NATIVE_TYPE 'VARCHAR2'),
    D125 string(255) OPTIONS (NAMEINSOURCE '"D125"', NATIVE_TYPE 'VARCHAR2'),
    D126 string(255) OPTIONS (NAMEINSOURCE '"D126"', NATIVE_TYPE 'VARCHAR2'),
    D127 string(255) OPTIONS (NAMEINSOURCE '"D127"', NATIVE_TYPE 'VARCHAR2'),
    D128 string(255) OPTIONS (NAMEINSOURCE '"D128"', NATIVE_TYPE 'VARCHAR2'),
    D129 string(255) OPTIONS (NAMEINSOURCE '"D129"', NATIVE_TYPE 'VARCHAR2'),
    D130 string(255) OPTIONS (NAMEINSOURCE '"D130"', NATIVE_TYPE 'VARCHAR2'),
    D131 string(255) OPTIONS (NAMEINSOURCE '"D131"', NATIVE_TYPE 'VARCHAR2'),
    D132 string(255) OPTIONS (NAMEINSOURCE '"D132"', NATIVE_TYPE 'VARCHAR2'),
    D133 string(255) OPTIONS (NAMEINSOURCE '"D133"', NATIVE_TYPE 'VARCHAR2'),
    D134 string(255) OPTIONS (NAMEINSOURCE '"D134"', NATIVE_TYPE 'VARCHAR2'),
    D135 string(255) OPTIONS (NAMEINSOURCE '"D135"', NATIVE_TYPE 'VARCHAR2'),
    D136 string(255) OPTIONS (NAMEINSOURCE '"D136"', NATIVE_TYPE 'VARCHAR2'),
    D137 string(255) OPTIONS (NAMEINSOURCE '"D137"', NATIVE_TYPE 'VARCHAR2'),
    D138 string(255) OPTIONS (NAMEINSOURCE '"D138"', NATIVE_TYPE 'VARCHAR2'),
    D139 string(255) OPTIONS (NAMEINSOURCE '"D139"', NATIVE_TYPE 'VARCHAR2'),
    D140 string(255) OPTIONS (NAMEINSOURCE '"D140"', NATIVE_TYPE 'VARCHAR2'),
    D141 string(255) OPTIONS (NAMEINSOURCE '"D141"', NATIVE_TYPE 'VARCHAR2'),
    D142 string(255) OPTIONS (NAMEINSOURCE '"D142"', NATIVE_TYPE 'VARCHAR2'),
    D143 string(255) OPTIONS (NAMEINSOURCE '"D143"', NATIVE_TYPE 'VARCHAR2'),
    D144 string(255) OPTIONS (NAMEINSOURCE '"D144"', NATIVE_TYPE 'VARCHAR2'),
    D145 string(255) OPTIONS (NAMEINSOURCE '"D145"', NATIVE_TYPE 'VARCHAR2'),
    D146 string(255) OPTIONS (NAMEINSOURCE '"D146"', NATIVE_TYPE 'VARCHAR2'),
    D147 string(255) OPTIONS (NAMEINSOURCE '"D147"', NATIVE_TYPE 'VARCHAR2'),
    D148 string(255) OPTIONS (NAMEINSOURCE '"D148"', NATIVE_TYPE 'VARCHAR2'),
    D149 string(255) OPTIONS (NAMEINSOURCE '"D149"', NATIVE_TYPE 'VARCHAR2'),
    D150 string(255) OPTIONS (NAMEINSOURCE '"D150"', NATIVE_TYPE 'VARCHAR2'),
    D151 string(255) OPTIONS (NAMEINSOURCE '"D151"', NATIVE_TYPE 'VARCHAR2'),
    D152 string(255) OPTIONS (NAMEINSOURCE '"D152"', NATIVE_TYPE 'VARCHAR2'),
    D153 string(255) OPTIONS (NAMEINSOURCE '"D153"', NATIVE_TYPE 'VARCHAR2'),
    D154 string(255) OPTIONS (NAMEINSOURCE '"D154"', NATIVE_TYPE 'VARCHAR2'),
    D155 string(255) OPTIONS (NAMEINSOURCE '"D155"', NATIVE_TYPE 'VARCHAR2'),
    D156 string(255) OPTIONS (NAMEINSOURCE '"D156"', NATIVE_TYPE 'VARCHAR2'),
    D157 string(255) OPTIONS (NAMEINSOURCE '"D157"', NATIVE_TYPE 'VARCHAR2'),
    D158 string(255) OPTIONS (NAMEINSOURCE '"D158"', NATIVE_TYPE 'VARCHAR2'),
    D159 string(255) OPTIONS (NAMEINSOURCE '"D159"', NATIVE_TYPE 'VARCHAR2'),
    D160 string(255) OPTIONS (NAMEINSOURCE '"D160"', NATIVE_TYPE 'VARCHAR2'),
    D161 string(255) OPTIONS (NAMEINSOURCE '"D161"', NATIVE_TYPE 'VARCHAR2'),
    D162 string(255) OPTIONS (NAMEINSOURCE '"D162"', NATIVE_TYPE 'VARCHAR2'),
    D163 string(255) OPTIONS (NAMEINSOURCE '"D163"', NATIVE_TYPE 'VARCHAR2'),
    D164 string(255) OPTIONS (NAMEINSOURCE '"D164"', NATIVE_TYPE 'VARCHAR2'),
    D165 string(255) OPTIONS (NAMEINSOURCE '"D165"', NATIVE_TYPE 'VARCHAR2'),
    D166 string(255) OPTIONS (NAMEINSOURCE '"D166"', NATIVE_TYPE 'VARCHAR2'),
    D167 string(255) OPTIONS (NAMEINSOURCE '"D167"', NATIVE_TYPE 'VARCHAR2'),
    D168 string(255) OPTIONS (NAMEINSOURCE '"D168"', NATIVE_TYPE 'VARCHAR2'),
    D169 string(255) OPTIONS (NAMEINSOURCE '"D169"', NATIVE_TYPE 'VARCHAR2'),
    D170 string(255) OPTIONS (NAMEINSOURCE '"D170"', NATIVE_TYPE 'VARCHAR2'),
    D171 string(255) OPTIONS (NAMEINSOURCE '"D171"', NATIVE_TYPE 'VARCHAR2'),
    D172 string(255) OPTIONS (NAMEINSOURCE '"D172"', NATIVE_TYPE 'VARCHAR2'),
    D173 string(255) OPTIONS (NAMEINSOURCE '"D173"', NATIVE_TYPE 'VARCHAR2'),
    D174 string(255) OPTIONS (NAMEINSOURCE '"D174"', NATIVE_TYPE 'VARCHAR2'),
    D175 string(255) OPTIONS (NAMEINSOURCE '"D175"', NATIVE_TYPE 'VARCHAR2'),
    D176 string(255) OPTIONS (NAMEINSOURCE '"D176"', NATIVE_TYPE 'VARCHAR2'),
    D177 string(255) OPTIONS (NAMEINSOURCE '"D177"', NATIVE_TYPE 'VARCHAR2'),
    D178 string(255) OPTIONS (NAMEINSOURCE '"D178"', NATIVE_TYPE 'VARCHAR2'),
    D179 string(255) OPTIONS (NAMEINSOURCE '"D179"', NATIVE_TYPE 'VARCHAR2'),
    D180 string(255) OPTIONS (NAMEINSOURCE '"D180"', NATIVE_TYPE 'VARCHAR2'),
    D181 string(255) OPTIONS (NAMEINSOURCE '"D181"', NATIVE_TYPE 'VARCHAR2'),
    D182 string(255) OPTIONS (NAMEINSOURCE '"D182"', NATIVE_TYPE 'VARCHAR2'),
    D183 string(255) OPTIONS (NAMEINSOURCE '"D183"', NATIVE_TYPE 'VARCHAR2'),
    D184 string(255) OPTIONS (NAMEINSOURCE '"D184"', NATIVE_TYPE 'VARCHAR2'),
    D185 string(255) OPTIONS (NAMEINSOURCE '"D185"', NATIVE_TYPE 'VARCHAR2'),
    D186 string(255) OPTIONS (NAMEINSOURCE '"D186"', NATIVE_TYPE 'VARCHAR2'),
    D187 string(255) OPTIONS (NAMEINSOURCE '"D187"', NATIVE_TYPE 'VARCHAR2'),
    D188 string(255) OPTIONS (NAMEINSOURCE '"D188"', NATIVE_TYPE 'VARCHAR2'),
    D189 string(255) OPTIONS (NAMEINSOURCE '"D189"', NATIVE_TYPE 'VARCHAR2'),
    D190 string(255) OPTIONS (NAMEINSOURCE '"D190"', NATIVE_TYPE 'VARCHAR2'),
    D191 string(255) OPTIONS (NAMEINSOURCE '"D191"', NATIVE_TYPE 'VARCHAR2'),
    D192 string(255) OPTIONS (NAMEINSOURCE '"D192"', NATIVE_TYPE 'VARCHAR2'),
    D193 string(255) OPTIONS (NAMEINSOURCE '"D193"', NATIVE_TYPE 'VARCHAR2'),
    D194 string(255) OPTIONS (NAMEINSOURCE '"D194"', NATIVE_TYPE 'VARCHAR2'),
    D195 string(255) OPTIONS (NAMEINSOURCE '"D195"', NATIVE_TYPE 'VARCHAR2'),
    D196 string(255) OPTIONS (NAMEINSOURCE '"D196"', NATIVE_TYPE 'VARCHAR2'),
    D197 string(255) OPTIONS (NAMEINSOURCE '"D197"', NATIVE_TYPE 'VARCHAR2'),
    D198 string(255) OPTIONS (NAMEINSOURCE '"D198"', NATIVE_TYPE 'VARCHAR2'),
    D199 string(255) OPTIONS (NAMEINSOURCE '"D199"', NATIVE_TYPE 'VARCHAR2'),
    D200 string(255) OPTIONS (NAMEINSOURCE '"D200"', NATIVE_TYPE 'VARCHAR2'),
    CONSTRAINT SYS_C0077503 PRIMARY KEY(PERSON_ID)
) OPTIONS (NAMEINSOURCE '"SOAEDS"."DEPARTMENTS"', UPDATABLE TRUE, CARDINALITY 500000);
 
CREATE FOREIGN TABLE "SOAEDS.LINEITEM" (
    L_ORDERSKEY bigdecimal(32767) OPTIONS (NAMEINSOURCE '"L_ORDERSKEY"', CHAR_OCTET_LENGTH 22, NATIVE_TYPE 'NUMBER'),
    L_PARTKEY bigdecimal(32767) OPTIONS (NAMEINSOURCE '"L_PARTKEY"', CHAR_OCTET_LENGTH 22, NATIVE_TYPE 'NUMBER'),
    L_SUPPLIERKEY bigdecimal(32767) OPTIONS (NAMEINSOURCE '"L_SUPPLIERKEY"', CHAR_OCTET_LENGTH 22, NATIVE_TYPE 'NUMBER'),
    L_LINENUMBER bigdecimal(32767) OPTIONS (NAMEINSOURCE '"L_LINENUMBER"', CHAR_OCTET_LENGTH 22, NATIVE_TYPE 'NUMBER'),
    L_QUANTITY bigdecimal(38) OPTIONS (NAMEINSOURCE '"L_QUANTITY"', CHAR_OCTET_LENGTH 22, NATIVE_TYPE 'NUMBER'),
    L_EXTENDEDPRICE bigdecimal(38) OPTIONS (NAMEINSOURCE '"L_EXTENDEDPRICE"', CHAR_OCTET_LENGTH 22, NATIVE_TYPE 'NUMBER'),
    L_DISCOUNT bigdecimal(38) OPTIONS (NAMEINSOURCE '"L_DISCOUNT"', CHAR_OCTET_LENGTH 22, NATIVE_TYPE 'NUMBER'),
    L_TAX bigdecimal(38) OPTIONS (NAMEINSOURCE '"L_TAX"', CHAR_OCTET_LENGTH 22, NATIVE_TYPE 'NUMBER'),
    L_RETURNFLAG string(1) OPTIONS (NAMEINSOURCE '"L_RETURNFLAG"', NATIVE_TYPE 'CHAR'),
    L_LINESTATUS string(1) OPTIONS (NAMEINSOURCE '"L_LINESTATUS"', NATIVE_TYPE 'CHAR'),
    L_SHIPDATE timestamp OPTIONS (NAMEINSOURCE '"L_SHIPDATE"', NATIVE_TYPE 'DATE'),
    L_COMMITDATE timestamp OPTIONS (NAMEINSOURCE '"L_COMMITDATE"', NATIVE_TYPE 'DATE'),
    L_RECEIPTDATE timestamp OPTIONS (NAMEINSOURCE '"L_RECEIPTDATE"', NATIVE_TYPE 'DATE'),
    L_SHIPINSTRUCT string(25) OPTIONS (NAMEINSOURCE '"L_SHIPINSTRUCT"', NATIVE_TYPE 'CHAR'),
    L_SHIPMODE string(10) OPTIONS (NAMEINSOURCE '"L_SHIPMODE"', NATIVE_TYPE 'CHAR'),
    L_COMMENT string(44) OPTIONS (NAMEINSOURCE '"L_COMMENT"', NATIVE_TYPE 'VARCHAR2')
) OPTIONS (NAMEINSOURCE '"SOAEDS"."LINEITEM"', UPDATABLE TRUE, CARDINALITY 6001215);
 
CREATE FOREIGN TABLE "SOAEDS.NATION" (
    N_NATIONKEY bigdecimal(32767) OPTIONS (NAMEINSOURCE '"N_NATIONKEY"', CHAR_OCTET_LENGTH 22, NATIVE_TYPE 'NUMBER'),
    N_NAME string(25) OPTIONS (NAMEINSOURCE '"N_NAME"', NATIVE_TYPE 'CHAR'),
    N_REGIONKEY bigdecimal(32767) OPTIONS (NAMEINSOURCE '"N_REGIONKEY"', CHAR_OCTET_LENGTH 22, NATIVE_TYPE 'NUMBER'),
    N_COMMENT string(152) OPTIONS (NAMEINSOURCE '"N_COMMENT"', NATIVE_TYPE 'VARCHAR2')
) OPTIONS (NAMEINSOURCE '"SOAEDS"."NATION"', UPDATABLE TRUE, CARDINALITY 25);
 
CREATE FOREIGN TABLE "SOAEDS.ORDERS" (
    O_ORDERSKEY bigdecimal(32767) OPTIONS (NAMEINSOURCE '"O_ORDERSKEY"', CHAR_OCTET_LENGTH 22, NATIVE_TYPE 'NUMBER'),
    O_CUSTOMERKEY bigdecimal(32767) OPTIONS (NAMEINSOURCE '"O_CUSTOMERKEY"', CHAR_OCTET_LENGTH 22, NATIVE_TYPE 'NUMBER'),
    O_ORDERSTATUS string(1) OPTIONS (NAMEINSOURCE '"O_ORDERSTATUS"', NATIVE_TYPE 'CHAR'),
    O_TOTALPRICE bigdecimal(38) OPTIONS (NAMEINSOURCE '"O_TOTALPRICE"', CHAR_OCTET_LENGTH 22, NATIVE_TYPE 'NUMBER'),
    O_ORDERDATE timestamp OPTIONS (NAMEINSOURCE '"O_ORDERDATE"', NATIVE_TYPE 'DATE'),
    O_ORDERPRIORITY string(15) OPTIONS (NAMEINSOURCE '"O_ORDERPRIORITY"', NATIVE_TYPE 'CHAR'),
    O_CLERK string(15) OPTIONS (NAMEINSOURCE '"O_CLERK"', NATIVE_TYPE 'CHAR'),
    O_SHIPPRIORITY bigdecimal(38) OPTIONS (NAMEINSOURCE '"O_SHIPPRIORITY"', CHAR_OCTET_LENGTH 22, NATIVE_TYPE 'NUMBER'),
    O_COMMENT string(79) OPTIONS (NAMEINSOURCE '"O_COMMENT"', NATIVE_TYPE 'VARCHAR2')
) OPTIONS (NAMEINSOURCE '"SOAEDS"."ORDERS"', UPDATABLE TRUE, CARDINALITY 1500000);
 
CREATE FOREIGN TABLE "SOAEDS.PART" (
    P_PARTKEY bigdecimal(32767) OPTIONS (NAMEINSOURCE '"P_PARTKEY"', CHAR_OCTET_LENGTH 22, NATIVE_TYPE 'NUMBER'),
    P_NAME string(55) OPTIONS (NAMEINSOURCE '"P_NAME"', NATIVE_TYPE 'VARCHAR2'),
    P_MFGR string(25) OPTIONS (NAMEINSOURCE '"P_MFGR"', NATIVE_TYPE 'CHAR'),
    P_BRAND string(10) OPTIONS (NAMEINSOURCE '"P_BRAND"', NATIVE_TYPE 'CHAR'),
    P_TYPE string(25) OPTIONS (NAMEINSOURCE '"P_TYPE"', NATIVE_TYPE 'VARCHAR2'),
    P_SIZE bigdecimal(32767) OPTIONS (NAMEINSOURCE '"P_SIZE"', CHAR_OCTET_LENGTH 22, NATIVE_TYPE 'NUMBER'),
    P_CONTAINER string(10) OPTIONS (NAMEINSOURCE '"P_CONTAINER"', NATIVE_TYPE 'CHAR'),
    P_RETAILPRICE bigdecimal(38) OPTIONS (NAMEINSOURCE '"P_RETAILPRICE"', CHAR_OCTET_LENGTH 22, NATIVE_TYPE 'NUMBER'),
    P_COMMENT string(23) OPTIONS (NAMEINSOURCE '"P_COMMENT"', NATIVE_TYPE 'VARCHAR2')
) OPTIONS (NAMEINSOURCE '"SOAEDS"."PART"', UPDATABLE TRUE, CARDINALITY 200000);
 
CREATE FOREIGN TABLE "SOAEDS.PARTSUPP" (
    PS_PARTKEY bigdecimal(32767) OPTIONS (NAMEINSOURCE '"PS_PARTKEY"', CHAR_OCTET_LENGTH 22, NATIVE_TYPE 'NUMBER'),
    PS_SUPPLIERKEY bigdecimal(32767) OPTIONS (NAMEINSOURCE '"PS_SUPPLIERKEY"', CHAR_OCTET_LENGTH 22, NATIVE_TYPE 'NUMBER'),
    PS_AVAILQTY bigdecimal(32767) OPTIONS (NAMEINSOURCE '"PS_AVAILQTY"', CHAR_OCTET_LENGTH 22, NATIVE_TYPE 'NUMBER'),
    PS_SUPPLYCOST bigdecimal(38) OPTIONS (NAMEINSOURCE '"PS_SUPPLYCOST"', CHAR_OCTET_LENGTH 22, NATIVE_TYPE 'NUMBER'),
    PS_COMMENT string(199) OPTIONS (NAMEINSOURCE '"PS_COMMENT"', NATIVE_TYPE 'VARCHAR2')
) OPTIONS (NAMEINSOURCE '"SOAEDS"."PARTSUPP"', UPDATABLE TRUE, CARDINALITY 800000);
 
CREATE FOREIGN TABLE "SOAEDS.PERSONS" (
    PERSON_ID bigdecimal(32767) NOT NULL OPTIONS (NAMEINSOURCE '"PERSON_ID"', CHAR_OCTET_LENGTH 22, NATIVE_TYPE 'NUMBER'),
    PERSON_NAME string(255) NOT NULL OPTIONS (NAMEINSOURCE '"PERSON_NAME"', NATIVE_TYPE 'VARCHAR2'),
    CONSTRAINT SYS_C0077501 PRIMARY KEY(PERSON_ID)
) OPTIONS (NAMEINSOURCE '"SOAEDS"."PERSONS"', UPDATABLE TRUE, CARDINALITY 1000000);
 
CREATE FOREIGN TABLE "SOAEDS.REGION" (
    R_REGIONKEY bigdecimal(32767) OPTIONS (NAMEINSOURCE '"R_REGIONKEY"', CHAR_OCTET_LENGTH 22, NATIVE_TYPE 'NUMBER'),
    R_NAME string(25) OPTIONS (NAMEINSOURCE '"R_NAME"', NATIVE_TYPE 'CHAR'),
    R_COMMENT string(152) OPTIONS (NAMEINSOURCE '"R_COMMENT"', NATIVE_TYPE 'VARCHAR2')
) OPTIONS (NAMEINSOURCE '"SOAEDS"."REGION"', UPDATABLE TRUE, CARDINALITY 5);
 
CREATE FOREIGN TABLE "SOAEDS.SUPPLIER" (
    S_SUPPLIERKEY bigdecimal(32767) OPTIONS (NAMEINSOURCE '"S_SUPPLIERKEY"', CHAR_OCTET_LENGTH 22, NATIVE_TYPE 'NUMBER'),
    S_NAME string(25) OPTIONS (NAMEINSOURCE '"S_NAME"', NATIVE_TYPE 'CHAR'),
    S_ADDRESS string(40) OPTIONS (NAMEINSOURCE '"S_ADDRESS"', NATIVE_TYPE 'VARCHAR2'),
    S_NATIONKEY bigdecimal(32767) OPTIONS (NAMEINSOURCE '"S_NATIONKEY"', CHAR_OCTET_LENGTH 22, NATIVE_TYPE 'NUMBER'),
    S_PHONE string(15) OPTIONS (NAMEINSOURCE '"S_PHONE"', NATIVE_TYPE 'CHAR'),
    S_ACCTBAL bigdecimal(38) OPTIONS (NAMEINSOURCE '"S_ACCTBAL"', CHAR_OCTET_LENGTH 22, NATIVE_TYPE 'NUMBER'),
    S_COMMENT string(101) OPTIONS (NAMEINSOURCE '"S_COMMENT"', NATIVE_TYPE 'VARCHAR2')
) OPTIONS (NAMEINSOURCE '"SOAEDS"."SUPPLIER"', UPDATABLE TRUE, CARDINALITY 10000);
 
CREATE FOREIGN TABLE "SOAEDS.WRITES" (
    WRITE_ID bigdecimal(32767) OPTIONS (NAMEINSOURCE '"WRITE_ID"', CHAR_OCTET_LENGTH 22, NATIVE_TYPE 'NUMBER'),
    WRITE_TEXT string(255) OPTIONS (NAMEINSOURCE '"WRITE_TEXT"', NATIVE_TYPE 'VARCHAR2')
) OPTIONS (NAMEINSOURCE '"SOAEDS"."WRITES"', UPDATABLE TRUE, CARDINALITY 0);