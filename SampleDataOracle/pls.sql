
COUNTRY_ID    COUNTRY_NAME       REGION_ID 
_____________ _______________ ____________ 
AR            Argentina                  2 
AU            Australia                  3 
BE            Belgium                    1 
BR            Brazil                     2 
CA            Canada                     2 
CH            Switzerland                1 
CN            China                      3 
DE            Germany                    1 
DK            Denmark                    1 
EG            Egypt                      4 
FR            France                     1 
IL            Israel                     4 
IN            India                      3 
IT            Italy                      1 
JP            Japan                      3 
KW            Kuwait                     4 
ML            Malaysia                   3 
MX            Mexico                     2 
NG            Nigeria                    4 
NL            Netherlands                1 

COUNTRY_ID    COUNTRY_NAME                   REGION_ID 
_____________ ___________________________ ____________ 
SG            Singapore                              3 
UK            United Kingdom                         1 
US            United States of America               2 
ZM            Zambia                                 4 
ZW            Zimbabwe                               4 

25 rows selected. 


   DEPARTMENT_ID DEPARTMENT_NAME            MANAGER_ID    LOCATION_ID 
________________ _______________________ _____________ ______________ 
              10 Administration                    200           1700 
              20 Marketing                         201           1800 
              30 Purchasing                        114           1700 
              40 Human Resources                   203           2400 
              50 Shipping                          121           1500 
              60 IT                                103           1400 
              70 Public Relations                  204           2700 
              80 Sales                             145           2500 
              90 Executive                         100           1700 
             100 Finance                           108           1700 
             110 Accounting                        205           1700 
             120 Treasury                                        1700 
             130 Corporate Tax                                   1700 
             140 Control And Credit                              1700 
             150 Shareholder Services                            1700 
             160 Benefits                                        1700 
             170 Manufacturing                                   1700 
             180 Construction                                    1700 
             190 Contracting                                     1700 
             200 Operations                                      1700 

   DEPARTMENT_ID DEPARTMENT_NAME        MANAGER_ID    LOCATION_ID 
________________ ___________________ _____________ ______________ 
             210 IT Support                                  1700 
             220 NOC                                         1700 
             230 IT Helpdesk                                 1700 
             240 Government Sales                            1700 
             250 Retail Sales                                1700 
             260 Recruiting                                  1700 
             270 Payroll                                     1700 

27 rows selected. 


   EMPLOYEE_ID FIRST_NAME     LAST_NAME     EMAIL       PHONE_NUMBER    HIRE_DATE    JOB_ID           SALARY    COMMISSION_PCT    MANAGER_ID    DEPARTMENT_ID 
______________ ______________ _____________ ___________ _______________ ____________ _____________ _________ _________________ _____________ ________________ 
           100 Steven         King          SKING       515.123.4567    17-JUN-03    AD_PRES           24000                                               90 
           101 Neena          Kochhar       NKOCHHAR    515.123.4568    21-SEP-05    AD_VP             17000                             100               90 
           102 Lex            De Haan       LDEHAAN     515.123.4569    13-JAN-01    AD_VP             17000                             100               90 
           103 Alexander      Hunold        AHUNOLD     590.423.4567    03-JAN-06    IT_PROG            9000                             102               60 
           104 Bruce          Ernst         BERNST      590.423.4568    21-MAY-07    IT_PROG            6000                             103               60 
           105 David          Austin        DAUSTIN     590.423.4569    25-JUN-05    IT_PROG            4800                             103               60 
           106 Valli          Pataballa     VPATABAL    590.423.4560    05-FEB-06    IT_PROG            4800                             103               60 
           107 Diana          Lorentz       DLORENTZ    590.423.5567    07-FEB-07    IT_PROG            4200                             103               60 
           108 Nancy          Greenberg     NGREENBE    515.124.4569    17-AUG-02    FI_MGR            12008                             101              100 
           109 Daniel         Faviet        DFAVIET     515.124.4169    16-AUG-02    FI_ACCOUNT         9000                             108              100 
           110 John           Chen          JCHEN       515.124.4269    28-SEP-05    FI_ACCOUNT         8200                             108              100 
           111 Ismael         Sciarra       ISCIARRA    515.124.4369    30-SEP-05    FI_ACCOUNT         7700                             108              100 
           112 Jose Manuel    Urman         JMURMAN     515.124.4469    07-MAR-06    FI_ACCOUNT         7800                             108              100 
           113 Luis           Popp          LPOPP       515.124.4567    07-DEC-07    FI_ACCOUNT         6900                             108              100 
           114 Den            Raphaely      DRAPHEAL    515.127.4561    07-DEC-02    PU_MAN            11000                             100               30 
           115 Alexander      Khoo          AKHOO       515.127.4562    18-MAY-03    PU_CLERK           3100                             114               30 
           116 Shelli         Baida         SBAIDA      515.127.4563    24-DEC-05    PU_CLERK           2900                             114               30 
           117 Sigal          Tobias        STOBIAS     515.127.4564    24-JUL-05    PU_CLERK           2800                             114               30 
           118 Guy            Himuro        GHIMURO     515.127.4565    15-NOV-06    PU_CLERK           2600                             114               30 
           119 Karen          Colmenares    KCOLMENA    515.127.4566    10-AUG-07    PU_CLERK           2500                             114               30 

   EMPLOYEE_ID FIRST_NAME    LAST_NAME      EMAIL       PHONE_NUMBER    HIRE_DATE    JOB_ID         SALARY    COMMISSION_PCT    MANAGER_ID    DEPARTMENT_ID 
______________ _____________ ______________ ___________ _______________ ____________ ___________ _________ _________________ _____________ ________________ 
           120 Matthew       Weiss          MWEISS      650.123.1234    18-JUL-04    ST_MAN           8000                             100               50 
           121 Adam          Fripp          AFRIPP      650.123.2234    10-APR-05    ST_MAN           8200                             100               50 
           122 Payam         Kaufling       PKAUFLIN    650.123.3234    01-MAY-03    ST_MAN           7900                             100               50 
           123 Shanta        Vollman        SVOLLMAN    650.123.4234    10-OCT-05    ST_MAN           6500                             100               50 
           124 Kevin         Mourgos        KMOURGOS    650.123.5234    16-NOV-07    ST_MAN           5800                             100               50 
           125 Julia         Nayer          JNAYER      650.124.1214    16-JUL-05    ST_CLERK         3200                             120               50 
           126 Irene         Mikkilineni    IMIKKILI    650.124.1224    28-SEP-06    ST_CLERK         2700                             120               50 
           127 James         Landry         JLANDRY     650.124.1334    14-JAN-07    ST_CLERK         2400                             120               50 
           128 Steven        Markle         SMARKLE     650.124.1434    08-MAR-08    ST_CLERK         2200                             120               50 
           129 Laura         Bissot         LBISSOT     650.124.5234    20-AUG-05    ST_CLERK         3300                             121               50 
           130 Mozhe         Atkinson       MATKINSO    650.124.6234    30-OCT-05    ST_CLERK         2800                             121               50 
           131 James         Marlow         JAMRLOW     650.124.7234    16-FEB-05    ST_CLERK         2500                             121               50 
           132 TJ            Olson          TJOLSON     650.124.8234    10-APR-07    ST_CLERK         2100                             121               50 
           133 Jason         Mallin         JMALLIN     650.127.1934    14-JUN-04    ST_CLERK         3300                             122               50 
           134 Michael       Rogers         MROGERS     650.127.1834    26-AUG-06    ST_CLERK         2900                             122               50 
           135 Ki            Gee            KGEE        650.127.1734    12-DEC-07    ST_CLERK         2400                             122               50 
           136 Hazel         Philtanker     HPHILTAN    650.127.1634    06-FEB-08    ST_CLERK         2200                             122               50 
           137 Renske        Ladwig         RLADWIG     650.121.1234    14-JUL-03    ST_CLERK         3600                             123               50 
           138 Stephen       Stiles         SSTILES     650.121.2034    26-OCT-05    ST_CLERK         3200                             123               50 
           139 John          Seo            JSEO        650.121.2019    12-FEB-06    ST_CLERK         2700                             123               50 

   EMPLOYEE_ID FIRST_NAME     LAST_NAME    EMAIL       PHONE_NUMBER          HIRE_DATE    JOB_ID         SALARY    COMMISSION_PCT    MANAGER_ID    DEPARTMENT_ID 
______________ ______________ ____________ ___________ _____________________ ____________ ___________ _________ _________________ _____________ ________________ 
           140 Joshua         Patel        JPATEL      650.121.1834          06-APR-06    ST_CLERK         2500                             123               50 
           141 Trenna         Rajs         TRAJS       650.121.8009          17-OCT-03    ST_CLERK         3500                             124               50 
           142 Curtis         Davies       CDAVIES     650.121.2994          29-JAN-05    ST_CLERK         3100                             124               50 
           143 Randall        Matos        RMATOS      650.121.2874          15-MAR-06    ST_CLERK         2600                             124               50 
           144 Peter          Vargas       PVARGAS     650.121.2004          09-JUL-06    ST_CLERK         2500                             124               50 
           145 John           Russell      JRUSSEL     011.44.1344.429268    01-OCT-04    SA_MAN          14000               0.4           100               80 
           146 Karen          Partners     KPARTNER    011.44.1344.467268    05-JAN-05    SA_MAN          13500               0.3           100               80 
           147 Alberto        Errazuriz    AERRAZUR    011.44.1344.429278    10-MAR-05    SA_MAN          12000               0.3           100               80 
           148 Gerald         Cambrault    GCAMBRAU    011.44.1344.619268    15-OCT-07    SA_MAN          11000               0.3           100               80 
           149 Eleni          Zlotkey      EZLOTKEY    011.44.1344.429018    29-JAN-08    SA_MAN          10500               0.2           100               80 
           150 Peter          Tucker       PTUCKER     011.44.1344.129268    30-JAN-05    SA_REP          10000               0.3           145               80 
           151 David          Bernstein    DBERNSTE    011.44.1344.345268    24-MAR-05    SA_REP           9500              0.25           145               80 
           152 Peter          Hall         PHALL       011.44.1344.478968    20-AUG-05    SA_REP           9000              0.25           145               80 
           153 Christopher    Olsen        COLSEN      011.44.1344.498718    30-MAR-06    SA_REP           8000               0.2           145               80 
           154 Nanette        Cambrault    NCAMBRAU    011.44.1344.987668    09-DEC-06    SA_REP           7500               0.2           145               80 
           155 Oliver         Tuvault      OTUVAULT    011.44.1344.486508    23-NOV-07    SA_REP           7000              0.15           145               80 
           156 Janette        King         JKING       011.44.1345.429268    30-JAN-04    SA_REP          10000              0.35           146               80 
           157 Patrick        Sully        PSULLY      011.44.1345.929268    04-MAR-04    SA_REP           9500              0.35           146               80 
           158 Allan          McEwen       AMCEWEN     011.44.1345.829268    01-AUG-04    SA_REP           9000              0.35           146               80 
           159 Lindsey        Smith        LSMITH      011.44.1345.729268    10-MAR-05    SA_REP           8000               0.3           146               80 

   EMPLOYEE_ID FIRST_NAME    LAST_NAME     EMAIL       PHONE_NUMBER          HIRE_DATE    JOB_ID       SALARY    COMMISSION_PCT    MANAGER_ID    DEPARTMENT_ID 
______________ _____________ _____________ ___________ _____________________ ____________ _________ _________ _________________ _____________ ________________ 
           160 Louise        Doran         LDORAN      011.44.1345.629268    15-DEC-05    SA_REP         7500               0.3           146               80 
           161 Sarath        Sewall        SSEWALL     011.44.1345.529268    03-NOV-06    SA_REP         7000              0.25           146               80 
           162 Clara         Vishney       CVISHNEY    011.44.1346.129268    11-NOV-05    SA_REP        10500              0.25           147               80 
           163 Danielle      Greene        DGREENE     011.44.1346.229268    19-MAR-07    SA_REP         9500              0.15           147               80 
           164 Mattea        Marvins       MMARVINS    011.44.1346.329268    24-JAN-08    SA_REP         7200               0.1           147               80 
           165 David         Lee           DLEE        011.44.1346.529268    23-FEB-08    SA_REP         6800               0.1           147               80 
           166 Sundar        Ande          SANDE       011.44.1346.629268    24-MAR-08    SA_REP         6400               0.1           147               80 
           167 Amit          Banda         ABANDA      011.44.1346.729268    21-APR-08    SA_REP         6200               0.1           147               80 
           168 Lisa          Ozer          LOZER       011.44.1343.929268    11-MAR-05    SA_REP        11500              0.25           148               80 
           169 Harrison      Bloom         HBLOOM      011.44.1343.829268    23-MAR-06    SA_REP        10000               0.2           148               80 
           170 Tayler        Fox           TFOX        011.44.1343.729268    24-JAN-06    SA_REP         9600               0.2           148               80 
           171 William       Smith         WSMITH      011.44.1343.629268    23-FEB-07    SA_REP         7400              0.15           148               80 
           172 Elizabeth     Bates         EBATES      011.44.1343.529268    24-MAR-07    SA_REP         7300              0.15           148               80 
           173 Sundita       Kumar         SKUMAR      011.44.1343.329268    21-APR-08    SA_REP         6100               0.1           148               80 
           174 Ellen         Abel          EABEL       011.44.1644.429267    11-MAY-04    SA_REP        11000               0.3           149               80 
           175 Alyssa        Hutton        AHUTTON     011.44.1644.429266    19-MAR-05    SA_REP         8800              0.25           149               80 
           176 Jonathon      Taylor        JTAYLOR     011.44.1644.429265    24-MAR-06    SA_REP         8600               0.2           149               80 
           177 Jack          Livingston    JLIVINGS    011.44.1644.429264    23-APR-06    SA_REP         8400               0.2           149               80 
           178 Kimberely     Grant         KGRANT      011.44.1644.429263    24-MAY-07    SA_REP         7000              0.15           149                  
           179 Charles       Johnson       CJOHNSON    011.44.1644.429262    04-JAN-08    SA_REP         6200               0.1           149               80 

   EMPLOYEE_ID FIRST_NAME    LAST_NAME    EMAIL       PHONE_NUMBER    HIRE_DATE    JOB_ID         SALARY    COMMISSION_PCT    MANAGER_ID    DEPARTMENT_ID 
______________ _____________ ____________ ___________ _______________ ____________ ___________ _________ _________________ _____________ ________________ 
           180 Winston       Taylor       WTAYLOR     650.507.9876    24-JAN-06    SH_CLERK         3200                             120               50 
           181 Jean          Fleaur       JFLEAUR     650.507.9877    23-FEB-06    SH_CLERK         3100                             120               50 
           182 Martha        Sullivan     MSULLIVA    650.507.9878    21-JUN-07    SH_CLERK         2500                             120               50 
           183 Girard        Geoni        GGEONI      650.507.9879    03-FEB-08    SH_CLERK         2800                             120               50 
           184 Nandita       Sarchand     NSARCHAN    650.509.1876    27-JAN-04    SH_CLERK         4200                             121               50 
           185 Alexis        Bull         ABULL       650.509.2876    20-FEB-05    SH_CLERK         4100                             121               50 
           186 Julia         Dellinger    JDELLING    650.509.3876    24-JUN-06    SH_CLERK         3400                             121               50 
           187 Anthony       Cabrio       ACABRIO     650.509.4876    07-FEB-07    SH_CLERK         3000                             121               50 
           188 Kelly         Chung        KCHUNG      650.505.1876    14-JUN-05    SH_CLERK         3800                             122               50 
           189 Jennifer      Dilly        JDILLY      650.505.2876    13-AUG-05    SH_CLERK         3600                             122               50 
           190 Timothy       Gates        TGATES      650.505.3876    11-JUL-06    SH_CLERK         2900                             122               50 
           191 Randall       Perkins      RPERKINS    650.505.4876    19-DEC-07    SH_CLERK         2500                             122               50 
           192 Sarah         Bell         SBELL       650.501.1876    04-FEB-04    SH_CLERK         4000                             123               50 
           193 Britney       Everett      BEVERETT    650.501.2876    03-MAR-05    SH_CLERK         3900                             123               50 
           194 Samuel        McCain       SMCCAIN     650.501.3876    01-JUL-06    SH_CLERK         3200                             123               50 
           195 Vance         Jones        VJONES      650.501.4876    17-MAR-07    SH_CLERK         2800                             123               50 
           196 Alana         Walsh        AWALSH      650.507.9811    24-APR-06    SH_CLERK         3100                             124               50 
           197 Kevin         Feeney       KFEENEY     650.507.9822    23-MAY-06    SH_CLERK         3000                             124               50 
           198 Donald        OConnell     DOCONNEL    650.507.9833    21-JUN-07    SH_CLERK         2600                             124               50 
           199 Douglas       Grant        DGRANT      650.507.9844    13-JAN-08    SH_CLERK         2600                             124               50 

   EMPLOYEE_ID FIRST_NAME    LAST_NAME    EMAIL       PHONE_NUMBER    HIRE_DATE    JOB_ID           SALARY    COMMISSION_PCT    MANAGER_ID    DEPARTMENT_ID 
______________ _____________ ____________ ___________ _______________ ____________ _____________ _________ _________________ _____________ ________________ 
           200 Jennifer      Whalen       JWHALEN     515.123.4444    17-SEP-03    AD_ASST            4400                             101               10 
           201 Michael       Hartstein    MHARTSTE    515.123.5555    17-FEB-04    MK_MAN            13000                             100               20 
           202 Pat           Fay          PFAY        603.123.6666    17-AUG-05    MK_REP             6000                             201               20 
           203 Susan         Mavris       SMAVRIS     515.123.7777    07-JUN-02    HR_REP             6500                             101               40 
           204 Hermann       Baer         HBAER       515.123.8888    07-JUN-02    PR_REP            10000                             101               70 
           205 Shelley       Higgins      SHIGGINS    515.123.8080    07-JUN-02    AC_MGR            12008                             101              110 
           206 William       Gietz        WGIETZ      515.123.8181    07-JUN-02    AC_ACCOUNT         8300                             205              110 

107 rows selected. 


JOB_ID        JOB_TITLE                             MIN_SALARY    MAX_SALARY 
_____________ __________________________________ _____________ _____________ 
AD_PRES       President                                  20080         40000 
AD_VP         Administration Vice President              15000         30000 
AD_ASST       Administration Assistant                    3000          6000 
FI_MGR        Finance Manager                             8200         16000 
FI_ACCOUNT    Accountant                                  4200          9000 
AC_MGR        Accounting Manager                          8200         16000 
AC_ACCOUNT    Public Accountant                           4200          9000 
SA_MAN        Sales Manager                              10000         20080 
SA_REP        Sales Representative                        6000         12008 
PU_MAN        Purchasing Manager                          8000         15000 
PU_CLERK      Purchasing Clerk                            2500          5500 
ST_MAN        Stock Manager                               5500          8500 
ST_CLERK      Stock Clerk                                 2008          5000 
SH_CLERK      Shipping Clerk                              2500          5500 
IT_PROG       Programmer                                  4000         10000 
MK_MAN        Marketing Manager                           9000         15000 
MK_REP        Marketing Representative                    4000          9000 
HR_REP        Human Resources Representative              4000          9000 
PR_REP        Public Relations Representative             4500         10500 

19 rows selected. 




   EMPLOYEE_ID START_DATE    END_DATE     JOB_ID           DEPARTMENT_ID 
______________ _____________ ____________ _____________ ________________ 
           102 13-JAN-01     24-JUL-06    IT_PROG                     60 
           101 21-SEP-97     27-OCT-01    AC_ACCOUNT                 110 
           101 28-OCT-01     15-MAR-05    AC_MGR                     110 
           201 17-FEB-04     19-DEC-07    MK_REP                      20 
           114 24-MAR-06     31-DEC-07    ST_CLERK                    50 
           122 01-JAN-07     31-DEC-07    ST_CLERK                    50 
           200 17-SEP-95     17-JUN-01    AD_ASST                     90 
           176 24-MAR-06     31-DEC-06    SA_REP                      80 
           176 01-JAN-07     31-DEC-07    SA_MAN                      80 
           200 01-JUL-02     31-DEC-06    AC_ACCOUNT                  90 

10 rows selected. 


   LOCATION_ID STREET_ADDRESS                              POSTAL_CODE    CITY                   STATE_PROVINCE      COUNTRY_ID    
______________ ___________________________________________ ______________ ______________________ ___________________ _____________ 
          1000 1297 Via Cola di Rie                        00989          Roma                                       IT            
          1100 93091 Calle della Testa                     10934          Venice                                     IT            
          1200 2017 Shinjuku-ku                            1689           Tokyo                  Tokyo Prefecture    JP            
          1300 9450 Kamiya-cho                             6823           Hiroshima                                  JP            
          1400 2014 Jabberwocky Rd                         26192          Southlake              Texas               US            
          1500 2011 Interiors Blvd                         99236          South San Francisco    California          US            
          1600 2007 Zagora St                              50090          South Brunswick        New Jersey          US            
          1700 2004 Charade Rd                             98199          Seattle                Washington          US            
          1800 147 Spadina Ave                             M5V 2L7        Toronto                Ontario             CA            
          1900 6092 Boxwood St                             YSW 9T2        Whitehorse             Yukon               CA            
          2000 40-5-12 Laogianggen                         190518         Beijing                                    CN            
          2100 1298 Vileparle (E)                          490231         Bombay                 Maharashtra         IN            
          2200 12-98 Victoria Street                       2901           Sydney                 New South Wales     AU            
          2300 198 Clementi North                          540198         Singapore                                  SG            
          2400 8204 Arthur St                                             London                                     UK            
          2500 Magdalen Centre, The Oxford Science Park    OX9 9ZB        Oxford                 Oxford              UK            
          2600 9702 Chester Road                           09629850293    Stretford              Manchester          UK            
          2700 Schwanthalerstr. 7031                       80925          Munich                 Bavaria             DE            
          2800 Rua Frei Caneca 1360                        01307-002      Sao Paulo              Sao Paulo           BR            
          2900 20 Rue des Corps-Saints                     1730           Geneva                 Geneve              CH            

   LOCATION_ID STREET_ADDRESS               POSTAL_CODE    CITY           STATE_PROVINCE       COUNTRY_ID    
______________ ____________________________ ______________ ______________ ____________________ _____________ 
          3000 Murtenstrasse 921            3095           Bern           BE                   CH            
          3100 Pieter Breughelstraat 837    3029SK         Utrecht        Utrecht              NL            
          3200 Mariano Escobedo 9991        11932          Mexico City    Distrito Federal,    MX            

23 rows selected. 




   REGION_ID REGION_NAME               
____________ _________________________ 
           1 Europe                    
           2 Americas                  
           3 Asia                      
           4 Middle East and Africa    

