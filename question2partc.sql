# save as question2partc.sql
USE compbiol;
SELECT DISTINCT m.LastName, m.FirstName, m.MemberID
FROM Member m, Entry e
WHERE m.MemberID = e.MemberID
AND NOT EXISTS (SELECT DISTINCT * FROM Entry y WHERE m.MemberID = y.MemberID AND y.Year=2013);
