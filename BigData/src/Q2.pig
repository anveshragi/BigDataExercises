A = LOAD '/Fall2014_HW-3-Pig/ratings_new.dat' using PigStorage('#') AS (userID:int,movieID:int,rating:double,timestamp:charArray);
B = LOAD '/Fall2014_HW-3-Pig/users_new.dat' using PigStorage('#') AS (userID:int,gender:charArray,age:int,occupation:charArray,zipcode:int);
C = COGROUP A BY userID,B by userID;
D = LIMIT C 11;
dump D;
store D into '/axr120931/pig/Q2' using PigStorage(); /* to part-r-00000  file */