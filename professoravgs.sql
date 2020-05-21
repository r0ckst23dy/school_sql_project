use sql_project;

/* Grade Average Gieven By Professor1*/
SELECT avg(grade)
FROM grades
WHERE grade_course_id BETWEEN 1 AND 4;

/* Grade Average Gieven By Professor2*/
SELECT avg(grade)
FROM grades
WHERE grade_course_id BETWEEN 5 AND 8;

/* Grade Average Gieven By Professor3*/
SELECT avg(grade)
FROM grades
WHERE grade_course_id BETWEEN 9 AND 12;

/* Grade Average Gieven By Professor4*/
SELECT avg(grade)
FROM grades
WHERE grade_course_id BETWEEN 13 AND 16;

/* Grade Average Gieven By Professor5*/
SELECT avg(grade)
FROM grades
WHERE grade_course_id BETWEEN 17 AND 20;

/*Top Grades for Each Student*/
SELECT grade_student_id, MAX(grade)
FROM grades
GROUP BY grade_student_id;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
/*Students grouped by course*/
SELECT grade_course_id, grade_student_id, COUNT(grade_student_id)
FROM grades
GROUP BY grade_course_id;

/*Summary Report of Average Grade in Each Course*/
SELECT 
	course_name, 
    avg(grade),
    CASE
		WHEN grade < 30 THEN 'Most Challenging'
		WHEN grade > 60 THEN 'Easiest Course'
        ELSE 'Average Course'
	END AS 'status'
from grades 
left join courses
on grade_course_id = course_id
group by grade_course_id

/*WHICH STUDENT and PROFESSOR HAVE THE MOST COURSES IN COMMON*/
SELECT student_id, professor_idc
