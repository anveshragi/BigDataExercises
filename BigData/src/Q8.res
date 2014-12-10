Total jobs = 7
Launching Job 1 out of 7
Number of reduce tasks is set to 0 since there's no reduce operator
Starting Job = job_1415367758724_0968, Tracking URL = http://cshadoop1.utdallas.edu:8088/proxy/application_1415367758724_0968/
Kill Command = /usr/local/hadoop-2.4.1/bin/hadoop job  -kill job_1415367758724_0968
Hadoop job information for Stage-3: number of mappers: 3; number of reducers: 0
2014-11-08 22:04:32,976 Stage-3 map = 0%,  reduce = 0%
2014-11-08 22:04:39,210 Stage-3 map = 33%,  reduce = 0%, Cumulative CPU 1.82 sec
2014-11-08 22:04:40,254 Stage-3 map = 100%,  reduce = 0%, Cumulative CPU 5.91 sec
MapReduce Total cumulative CPU time: 5 seconds 910 msec
Ended Job = job_1415367758724_0968
Stage-6 is filtered out by condition resolver.
Stage-5 is selected by condition resolver.
Stage-7 is filtered out by condition resolver.
Stage-12 is filtered out by condition resolver.
Stage-11 is selected by condition resolver.
Stage-13 is filtered out by condition resolver.
Stage-18 is filtered out by condition resolver.
Stage-17 is selected by condition resolver.
Stage-19 is filtered out by condition resolver.
Launching Job 5 out of 7
Number of reduce tasks is set to 0 since there's no reduce operator
Starting Job = job_1415367758724_0969, Tracking URL = http://cshadoop1.utdallas.edu:8088/proxy/application_1415367758724_0969/
Kill Command = /usr/local/hadoop-2.4.1/bin/hadoop job  -kill job_1415367758724_0969
Hadoop job information for Stage-5: number of mappers: 1; number of reducers: 0
2014-11-08 22:04:46,358 Stage-5 map = 0%,  reduce = 0%
2014-11-08 22:04:51,519 Stage-5 map = 100%,  reduce = 0%, Cumulative CPU 1.24 sec
MapReduce Total cumulative CPU time: 1 seconds 240 msec
Ended Job = job_1415367758724_0969
Launching Job 6 out of 7
Number of reduce tasks is set to 0 since there's no reduce operator
Starting Job = job_1415367758724_0970, Tracking URL = http://cshadoop1.utdallas.edu:8088/proxy/application_1415367758724_0970/
Kill Command = /usr/local/hadoop-2.4.1/bin/hadoop job  -kill job_1415367758724_0970
Hadoop job information for Stage-11: number of mappers: 1; number of reducers: 0
2014-11-08 22:05:00,594 Stage-11 map = 0%,  reduce = 0%
2014-11-08 22:05:04,728 Stage-11 map = 100%,  reduce = 0%
Ended Job = job_1415367758724_0970
Launching Job 7 out of 7
Number of reduce tasks is set to 0 since there's no reduce operator
Starting Job = job_1415367758724_0972, Tracking URL = http://cshadoop1.utdallas.edu:8088/proxy/application_1415367758724_0972/
Kill Command = /usr/local/hadoop-2.4.1/bin/hadoop job  -kill job_1415367758724_0972
Hadoop job information for Stage-17: number of mappers: 1; number of reducers: 0
2014-11-08 22:05:11,763 Stage-17 map = 0%,  reduce = 0%
2014-11-08 22:05:16,925 Stage-17 map = 100%,  reduce = 0%, Cumulative CPU 1.06 sec
MapReduce Total cumulative CPU time: 1 seconds 60 msec
Ended Job = job_1415367758724_0972
Loading data to table default.movies_2009
rmr: DEPRECATED: Please use 'rm -r' instead.
Deleted hdfs://cshadoop1/user/hive/warehouse/movies_2009
Loading data to table default.movies_2010
rmr: DEPRECATED: Please use 'rm -r' instead.
Deleted hdfs://cshadoop1/user/hive/warehouse/movies_2010
Loading data to table default.movies_2011
rmr: DEPRECATED: Please use 'rm -r' instead.
Deleted hdfs://cshadoop1/user/hive/warehouse/movies_2011
Table default.movies_2009 stats: [numFiles=1, numRows=0, totalSize=53595, rawDataSize=0]
Table default.movies_2010 stats: [numFiles=1, numRows=0, totalSize=54483, rawDataSize=0]
Table default.movies_2011 stats: [numFiles=1, numRows=0, totalSize=55436, rawDataSize=0]
MapReduce Jobs Launched:
Job 0: Map: 3   Cumulative CPU: 5.91 sec   HDFS Read: 168076 HDFS Write: 164024 SUCCESS
Job 1: Map: 1   Cumulative CPU: 1.24 sec   HDFS Read: 54098 HDFS Write: 53595 SUCCESS
Job 2: Map: 1   Cumulative CPU: 1.09 sec   HDFS Read: 54986 HDFS Write: 54483 SUCCESS
Job 3: Map: 1   Cumulative CPU: 1.06 sec   HDFS Read: 55939 HDFS Write: 55436 SUCCESS
Total MapReduce CPU Time Spent: 9 seconds 300 msec
OK
Time taken: 54.175 seconds