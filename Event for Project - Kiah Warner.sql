DELIMITER //
CREATE EVENT report_event
ON SCHEDULE EVERY 1 MINUTE
DO BEGIN
	INSERT INTO report_daily(StuID,firstName, lastName,score,Last_Update)
	SELECT sT.studentID,sT.firstname,sT.lastname,bMT.totalscore,CURRENT_TIMESTAMP() 
	FROM studentTable sT
	INNER JOIN
	behaviourModuleTable bMT ON sT.studentID = bMT.studentID;
END//
DELIMITER ;

-- Check table to see if report has occured -- 
SELECT * FROM report_daily;

DROP EVENT report_event;





