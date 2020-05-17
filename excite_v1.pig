-- Let’s count the number of times each user appears in the excite data set.

log = LOAD '$INPUT' AS (user, timestamp, query);
grpd = GROUP log BY user;
cntd = FOREACH grpd GENERATE group, COUNT(log) AS cnt;
STORE cntd INTO '$OUTPUT';