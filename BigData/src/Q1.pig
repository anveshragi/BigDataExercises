A = LOAD '/Fall2014_HW-3-Pig/movies_new.dat' using PigStorage('#') AS (movieID:int,movieName:chararray,genreList:charArray);
B = FILTER A BY (genreList matches '.*Action.*War.*');
C = LOAD '/Fall2014_HW-3-Pig/ratings_new.dat' using PigStorage('#') AS (userID:int,movieID:int,rating:double,timestamp:charArray);
D = JOIN C BY movieID, B BY movieID;
E = FOREACH D GENERATE C::userID as userID,C::movieID as movieID,C::rating as rating,B::movieName as movieName,B::genreList as genreList;
F = GROUP E BY movieID;
G = FOREACH F GENERATE group,AVG(E.rating) as average_rating;
H = GROUP G ALL;
I = FOREACH H GENERATE MAX(G.average_rating) as max_rating;
J = FILTER G BY (average_rating == I.max_rating);
K = FOREACH J GENERATE group as movieID;
L = FILTER E BY (movieID == K.movieID); 
M = FOREACH L GENERATE userID as userID;
N = LOAD '/Fall2014_HW-3-Pig/users_new.dat' using PigStorage('#') AS (userID:int,gender:charArray,age:int,occupation:charArray,zipcode:charArray); 
O = FILTER N BY (gender == 'F') AND (age>20) AND (age<35) AND (zipcode matches '1.*');
P = JOIN O BY userID,M BY userID;
Q = FOREACH P GENERATE O::userID;
DUMP Q;
store Q into '/axr120931/pig/Q1'; /* to part-r-00000  file */