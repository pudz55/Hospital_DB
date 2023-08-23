SQL> select m.M_name,m.MFG_DATE,sum(m.QUANTITY),mn.PRICE_USD from F21_S003_9_MEDICINE m,F21_S003_9_MED_NAME mn where m.M_NAME=mn.M_NAME GROUP BY CUBE (m.M_NAME,m.MFG_DATE,mn.PRICE_USD)
  2  --here the cube will return more rows and the sum of the quantity of the medicine with grouping M_NAME,MFG_DATE,PRICE_USD
  3  ;

M_NAME                                             MFG_DATE  SUM(M.QUANTITY)    
-------------------------------------------------- --------- ---------------    
 PRICE_USD                                                                      
----------                                                                      
                                                                         864    
                                                                                
                                                                                
                                                                          10    
         7                                                                      
                                                                                
                                                                          30    
        13                                                                      
                                                                                

M_NAME                                             MFG_DATE  SUM(M.QUANTITY)    
-------------------------------------------------- --------- ---------------    
 PRICE_USD                                                                      
----------                                                                      
                                                                          50    
        14                                                                      
                                                                                
                                                                          65    
        15                                                                      
                                                                                
                                                                          25    
        17                                                                      
                                                                                

M_NAME                                             MFG_DATE  SUM(M.QUANTITY)    
-------------------------------------------------- --------- ---------------    
 PRICE_USD                                                                      
----------                                                                      
                                                                          60    
        19                                                                      
                                                                                
                                                                          75    
        20                                                                      
                                                                                
                                                                          55    
        23                                                                      
                                                                                

M_NAME                                             MFG_DATE  SUM(M.QUANTITY)    
-------------------------------------------------- --------- ---------------    
 PRICE_USD                                                                      
----------                                                                      
                                                                         100    
        24                                                                      
                                                                                
                                                                          20    
        25                                                                      
                                                                                
                                                                          55    
        32                                                                      
                                                                                

M_NAME                                             MFG_DATE  SUM(M.QUANTITY)    
-------------------------------------------------- --------- ---------------    
 PRICE_USD                                                                      
----------                                                                      
                                                                          70    
        33                                                                      
                                                                                
                                                                          47    
        37                                                                      
                                                                                
                                                                          50    
        38                                                                      
                                                                                

M_NAME                                             MFG_DATE  SUM(M.QUANTITY)    
-------------------------------------------------- --------- ---------------    
 PRICE_USD                                                                      
----------                                                                      
                                                                          51    
        39                                                                      
                                                                                
                                                                          47    
        40                                                                      
                                                                                
                                                                          15    
        41                                                                      
                                                                                

M_NAME                                             MFG_DATE  SUM(M.QUANTITY)    
-------------------------------------------------- --------- ---------------    
 PRICE_USD                                                                      
----------                                                                      
                                                                          39    
        43                                                                      
                                                                                
                                                   01-JAN-21               7    
                                                                                
                                                                                
                                                   01-JAN-21               7    
        37                                                                      
                                                                                

M_NAME                                             MFG_DATE  SUM(M.QUANTITY)    
-------------------------------------------------- --------- ---------------    
 PRICE_USD                                                                      
----------                                                                      
                                                   19-JAN-21              15    
                                                                                
                                                                                
                                                   19-JAN-21              15    
        24                                                                      
                                                                                
                                                   22-JAN-21               5    
                                                                                
                                                                                

M_NAME                                             MFG_DATE  SUM(M.QUANTITY)    
-------------------------------------------------- --------- ---------------    
 PRICE_USD                                                                      
----------                                                                      
                                                   22-JAN-21               5    
        43                                                                      
                                                                                
                                                   02-FEB-21              25    
                                                                                
                                                                                
                                                   02-FEB-21              25    
        17                                                                      
                                                                                

M_NAME                                             MFG_DATE  SUM(M.QUANTITY)    
-------------------------------------------------- --------- ---------------    
 PRICE_USD                                                                      
----------                                                                      
                                                   11-FEB-21              34    
                                                                                
                                                                                
                                                   11-FEB-21              34    
        43                                                                      
                                                                                
                                                   28-FEB-21              25    
                                                                                
                                                                                

M_NAME                                             MFG_DATE  SUM(M.QUANTITY)    
-------------------------------------------------- --------- ---------------    
 PRICE_USD                                                                      
----------                                                                      
                                                   28-FEB-21              25    
        19                                                                      
                                                                                
                                                   13-MAR-21              55    
                                                                                
                                                                                
                                                   13-MAR-21              55    
        23                                                                      
                                                                                

M_NAME                                             MFG_DATE  SUM(M.QUANTITY)    
-------------------------------------------------- --------- ---------------    
 PRICE_USD                                                                      
----------                                                                      
                                                   20-MAR-21              10    
                                                                                
                                                                                
                                                   20-MAR-21              10    
        20                                                                      
                                                                                
                                                   31-MAR-21              40    
                                                                                
                                                                                

M_NAME                                             MFG_DATE  SUM(M.QUANTITY)    
-------------------------------------------------- --------- ---------------    
 PRICE_USD                                                                      
----------                                                                      
                                                   31-MAR-21              40    
        37                                                                      
                                                                                
                                                   10-APR-21              50    
                                                                                
                                                                                
                                                   10-APR-21              50    
        14                                                                      
                                                                                

M_NAME                                             MFG_DATE  SUM(M.QUANTITY)    
-------------------------------------------------- --------- ---------------    
 PRICE_USD                                                                      
----------                                                                      
                                                   13-APR-21              35    
                                                                                
                                                                                
                                                   13-APR-21              35    
        19                                                                      
                                                                                
                                                   10-MAY-21              10    
                                                                                
                                                                                

M_NAME                                             MFG_DATE  SUM(M.QUANTITY)    
-------------------------------------------------- --------- ---------------    
 PRICE_USD                                                                      
----------                                                                      
                                                   10-MAY-21              10    
         7                                                                      
                                                                                
                                                   13-MAY-21              15    
                                                                                
                                                                                
                                                   13-MAY-21              15    
        20                                                                      
                                                                                

M_NAME                                             MFG_DATE  SUM(M.QUANTITY)    
-------------------------------------------------- --------- ---------------    
 PRICE_USD                                                                      
----------                                                                      
                                                   24-MAY-21              45    
                                                                                
                                                                                
                                                   24-MAY-21              45    
        24                                                                      
                                                                                
                                                   02-JUN-21              15    
                                                                                
                                                                                

M_NAME                                             MFG_DATE  SUM(M.QUANTITY)    
-------------------------------------------------- --------- ---------------    
 PRICE_USD                                                                      
----------                                                                      
                                                   02-JUN-21              15    
        41                                                                      
                                                                                
                                                   22-JUN-21              55    
                                                                                
                                                                                
                                                   22-JUN-21              55    
        32                                                                      
                                                                                

M_NAME                                             MFG_DATE  SUM(M.QUANTITY)    
-------------------------------------------------- --------- ---------------    
 PRICE_USD                                                                      
----------                                                                      
                                                   04-JUL-21              25    
                                                                                
                                                                                
                                                   04-JUL-21              25    
        15                                                                      
                                                                                
                                                   12-JUL-21              30    
                                                                                
                                                                                

M_NAME                                             MFG_DATE  SUM(M.QUANTITY)    
-------------------------------------------------- --------- ---------------    
 PRICE_USD                                                                      
----------                                                                      
                                                   12-JUL-21              30    
        13                                                                      
                                                                                
                                                   25-JUL-21              35    
                                                                                
                                                                                
                                                   25-JUL-21              35    
        33                                                                      
                                                                                

M_NAME                                             MFG_DATE  SUM(M.QUANTITY)    
-------------------------------------------------- --------- ---------------    
 PRICE_USD                                                                      
----------                                                                      
                                                   17-AUG-21              20    
                                                                                
                                                                                
                                                   17-AUG-21              20    
        25                                                                      
                                                                                
                                                   09-SEP-21              50    
                                                                                
                                                                                

M_NAME                                             MFG_DATE  SUM(M.QUANTITY)    
-------------------------------------------------- --------- ---------------    
 PRICE_USD                                                                      
----------                                                                      
                                                   09-SEP-21              50    
        38                                                                      
                                                                                
                                                   12-SEP-21              22    
                                                                                
                                                                                
                                                   12-SEP-21              22    
        40                                                                      
                                                                                

M_NAME                                             MFG_DATE  SUM(M.QUANTITY)    
-------------------------------------------------- --------- ---------------    
 PRICE_USD                                                                      
----------                                                                      
                                                   22-SEP-21              20    
                                                                                
                                                                                
                                                   22-SEP-21              20    
        20                                                                      
                                                                                
                                                   07-OCT-21              35    
                                                                                
                                                                                

M_NAME                                             MFG_DATE  SUM(M.QUANTITY)    
-------------------------------------------------- --------- ---------------    
 PRICE_USD                                                                      
----------                                                                      
                                                   07-OCT-21              35    
        33                                                                      
                                                                                
                                                   15-OCT-21              11    
                                                                                
                                                                                
                                                   15-OCT-21              11    
        39                                                                      
                                                                                

M_NAME                                             MFG_DATE  SUM(M.QUANTITY)    
-------------------------------------------------- --------- ---------------    
 PRICE_USD                                                                      
----------                                                                      
                                                   11-NOV-21              40    
                                                                                
                                                                                
                                                   11-NOV-21              40    
        39                                                                      
                                                                                
                                                   13-NOV-21              25    
                                                                                
                                                                                

M_NAME                                             MFG_DATE  SUM(M.QUANTITY)    
-------------------------------------------------- --------- ---------------    
 PRICE_USD                                                                      
----------                                                                      
                                                   13-NOV-21              25    
        40                                                                      
                                                                                
                                                   23-NOV-21              30    
                                                                                
                                                                                
                                                   23-NOV-21              30    
        20                                                                      
                                                                                

M_NAME                                             MFG_DATE  SUM(M.QUANTITY)    
-------------------------------------------------- --------- ---------------    
 PRICE_USD                                                                      
----------                                                                      
                                                   24-NOV-21              40    
                                                                                
                                                                                
                                                   24-NOV-21              40    
        15                                                                      
                                                                                
                                                   25-NOV-21              40    
                                                                                
                                                                                

M_NAME                                             MFG_DATE  SUM(M.QUANTITY)    
-------------------------------------------------- --------- ---------------    
 PRICE_USD                                                                      
----------                                                                      
                                                   25-NOV-21              40    
        24                                                                      
                                                                                
Omez                                                                      40    
                                                                                
                                                                                
Omez                                                                      40    
        37                                                                      
                                                                                

M_NAME                                             MFG_DATE  SUM(M.QUANTITY)    
-------------------------------------------------- --------- ---------------    
 PRICE_USD                                                                      
----------                                                                      
Omez                                               31-MAR-21              40    
                                                                                
                                                                                
Omez                                               31-MAR-21              40    
        37                                                                      
                                                                                
Triz                                                                      22    
                                                                                
                                                                                

M_NAME                                             MFG_DATE  SUM(M.QUANTITY)    
-------------------------------------------------- --------- ---------------    
 PRICE_USD                                                                      
----------                                                                      
Triz                                                                      22    
        40                                                                      
                                                                                
Triz                                               12-SEP-21              22    
                                                                                
                                                                                
Triz                                               12-SEP-21              22    
        40                                                                      
                                                                                

M_NAME                                             MFG_DATE  SUM(M.QUANTITY)    
-------------------------------------------------- --------- ---------------    
 PRICE_USD                                                                      
----------                                                                      
Advil                                                                     20    
                                                                                
                                                                                
Advil                                                                     20    
        25                                                                      
                                                                                
Advil                                              17-AUG-21              20    
                                                                                
                                                                                

M_NAME                                             MFG_DATE  SUM(M.QUANTITY)    
-------------------------------------------------- --------- ---------------    
 PRICE_USD                                                                      
----------                                                                      
Advil                                              17-AUG-21              20    
        25                                                                      
                                                                                
Vepan                                                                     34    
                                                                                
                                                                                
Vepan                                                                     34    
        43                                                                      
                                                                                

M_NAME                                             MFG_DATE  SUM(M.QUANTITY)    
-------------------------------------------------- --------- ---------------    
 PRICE_USD                                                                      
----------                                                                      
Vepan                                              11-FEB-21              34    
                                                                                
                                                                                
Vepan                                              11-FEB-21              34    
        43                                                                      
                                                                                
Ciplac                                                                    25    
                                                                                
                                                                                

M_NAME                                             MFG_DATE  SUM(M.QUANTITY)    
-------------------------------------------------- --------- ---------------    
 PRICE_USD                                                                      
----------                                                                      
Ciplac                                                                    25    
        19                                                                      
                                                                                
Ciplac                                             28-FEB-21              25    
                                                                                
                                                                                
Ciplac                                             28-FEB-21              25    
        19                                                                      
                                                                                

M_NAME                                             MFG_DATE  SUM(M.QUANTITY)    
-------------------------------------------------- --------- ---------------    
 PRICE_USD                                                                      
----------                                                                      
Neapon                                                                    35    
                                                                                
                                                                                
Neapon                                                                    35    
        19                                                                      
                                                                                
Neapon                                             13-APR-21              35    
                                                                                
                                                                                

M_NAME                                             MFG_DATE  SUM(M.QUANTITY)    
-------------------------------------------------- --------- ---------------    
 PRICE_USD                                                                      
----------                                                                      
Neapon                                             13-APR-21              35    
        19                                                                      
                                                                                
Stodil                                                                    20    
                                                                                
                                                                                
Stodil                                                                    20    
        20                                                                      
                                                                                

M_NAME                                             MFG_DATE  SUM(M.QUANTITY)    
-------------------------------------------------- --------- ---------------    
 PRICE_USD                                                                      
----------                                                                      
Stodil                                             22-SEP-21              20    
                                                                                
                                                                                
Stodil                                             22-SEP-21              20    
        20                                                                      
                                                                                
Zintac                                                                    11    
                                                                                
                                                                                

M_NAME                                             MFG_DATE  SUM(M.QUANTITY)    
-------------------------------------------------- --------- ---------------    
 PRICE_USD                                                                      
----------                                                                      
Zintac                                                                    11    
        39                                                                      
                                                                                
Zintac                                             15-OCT-21              11    
                                                                                
                                                                                
Zintac                                             15-OCT-21              11    
        39                                                                      
                                                                                

M_NAME                                             MFG_DATE  SUM(M.QUANTITY)    
-------------------------------------------------- --------- ---------------    
 PRICE_USD                                                                      
----------                                                                      
Levoxyl                                                                    7    
                                                                                
                                                                                
Levoxyl                                                                    7    
        37                                                                      
                                                                                
Levoxyl                                            01-JAN-21               7    
                                                                                
                                                                                

M_NAME                                             MFG_DATE  SUM(M.QUANTITY)    
-------------------------------------------------- --------- ---------------    
 PRICE_USD                                                                      
----------                                                                      
Levoxyl                                            01-JAN-21               7    
        37                                                                      
                                                                                
Mucinex                                                                   50    
                                                                                
                                                                                
Mucinex                                                                   50    
        38                                                                      
                                                                                

M_NAME                                             MFG_DATE  SUM(M.QUANTITY)    
-------------------------------------------------- --------- ---------------    
 PRICE_USD                                                                      
----------                                                                      
Mucinex                                            09-SEP-21              50    
                                                                                
                                                                                
Mucinex                                            09-SEP-21              50    
        38                                                                      
                                                                                
Ranidom                                                                   45    
                                                                                
                                                                                

M_NAME                                             MFG_DATE  SUM(M.QUANTITY)    
-------------------------------------------------- --------- ---------------    
 PRICE_USD                                                                      
----------                                                                      
Ranidom                                                                   45    
        24                                                                      
                                                                                
Ranidom                                            24-MAY-21              45    
                                                                                
                                                                                
Ranidom                                            24-MAY-21              45    
        24                                                                      
                                                                                

M_NAME                                             MFG_DATE  SUM(M.QUANTITY)    
-------------------------------------------------- --------- ---------------    
 PRICE_USD                                                                      
----------                                                                      
Sherlon                                                                   25    
                                                                                
                                                                                
Sherlon                                                                   25    
        40                                                                      
                                                                                
Sherlon                                            13-NOV-21              25    
                                                                                
                                                                                

M_NAME                                             MFG_DATE  SUM(M.QUANTITY)    
-------------------------------------------------- --------- ---------------    
 PRICE_USD                                                                      
----------                                                                      
Sherlon                                            13-NOV-21              25    
        40                                                                      
                                                                                
Tylenol                                                                   10    
                                                                                
                                                                                
Tylenol                                                                   10    
        20                                                                      
                                                                                

M_NAME                                             MFG_DATE  SUM(M.QUANTITY)    
-------------------------------------------------- --------- ---------------    
 PRICE_USD                                                                      
----------                                                                      
Tylenol                                            20-MAR-21              10    
                                                                                
                                                                                
Tylenol                                            20-MAR-21              10    
        20                                                                      
                                                                                
Excedrin                                                                  25    
                                                                                
                                                                                

M_NAME                                             MFG_DATE  SUM(M.QUANTITY)    
-------------------------------------------------- --------- ---------------    
 PRICE_USD                                                                      
----------                                                                      
Excedrin                                                                  25    
        15                                                                      
                                                                                
Excedrin                                           04-JUL-21              25    
                                                                                
                                                                                
Excedrin                                           04-JUL-21              25    
        15                                                                      
                                                                                

M_NAME                                             MFG_DATE  SUM(M.QUANTITY)    
-------------------------------------------------- --------- ---------------    
 PRICE_USD                                                                      
----------                                                                      
Periogel                                                                  30    
                                                                                
                                                                                
Periogel                                                                  30    
        13                                                                      
                                                                                
Periogel                                           12-JUL-21              30    
                                                                                
                                                                                

M_NAME                                             MFG_DATE  SUM(M.QUANTITY)    
-------------------------------------------------- --------- ---------------    
 PRICE_USD                                                                      
----------                                                                      
Periogel                                           12-JUL-21              30    
        13                                                                      
                                                                                
Ranispas                                                                  15    
                                                                                
                                                                                
Ranispas                                                                  15    
        24                                                                      
                                                                                

M_NAME                                             MFG_DATE  SUM(M.QUANTITY)    
-------------------------------------------------- --------- ---------------    
 PRICE_USD                                                                      
----------                                                                      
Ranispas                                           19-JAN-21              15    
                                                                                
                                                                                
Ranispas                                           19-JAN-21              15    
        24                                                                      
                                                                                
Althrocin                                                                 35    
                                                                                
                                                                                

M_NAME                                             MFG_DATE  SUM(M.QUANTITY)    
-------------------------------------------------- --------- ---------------    
 PRICE_USD                                                                      
----------                                                                      
Althrocin                                                                 35    
        33                                                                      
                                                                                
Althrocin                                          25-JUL-21              35    
                                                                                
                                                                                
Althrocin                                          25-JUL-21              35    
        33                                                                      
                                                                                

M_NAME                                             MFG_DATE  SUM(M.QUANTITY)    
-------------------------------------------------- --------- ---------------    
 PRICE_USD                                                                      
----------                                                                      
Hydralyte                                                                 15    
                                                                                
                                                                                
Hydralyte                                                                 15    
        20                                                                      
                                                                                
Hydralyte                                          13-MAY-21              15    
                                                                                
                                                                                

M_NAME                                             MFG_DATE  SUM(M.QUANTITY)    
-------------------------------------------------- --------- ---------------    
 PRICE_USD                                                                      
----------                                                                      
Hydralyte                                          13-MAY-21              15    
        20                                                                      
                                                                                
Ibuprofen                                                                 40    
                                                                                
                                                                                
Ibuprofen                                                                 40    
        39                                                                      
                                                                                

M_NAME                                             MFG_DATE  SUM(M.QUANTITY)    
-------------------------------------------------- --------- ---------------    
 PRICE_USD                                                                      
----------                                                                      
Ibuprofen                                          11-NOV-21              40    
                                                                                
                                                                                
Ibuprofen                                          11-NOV-21              40    
        39                                                                      
                                                                                
Dolo - 650                                                                30    
                                                                                
                                                                                

M_NAME                                             MFG_DATE  SUM(M.QUANTITY)    
-------------------------------------------------- --------- ---------------    
 PRICE_USD                                                                      
----------                                                                      
Dolo - 650                                                                30    
        20                                                                      
                                                                                
Dolo - 650                                         23-NOV-21              30    
                                                                                
                                                                                
Dolo - 650                                         23-NOV-21              30    
        20                                                                      
                                                                                

M_NAME                                             MFG_DATE  SUM(M.QUANTITY)    
-------------------------------------------------- --------- ---------------    
 PRICE_USD                                                                      
----------                                                                      
Globen - G                                                                55    
                                                                                
                                                                                
Globen - G                                                                55    
        23                                                                      
                                                                                
Globen - G                                         13-MAR-21              55    
                                                                                
                                                                                

M_NAME                                             MFG_DATE  SUM(M.QUANTITY)    
-------------------------------------------------- --------- ---------------    
 PRICE_USD                                                                      
----------                                                                      
Globen - G                                         13-MAR-21              55    
        23                                                                      
                                                                                
Jonac Plus                                                                55    
                                                                                
                                                                                
Jonac Plus                                                                55    
        32                                                                      
                                                                                

M_NAME                                             MFG_DATE  SUM(M.QUANTITY)    
-------------------------------------------------- --------- ---------------    
 PRICE_USD                                                                      
----------                                                                      
Jonac Plus                                         22-JUN-21              55    
                                                                                
                                                                                
Jonac Plus                                         22-JUN-21              55    
        32                                                                      
                                                                                
Polysporin                                                                50    
                                                                                
                                                                                

M_NAME                                             MFG_DATE  SUM(M.QUANTITY)    
-------------------------------------------------- --------- ---------------    
 PRICE_USD                                                                      
----------                                                                      
Polysporin                                                                50    
        14                                                                      
                                                                                
Polysporin                                         10-APR-21              50    
                                                                                
                                                                                
Polysporin                                         10-APR-21              50    
        14                                                                      
                                                                                

M_NAME                                             MFG_DATE  SUM(M.QUANTITY)    
-------------------------------------------------- --------- ---------------    
 PRICE_USD                                                                      
----------                                                                      
alogliptin                                                                40    
                                                                                
                                                                                
alogliptin                                                                40    
        24                                                                      
                                                                                
alogliptin                                         25-NOV-21              40    
                                                                                
                                                                                

M_NAME                                             MFG_DATE  SUM(M.QUANTITY)    
-------------------------------------------------- --------- ---------------    
 PRICE_USD                                                                      
----------                                                                      
alogliptin                                         25-NOV-21              40    
        24                                                                      
                                                                                
Pramlintide                                                               40    
                                                                                
                                                                                
Pramlintide                                                               40    
        15                                                                      
                                                                                

M_NAME                                             MFG_DATE  SUM(M.QUANTITY)    
-------------------------------------------------- --------- ---------------    
 PRICE_USD                                                                      
----------                                                                      
Pramlintide                                        24-NOV-21              40    
                                                                                
                                                                                
Pramlintide                                        24-NOV-21              40    
        15                                                                      
                                                                                
Arnicare Tab                                                              35    
                                                                                
                                                                                

M_NAME                                             MFG_DATE  SUM(M.QUANTITY)    
-------------------------------------------------- --------- ---------------    
 PRICE_USD                                                                      
----------                                                                      
Arnicare Tab                                                              35    
        33                                                                      
                                                                                
Arnicare Tab                                       07-OCT-21              35    
                                                                                
                                                                                
Arnicare Tab                                       07-OCT-21              35    
        33                                                                      
                                                                                

M_NAME                                             MFG_DATE  SUM(M.QUANTITY)    
-------------------------------------------------- --------- ---------------    
 PRICE_USD                                                                      
----------                                                                      
Hypothyroidism                                                            10    
                                                                                
                                                                                
Hypothyroidism                                                            10    
         7                                                                      
                                                                                
Hypothyroidism                                     10-MAY-21              10    
                                                                                
                                                                                

M_NAME                                             MFG_DATE  SUM(M.QUANTITY)    
-------------------------------------------------- --------- ---------------    
 PRICE_USD                                                                      
----------                                                                      
Hypothyroidism                                     10-MAY-21              10    
         7                                                                      
                                                                                
Florasone Cream                                                            5    
                                                                                
                                                                                
Florasone Cream                                                            5    
        43                                                                      
                                                                                

M_NAME                                             MFG_DATE  SUM(M.QUANTITY)    
-------------------------------------------------- --------- ---------------    
 PRICE_USD                                                                      
----------                                                                      
Florasone Cream                                    22-JAN-21               5    
                                                                                
                                                                                
Florasone Cream                                    22-JAN-21               5    
        43                                                                      
                                                                                
Burst Oral Probiotics                                                     25    
                                                                                
                                                                                

M_NAME                                             MFG_DATE  SUM(M.QUANTITY)    
-------------------------------------------------- --------- ---------------    
 PRICE_USD                                                                      
----------                                                                      
Burst Oral Probiotics                                                     25    
        17                                                                      
                                                                                
Burst Oral Probiotics                              02-FEB-21              25    
                                                                                
                                                                                
Burst Oral Probiotics                              02-FEB-21              25    
        17                                                                      
                                                                                

M_NAME                                             MFG_DATE  SUM(M.QUANTITY)    
-------------------------------------------------- --------- ---------------    
 PRICE_USD                                                                      
----------                                                                      
Hylands Earache drops                                                     15    
                                                                                
                                                                                
Hylands Earache drops                                                     15    
        41                                                                      
                                                                                
Hylands Earache drops                              02-JUN-21              15    
                                                                                
                                                                                

M_NAME                                             MFG_DATE  SUM(M.QUANTITY)    
-------------------------------------------------- --------- ---------------    
 PRICE_USD                                                                      
----------                                                                      
Hylands Earache drops                              02-JUN-21              15    
        41                                                                      
                                                                                

199 rows selected.

SQL> 
SQL> 
SQL> spool off;
SQL> select M_NAME,PRICE_USD from F21_S003_9_MED_NAME GROUP BY ROLLUP (M_NAME,PRICE_USD) HAVING PRICE_USD> '30'
  2  --here we are using rollup function to group by and having clause M_NAME,PRICE_USD which have medicine price more than 30 USD
  3  ;

M_NAME                                                                          
----------------------------------------------------------------------          
 PRICE_USD                                                                      
----------                                                                      
Mucinex                                                                         
        38                                                                      
                                                                                
Sherlon                                                                         
        40                                                                      
                                                                                
Levoxyl                                                                         
        37                                                                      
                                                                                

M_NAME                                                                          
----------------------------------------------------------------------          
 PRICE_USD                                                                      
----------                                                                      
Vepan                                                                           
        43                                                                      
                                                                                
Ibuprofen                                                                       
        39                                                                      
                                                                                
Hylands Earache drops                                                           
        41                                                                      
                                                                                

M_NAME                                                                          
----------------------------------------------------------------------          
 PRICE_USD                                                                      
----------                                                                      
Jonac Plus                                                                      
        32                                                                      
                                                                                
Florasone Cream                                                                 
        43                                                                      
                                                                                
Arnicare Tab                                                                    
        33                                                                      
                                                                                

M_NAME                                                                          
----------------------------------------------------------------------          
 PRICE_USD                                                                      
----------                                                                      
Omez                                                                            
        37                                                                      
                                                                                
Triz                                                                            
        40                                                                      
                                                                                
Zintac                                                                          
        39                                                                      
                                                                                

M_NAME                                                                          
----------------------------------------------------------------------          
 PRICE_USD                                                                      
----------                                                                      
Althrocin                                                                       
        33                                                                      
                                                                                

13 rows selected.

SQL> 
SQL> 
SQL> spool off;

SQL> --COMPLEX QUERY ONE THIS GIVE APPOINTMENTS INFO ALONG WITH PATIENT INFOMARTION INFO.
SQL> --HERE WE ARE USING OVER CLAUSE AND SUB-QUERY IN FROM CLAUSE
SQL> --OVER CLAUSE OVER CLAUSE HERE WILL HELP US TO TO PARTITION THE GENDER AND GIVE US TO SORT BIRTH DATE
SQL> --SUBQUERY IN FROM CLAUSE  - WILL HELP US TO RETRIVE INFORMATION
SQL> SELECT APPOINTMENT_ID,PATIENTNAME,CONTACT,EMAIL,BIRTH_DATE,SYMPTOMS,GENDER FROM
  2     (SELECT APPOINTMENT_ID,PATIENTNAME,CONTACT,EMAIL,BIRTH_DATE,SYMPTOMS,GENDER, ROW_NUMBER() OVER (PARTITION BY GENDER ORDER BY BIRTH_DATE) PO FROM F21_S003_9_patient P, F21_S003_9_Appointment A where P.patient_ID = A.patient_ID)
  3     WHERE PO > 0 ;

APPOINTMENT_ID PATIENTNAME                    CONTACT     EMAIL                                              BIRTH_DAT SYMPTOMS                                                                                                                                                                                                 G                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
-------------- ------------------------------ ----------- -------------------------------------------------- --------- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
           350 Sparks, Ezra                   15750935394 SparksE@gmail.com                                  25-FEB-60 running nose_ sneezing_congestion                                                                                                                                                                        f                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
           347 Dunlap, Ann                    17667123306 DunlapA@gmail.com                                  14-OCT-67 fever_ dizziness_ loss of apetite                                                                                                                                                                        f                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
           335 Stanton, Kathie                12675447367 StantonK@gmail.com                                 12-DEC-67 constipation_ hoarseness_ dry skin                                                                                                                                                                       f                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
           360 Hawkins, Callie                11355099403 HawkinsC@gmail.com                                 02-NOV-68 fever_ dizziness_ loss of apetite                                                                                                                                                                        f                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
           320 Hawkins, Callie                11355099403 HawkinsC@gmail.com                                 02-NOV-68 fever_ dizziness_ loss of apetite                                                                                                                                                                        f                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
           338 Brady, Nellie                  18946382625 BradyN@gmail.com                                   10-NOV-68 toothache_tooth sensitivity_ pits in teeth                                                                                                                                                               f                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
           324 Sims, Angelina                 13143995646 SimsA@gmail.com                                    11-OCT-70 Headache_ irritability_ distorted vision                                                                                                                                                                 f                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
           333 Effie, Leila Vinson            16981940277 EffieL@gmail.com                                   06-NOV-72 Numbness_ pressure in ear_ hearing loss                                                                                                                                                                  f                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
           340 Michael, Dianne                19593201850 MichaelD@gmail.com                                 04-JAN-76 swollen gums_ bad breath_ sensitive teeth                                                                                                                                                                f                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
           349 Page, Winnie                   17697362438 PageW@gmail.com                                    09-DEC-76 unable to bear weight_ bruising_ sudden pain                                                                                                                                                             f                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
           334 Buckley, Rose                  18095795712 BuckleyR@gmail.com                                 24-JUN-77 itchiness_ skin redness_ infection at areas of broken skin                                                                                                                                               f                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       

APPOINTMENT_ID PATIENTNAME                    CONTACT     EMAIL                                              BIRTH_DAT SYMPTOMS                                                                                                                                                                                                 G                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
-------------- ------------------------------ ----------- -------------------------------------------------- --------- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
           327 Payne, Ladonna                 18186582726 PayneL@gmail.com                                   30-OCT-78 redness_ swelling_ stiffness                                                                                                                                                                             f                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
           322 Austin, Liz                    18468062474 AustinL@gmail.com                                  11-SEP-81 itchiness_ skin redness_ infection at areas of broken skin                                                                                                                                               f                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
           362 Austin, Liz                    18468062474 AustinL@gmail.com                                  11-SEP-81 fever_ dizziness_ loss of apetite                                                                                                                                                                        f                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
           343 Berger, Jami                   14746876198 BergerJ@gmail.com                                  05-JUN-87 Headache_ irritability_ distorted vision                                                                                                                                                                 f                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
           321 Pate, Andrea                   19629928796 PateA@gmail.com                                    09-JAN-91 Ear pain_ fussiness_ tugging at ear                                                                                                                                                                      f                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
           361 Pate, Andrea                   19629928796 PateA@gmail.com                                    09-JAN-91 toothache_tooth sensitivity_ pits in teeth                                                                                                                                                               f                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
           323 Kendrick, Reba Alford          12443075228 KendrickR@gmail.com                                21-JUL-91 Numbness_ pressure in ear_ hearing loss                                                                                                                                                                  f                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
           363 Burks, Rosella                 17187281901 BurksR@gmail.com                                   18-AUG-96 running nose_ sneezing_congestion                                                                                                                                                                        f                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
           352 Burks, Rosella                 17187281901 BurksR@gmail.com                                   18-AUG-96 Numbness_ pressure in ear_ hearing loss                                                                                                                                                                  f                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
           312 Burks, Rosella                 17187281901 BurksR@gmail.com                                   18-AUG-96 fever_ dizziness_ loss of apetite                                                                                                                                                                        f                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
           332 Garrison, Patrica              15215584643 GarrisonP@gmail.com                                02-DEC-99 dry mouth_ feeling thirsty_ feeling tired                                                                                                                                                                f                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       

APPOINTMENT_ID PATIENTNAME                    CONTACT     EMAIL                                              BIRTH_DAT SYMPTOMS                                                                                                                                                                                                 G                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
-------------- ------------------------------ ----------- -------------------------------------------------- --------- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
           331 Fernando, Toby Calderon        19663180337 FernandoT@gmail.com                                02-JAN-60 Nausea_ shortness of breadth_ discomfort                                                                                                                                                                 m                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
           339 Katheryn, Ruben Holt           12213536720 KatherynR@gmail.com                                25-NOV-60 fever_ dizziness_ loss of apetite                                                                                                                                                                        m                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
           325 Mullins, Kimberly              11282206302 MullinsK@gmail.com                                 15-JUL-61 toothache_tooth sensitivity_ pits in teeth                                                                                                                                                               m                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
           346 Quentin, Sam Hyde              17743249837 QuentinS@gmail.com                                 13-FEB-62 Ear pain_ fussiness_ tugging at ear                                                                                                                                                                      m                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
           348 Shields, Rich Pena             15832860205 ShieldsR@gmail.com                                 14-JUN-64 itchiness_ skin redness_ infection at areas of broken skin                                                                                                                                               m                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
           316 Brian, Heath Pruitt            14356189857 BrianH@gmail.com                                   27-FEB-66 Headache_ irritability_ distorted vision                                                                                                                                                                 m                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
           356 Brian, Heath Pruitt            14356189857 BrianH@gmail.com                                   27-FEB-66 unable to bear weight_ bruising_ sudden pain                                                                                                                                                             m                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
           328 Baxter, Johnathan Browning     13856120033 BaxterJ@gmail.com                                  09-JUL-67 fever_ dizziness_ loss of apetite                                                                                                                                                                        m                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
           336 Banks, Shannon                 12244699461 BanksS@gmail.com                                   17-FEB-69  very hungry_ dry skin_blurry vision                                                                                                                                                                     m                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
           319 Derek, Antoine Mccoy           13791893452 DerekA@gmail.com                                   04-APR-69 constipation_ hoarseness_ dry skin                                                                                                                                                                       m                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
           359 Derek, Antoine Mccoy           13791893452 DerekA@gmail.com                                   04-APR-69 swollen gums_ bad breath_ sensitive teeth                                                                                                                                                                m                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       

APPOINTMENT_ID PATIENTNAME                    CONTACT     EMAIL                                              BIRTH_DAT SYMPTOMS                                                                                                                                                                                                 G                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
-------------- ------------------------------ ----------- -------------------------------------------------- --------- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
           355 Moises, Edgar Estes            14388924048 MoisesE@gmail.com                                  16-AUG-69 Headache_ irritability_ distorted vision                                                                                                                                                                 m                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
           315 Moises, Edgar Estes            14388924048 MoisesE@gmail.com                                  16-AUG-69 dry mouth_ feeling thirsty_ feeling tired                                                                                                                                                                m                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
           358 Mosley, Edmund                 19172732142 MosleyE@gmail.com                                  11-MAR-71 Asthma_ Pneumonia_ Anxiety                                                                                                                                                                               m                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
           318 Mosley, Edmund                 19172732142 MosleyE@gmail.com                                  11-MAR-71 Numbness_ pressure in ear_ hearing loss                                                                                                                                                                  m                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
           342 Head, Kurtis                   11890343908 HeadK@gmail.com                                    21-SEP-79 redness_ swelling_ stiffness                                                                                                                                                                             m                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
           330 Deirdre, Florence Barrera      15998950657 DeirdreF@gmail.com                                 06-JUL-81 running nose_ sneezing_congestion                                                                                                                                                                        m                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
           326 Chuck, Lloyd Haney             13585938942 ChuckL@gmail.com                                   19-NOV-83 constipation_ hoarseness_ dry skin                                                                                                                                                                       m                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
           351 Kaufman, Elba                  19281625041 KaufmanE@gmail.com                                 01-JUL-84 fever_ dizziness_ loss of apetite                                                                                                                                                                        m                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
           337 Barnes, Cleo                   13846259708 BarnesC@gmail.com                                  07-NOV-86 constipation_ hoarseness_ dry skin                                                                                                                                                                       m                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
           354 Olsen, Robin                   17340966731 OlsenR@gmail.com                                   23-FEB-87 redness_ swelling_ stiffness                                                                                                                                                                             m                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
           314 Olsen, Robin                   17340966731 OlsenR@gmail.com                                   23-FEB-87 fever_ dizziness_ loss of apetite                                                                                                                                                                        m                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       

APPOINTMENT_ID PATIENTNAME                    CONTACT     EMAIL                                              BIRTH_DAT SYMPTOMS                                                                                                                                                                                                 G                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
-------------- ------------------------------ ----------- -------------------------------------------------- --------- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
           357 Claude, Elvin Haney            17160886256 ClaudeE@gmail.com                                  09-MAY-87 running nose_ sneezing_congestion                                                                                                                                                                        m                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
           317 Claude, Elvin Haney            17160886256 ClaudeE@gmail.com                                  09-MAY-87 swollen gums_ bad breath_ sensitive teeth                                                                                                                                                                m                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
           344 Earline, Jaime Fitzgerald      12551786472 EarlineJ@gmail.com                                 29-MAY-91 unable to bear weight_ bruising_ sudden pain                                                                                                                                                             m                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
           345 Evelyn, Summer Frost           12393238459 EvelynS@gmail.com                                  16-OCT-91 dry mouth_ feeling thirsty_ feeling tired                                                                                                                                                                m                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
           353 Avila, Damien                  18809988032 AvilaD@gmail.com                                   21-JUL-98  very hungry_ dry skin_blurry vision                                                                                                                                                                     m                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
           313 Avila, Damien                  18809988032 AvilaD@gmail.com                                   21-JUL-98 Asthma_ Pneumonia_ Anxiety                                                                                                                                                                               m                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
           341 Grant, Adam                    12360723416 GrantA@gmail.com                                   02-DEC-98 running nose_ sneezing_congestion                                                                                                                                                                        m                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
           329 Weiss, Gilbert                 13970927726 WeissG@gmail.com                                   11-MAY-99 Asthma_ Pneumonia_ Anxiety                                                                                                                                                                               m                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       

52 rows selected.


SQL> spool
currently spooling to myDBqueries.sql
SQL> Spool off;
SQL> --over() windowing ,,, this will calculate the total price of medicines that specific user ends up taking from the hospital for quantity one
SQL> Select mn.M_NAME,sum(price_usd) over(
  2           order by price_usd
  3           rows between unbounded preceding and current row
  4         )sum_1
  5   from F21_S003_9_MED_NAME mn where mn.M_NAME in
  6  (Select m.M_NAME from F21_S003_9_MEDICINE m where m.medicine_ID in
  7  (Select emr.medicine_id from F21_S003_9_EMR emr where emr.patient_ID=221));

M_NAME                                                                      SUM_1                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
---------------------------------------------------------------------- ----------                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
Advil                                                                          18                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
Levoxyl                                                                        38                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
Tylenol                                                                        73                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       

SQL> as we can see it was adding the value , this is for total medicines he took from hospital for each one of it;
SP2-0734: unknown command beginning "as we can ..." - rest of line ignored.
SQL> spool off;
SQL> --subquery in select  gives no of appointments patient took
SQL> --we joined tables to get names of disease and medicine
SQL> Select patientname,emr.disease_name,emr.m_name,(select count(appointment_id) from F21_S003_9_appointment A where P.patient_id = A.patient_id) AS APPOINTMENTS
  2  FROM F21_S003_9_PATIENT p RIGHT JOIN F21_S003_9_EMR emr on p.patient_ID=emr.patient_ID;

PATIENTNAME                    DISEASE_NAME                                       M_NAME                                             APPOINTMENTS                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
------------------------------ -------------------------------------------------- -------------------------------------------------- ------------                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
Burks, Rosella                 Fever                                              Advil                                                         3                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
Burks, Rosella                 Cholesteatoma                                      Levoxyl                                                       3                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
Burks, Rosella                 Cold and Flu                                       Tylenol                                                       3                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
Avila, Damien                  Coronary artery disease                            Hydralyte                                                     2                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
Avila, Damien                  Diabetes                                           Pramlintide                                                   2                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
Olsen, Robin                   Fever                                              Advil                                                         2                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
Olsen, Robin                   Arthritis                                          Arnicare Tab                                                  2                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
Moises, Edgar Estes            Dehydration                                        Hylands Earache drops                                         2                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
Moises, Edgar Estes            Migraine                                           Excedrin                                                      2                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
Brian, Heath Pruitt            Migraine                                           Excedrin                                                      2                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
Brian, Heath Pruitt            Fracture                                           Ibuprofen                                                     2                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       

PATIENTNAME                    DISEASE_NAME                                       M_NAME                                             APPOINTMENTS                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
------------------------------ -------------------------------------------------- -------------------------------------------------- ------------                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
Claude, Elvin Haney            Periodontitis                                      Burst Oral Probiotics                                         2                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
Claude, Elvin Haney            Cold and Flu                                       Tylenol                                                       2                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
Mosley, Edmund                 Cholesteatoma                                      Levoxyl                                                       2                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
Mosley, Edmund                 Coronary artery disease                            Hydralyte                                                     2                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
Derek, Antoine Mccoy           Hypothyroidism                                     Hypothyroidism                                                2                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
Derek, Antoine Mccoy           Periodontitis                                      Burst Oral Probiotics                                         2                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
Hawkins, Callie                Fever                                              Advil                                                         2                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
Hawkins, Callie                Fever                                              Advil                                                         2                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
Pate, Andrea                   Ear infection                                      Polysporin                                                    2                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
Pate, Andrea                   Cavities                                           Perio Gel                                                     2                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
Austin, Liz                    Rashes                                             Florasone Cream                                               2                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       

PATIENTNAME                    DISEASE_NAME                                       M_NAME                                             APPOINTMENTS                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
------------------------------ -------------------------------------------------- -------------------------------------------------- ------------                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
Austin, Liz                    Fever                                              Advil                                                         2                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
Kendrick, Reba Alford          Cholesteatoma                                      Levoxyl                                                       1                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
Sims, Angelina                 Migraine                                           Excedrin                                                      1                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
Mullins, Kimberly              Cavities                                           Perio Gel                                                     1                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
Chuck, Lloyd Haney             Hypothyroidism                                     Hypothyroidism                                                1                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
Payne, Ladonna                 Arthritis                                          Arnicare Tab                                                  1                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
Baxter, Johnathan Browning     Fever                                              Advil                                                         1                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
Weiss, Gilbert                 Coronary artery disease                            Hydralyte                                                     1                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
Deirdre, Florence Barrera      Cold and Flu                                       Tylenol                                                       1                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
Fernando, Toby Calderon        Chest Pain                                         Mucinex                                                       1                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
Garrison, Patrica              Dehydration                                        Hylands Earache drops                                         1                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       

PATIENTNAME                    DISEASE_NAME                                       M_NAME                                             APPOINTMENTS                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
------------------------------ -------------------------------------------------- -------------------------------------------------- ------------                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
Effie, Leila Vinson            Cholesteatoma                                      Levoxyl                                                       1                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
Buckley, Rose                  Rashes                                             Florasone Cream                                               1                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
Stanton, Kathie                Hypothyroidism                                     Hypothyroidism                                                1                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
Banks, Shannon                 Diabetes                                           Pramlintide                                                   1                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
Barnes, Cleo                   Hypothyroidism                                     Hypothyroidism                                                1                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
Brady, Nellie                  Cavities                                           Perio Gel                                                     1                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
Katheryn, Ruben Holt           Fever                                              Advil                                                         1                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
Michael, Dianne                Periodontitis                                      Burst Oral Probiotics                                         1                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
Grant, Adam                    Cold and Flu                                       Tylenol                                                       1                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
Head, Kurtis                   Arthritis                                          Arnicare Tab                                                  1                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
Berger, Jami                   Migraine                                           Excedrin                                                      1                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       

PATIENTNAME                    DISEASE_NAME                                       M_NAME                                             APPOINTMENTS                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
------------------------------ -------------------------------------------------- -------------------------------------------------- ------------                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
Earline, Jaime Fitzgerald      Fracture                                           Ibuprofen                                                     1                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
Evelyn, Summer Frost           Dehydration                                        Hylands Earache drops                                         1                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
Quentin, Sam Hyde              Ear infection                                      Polysporin                                                    1                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
Dunlap, Ann                    Fever                                              Advil                                                         1                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
Shields, Rich Pena             Rashes                                             Florasone Cream                                               1                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
Page, Winnie                   Fracture                                           Ibuprofen                                                     1                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
Sparks, Ezra                   Cold and Flu                                       Tylenol                                                       1                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
Kaufman, Elba                  Fever                                              Advil                                                         1                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       

52 rows selected.

SQL> spool off;
SQL> --subquery in select gives no of appointments information
SQL> --having and group by will give who took appointments more than 1
SQL> --we are retriving patinent name and contact info
SQL> select PATIENTNAME,CONTACT from F21_S003_9_PATIENT WHERE PATIENT_ID IN (select PATIENT_ID from F21_S003_9_APPOINTMENT GROUP BY PATIENT_ID HAVING COUNT(APPOINTMENT_ID)>1);

PATIENTNAME                    CONTACT                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
------------------------------ -----------                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
Claude, Elvin Haney            17160886256                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
Burks, Rosella                 17187281901                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
Austin, Liz                    18468062474                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
Avila, Damien                  18809988032                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
Brian, Heath Pruitt            14356189857                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
Derek, Antoine Mccoy           13791893452                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
Mosley, Edmund                 19172732142                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
Pate, Andrea                   19629928796                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
Olsen, Robin                   17340966731                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
Moises, Edgar Estes            14388924048                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
Hawkins, Callie                11355099403                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              

11 rows selected.

SQL> spool off;
SQL> --scenario - suppose one of our patient got tested positive who visited hospital general's ward on 12 nov, we need to call all patients who visited on that day and let them know 
--to get tested and follow self quarantine rules.
--for that we can retrieve information of appointment date and spec_type to be general 
--we can use t0_char function to pull out information from timestamp
select P.PATIENTNAME,P.CONTACT from F21_S003_9_PATIENT P where patient_id in 
(select A.patient_id from F21_S003_9_APPOINTMENT A where TO_CHAR(a.bk_date, 'dd') = 12 and doctor_id in 
(Select DS.doctor_id from F21_S003_9_DOC_SPEC DS WHERE SPEC_TYPE = 'General'));SQL> SQL> SQL>   2    3  

PATIENTNAME		       CONTACT
------------------------------ -----------
Burks, Rosella		       17187281901
Avila, Damien		       18809988032
Claude, Elvin Haney	       17160886256
Hawkins, Callie 	       11355099403
Austin, Liz		       18468062474
Kaufman, Elba		       19281625041

6 rows selected.

SQL> spool off;

