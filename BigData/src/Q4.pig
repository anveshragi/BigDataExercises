REGISTER /home/004/a/ax/axr120931/HW3/pig_udf_axr120931.jar;
A = LOAD '/Fall2014_HW-3-Pig/movies_new.dat' using PigStorage('#') AS (movieID:int,movieName:chararray,genreList:charArray);
B = FOREACH A GENERATE movieName,FORMAT_GENRE(genreList);
DUMP B;
store B into '/axr120931/pig/Q4' using PigStorage(); /* to part-r-00000  file */