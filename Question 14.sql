

Using the StayWell database (from the Cengage book - login student2/student2 if using Oracle), use a SUBQUERY to accomplish the following task:

Determine which property addresses are owned by the same owner as property ID 8.


SELECT address
FROM property
WHERE owner_num = (SELECT owner_num
                   FROM property
                   WHERE property_id = 8);


OWNER PROPERTY_ID ADDRESS                                                                                             
----- ----------- ----------------------------------------------------------------------------------------------------
BU106           1 30 West Thomas Rd.                                                                                  
AK102           2 782 Queen Ln.                                                                                       
BI109           3 9800 Sunbeam Ave.                                                                                   
KO104           4 105 North Illinois Rd.                                                                              
SI105           5 887 Vine Rd.                                                                                        
MO100           6 8 Laurel Dr.                                                                                        
CO103           7 447 Goldfield St.                                                                                   
KO104           8 594 Leatherwood Dr.                                                                                 
PA101           9 504 Windsor Ave.                                                                                    
LO108          10 891 Alton Dr.                                                                                       
JO110          11 9531 Sherwood Rd.                                                                                   

OWNER PROPERTY_ID ADDRESS                                                                                             
----- ----------- ----------------------------------------------------------------------------------------------------
RE107          12 2 Bow Ridge Ave.                                                                                    
