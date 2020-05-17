-- Let’s count the number of times each user appears in the excite data set.

log = LOAD '$INPUT' AS (user, timestamp, query);
grpd = GROUP log BY user;
cntd = FOREACH grpd GENERATE group, COUNT(log) AS cnt;
-- fltrd = FILTER cntd BY cnt > 50;
ord = ORDER cntd BY cnt DESC; 
top15 = LIMIT ord 15;
STORE top15 INTO '$OUTPUT';

